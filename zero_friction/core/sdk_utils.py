"""Utilities for configuring and wrapping generated SDK clients."""

import importlib
import os
import pkgutil
import threading
import time
from collections.abc import Callable
from typing import Any, cast

# Load SDK packages
from dotenv import load_dotenv
from ratelimit import limits, sleep_and_retry

from .sdk_exceptions import ALL_SDK_EXCEPTIONS

# Load environment variables from .env file
load_dotenv()

ZF_API_KEY = os.getenv("ZF_API_KEY")
ZF_USERNAME = os.getenv("ZF_USERNAME")
ZF_PASSWORD = os.getenv("ZF_PASSWORD")


def create_config(host: str, oath_token: str) -> dict:
    """
    Create a configuration dictionary for Zero Friction API requests.

    The OAuth access token authenticates API requests.
    dict
        A dictionary containing configuration parameters required for API requests, including:
            - host: The API base URL.
            - api_key: The API key for authentication.
            - username: The username for authentication.
            - password: The password for authentication.
    - access_token: The provided OAuth access token.
    """
    config_dict = {"host": host, "access_token": oath_token}
    return config_dict


def create_api_classes_for_client(
    sdk_module: str, api_client_instance: Any
) -> dict[str, Any]:
    """
    Dynamically loads and initializes all API classes for a given SDK.

    Parameters
    ----------
    sdk_module : str
        The SDK module name (e.g. "masterdata_client").
    api_client_instance : ApiClient
        An instance of the SDK's ApiClient.

    Returns
    -------
    dict
        A dictionary of {api_class_name: api_instance}, and also attaches each to the client.
    """
    api_classes = {}

    api_package = importlib.import_module(f"{sdk_module}.api")

    for _, module_name, _ in pkgutil.iter_modules(api_package.__path__):
        full_module_path = f"{sdk_module}.api.{module_name}"
        module = importlib.import_module(full_module_path)

        for attr_name in dir(module):
            if attr_name.endswith("Api"):
                cls = getattr(module, attr_name)
                if isinstance(cls, type):
                    instance = cls(api_client_instance)
                    api_classes[module_name] = instance

                    # Attach to client: client.contracts_api = ContractsApi(...)
                    setattr(api_client_instance, module_name, instance)

    return api_classes


def make_shared_rate_limiter(config: Any) -> Callable[..., Any]:
    """
    Build a single rate-limited dispatcher shared across all SDK clients.

    Calling this once and reusing the result ensures all clients share
    one call-count window instead of each having an independent limit.
    """

    @sleep_and_retry
    @limits(calls=config.rate_limit_per_minute, period=60)
    def _rate_limited_dispatch(
        orig_call_api: Callable[..., Any], *args: Any, **kwargs: Any
    ) -> Any:
        return orig_call_api(*args, **kwargs)

    return cast(Callable[..., Any], _rate_limited_dispatch)


def wrap_api_call(
    api_client: Any,
    config: Any,
    shared_rate_limiter: Callable[..., Any],
    all_clients: list[Any] | None = None,
) -> None:
    """
    Patch both call_api and response_deserialize on an SDK ApiClient.

    In the SDK version used here, call_api performs the HTTP request and
    returns a response object without raising.  response_deserialize is
    what checks the status code and raises ApiException.  All retry /
    token-refresh logic therefore lives in wrapped_response_deserialize;
    call_api is only wrapped to apply the shared client-side rate limiter
    and to record the last call arguments so that retries can re-issue
    the same request.
    """
    orig_call_api = api_client.call_api
    orig_response_deserialize = api_client.response_deserialize
    _local = threading.local()

    def wrapped_call_api(*args: Any, **kwargs: Any) -> Any:
        if config.debug_mode:
            print(f"[{time.strftime('%X')}] API request sent.")
        _local.last_call_args = args
        _local.last_call_kwargs = kwargs
        return shared_rate_limiter(orig_call_api, *args, **kwargs)

    def wrapped_response_deserialize(
        response_data: Any, *args: Any, **kwargs: Any
    ) -> Any:
        last_exc = None
        last_retry_after = None
        current_response = response_data
        tried_refresh = False

        for attempt in range(1, config.max_retries + 1):
            try:
                return orig_response_deserialize(current_response, *args, **kwargs)
            except ALL_SDK_EXCEPTIONS as e:
                code = getattr(e, "status", None) or getattr(e, "status_code", None)
                exc_headers = getattr(e, "headers", {}) or {}

                if code == 429:
                    retry_after = (
                        int(exc_headers.get("x-retry-after-seconds", "1"))
                        + config.wait_time
                    )
                    last_retry_after = retry_after
                    if config.debug_mode:
                        print(
                            f"[{time.strftime('%X')}] 429—sleeping {retry_after}s "
                            f"(attempt {attempt}/{config.max_retries})"
                        )
                    time.sleep(retry_after)
                    last_exc = e
                    current_response = shared_rate_limiter(
                        orig_call_api,
                        *getattr(_local, "last_call_args", ()),
                        **getattr(_local, "last_call_kwargs", {}),
                    )
                    # The SDK requires .read() to be called after call_api before
                    # response_deserialize can access the body (response.data).
                    if callable(getattr(current_response, "read", None)):
                        current_response.read()
                    continue

                if code == 401 and not tried_refresh:
                    if config.debug_mode:
                        print(
                            f"[{time.strftime('%X')}] 401—refreshing token and retrying"
                        )
                    config.refresh_token()
                    for _client in all_clients or [api_client]:
                        _client.configuration.access_token = config.oauth_token
                    tried_refresh = True
                    current_response = shared_rate_limiter(
                        orig_call_api,
                        *getattr(_local, "last_call_args", ()),
                        **getattr(_local, "last_call_kwargs", {}),
                    )
                    if callable(getattr(current_response, "read", None)):
                        current_response.read()
                    continue

                raise

        raise RuntimeError(
            f"Rate limit (429) persisted after {config.max_retries} retries. "
            f"Last wait: {last_retry_after}s "
            f"(server header + {config.wait_time}s buffer). "
            f"Server message: {getattr(last_exc, 'body', last_exc)}"
        ) from last_exc

    api_client.call_api = wrapped_call_api
    api_client.response_deserialize = wrapped_response_deserialize


# ------------------------ OLD CODE ------------------------
# This section is kept for reference, but should not be used in the current implementation.

'''

def create_sdk_clients(oath_token: str, config: ZeroFrictionConfig = None) -> dict:
    """
    Creates a dictionary of SDK clients for interacting with the Zero Friction API.

    Parameters
    ----------
    oauth_token : str
        The OAuth access token to authenticate API requests.

    Returns
    -------
    dict
        A dictionary containing the SDK clients for different API services.
    """
    if config is None:
        config = ZeroFrictionConfig()

    clients = {
        "attachments_client": AttachmentsClient(configuration=AttachmentsConfiguration(**create_config(host="https://api.zerofriction.co/api/att", oath_token=oath_token))),
        "billing_client": BillingClient(configuration=BillingConfiguration(**create_config(host="https://api.zerofriction.co/api/bill", oath_token=oath_token))),
        "communication_client": CommunicationClient(configuration=CommunicationConfiguration(**create_config(host="https://api.zerofriction.co/api/comm", oath_token=oath_token))),
        "configuration_client": ConfigurationClient(configuration=ConfigurationConfiguration(**create_config(host="https://api.zerofriction.co/api/cfg", oath_token=oath_token))),
        "forecasting_client": ForecastingClient(configuration=ForecastingConfiguration(**create_config(host="https://api.zerofriction.co/api/fct", oath_token=oath_token))),
        "masterdata_client": MasterdataClient(configuration=MasterdataConfiguration(**create_config(host="https://api.zerofriction.co/api/md", oath_token=oath_token))),
        "metering_client": MeteringClient(configuration=MeteringConfiguration(**create_config(host="https://api.zerofriction.co/api/me", oath_token=oath_token))),
        "regionalregulations_client": RegionalRegulationsClient(configuration=RegionalRegulationsConfiguration(**create_config(host="https://api.zerofriction.co/api/reg", oath_token=oath_token)))
    }
    # Patch rate limiter for each client
    for client in clients.values():
        patch_rate_limiter(client, rate_limit_per_minute=config.rate_limit_per_minute, verbose=config.verbose)
    return clients


def patch_rate_limiter(api_client, rate_limit_per_minute: int = 60, verbose: bool = True):
    """
    Patches the API client with a rate limiter.

    Parameters
    ----------
    api_client : ApiClient
        The API client instance to patch.
    rate_limit_per_minute : int, optional
        The maximum number of requests allowed per minute (default is 60).
    verbose : bool, optional
        Whether to print API request messages (default is True).
    """
    @sleep_and_retry
    @limits(calls=rate_limit_per_minute, period=60)
    def limited_call_api(self, *args, **kwargs):
        if verbose:
            print(f"[{time.strftime('%X')}] API request sent.")
        return self._original_call_api(*args, **kwargs)

    if not hasattr(api_client, "_original_call_api"):
        api_client._original_call_api = api_client.call_api
        api_client.call_api = types.MethodType(limited_call_api, api_client)
'''
