from dotenv import load_dotenv
import os
import importlib
import pkgutil
from ratelimit import limits, sleep_and_retry
import types
from .config import ZeroFrictionConfig
import time
import urllib3.exceptions

# Load SDK packages
from attachments_client import ApiClient as AttachmentsClient
from attachments_client import Configuration as AttachmentsConfiguration
from billing_client import ApiClient as BillingClient
from billing_client import Configuration as BillingConfiguration
from communication_client import ApiClient as CommunicationClient
from communication_client import Configuration as CommunicationConfiguration
from configuration_client import ApiClient as ConfigurationClient
from configuration_client import Configuration as ConfigurationConfiguration
from forecasting_client import ApiClient as ForecastingClient
from forecasting_client import Configuration as ForecastingConfiguration
from masterdata_client import ApiClient as MasterdataClient
from masterdata_client import Configuration as MasterdataConfiguration
from metering_client import ApiClient as MeteringClient
from metering_client import Configuration as MeteringConfiguration
from regionalregulations_client import ApiClient as RegionalRegulationsClient
from regionalregulations_client import Configuration as RegionalRegulationsConfiguration

from .sdk_exceptions import retry_on_429, refresh_on_401

# Load environment variables from .env file
load_dotenv()

ZF_API_KEY = os.getenv('ZF_API_KEY')
ZF_USERNAME = os.getenv('ZF_USERNAME')
ZF_PASSWORD = os.getenv('ZF_PASSWORD')


def create_config(host: str, oath_token: str) -> dict:
    """
    Creates a configuration dictionary for API requests to the Zero Friction API.
        The OAuth access token to authenticate API requests.
    dict
        A dictionary containing configuration parameters required for API requests, including:
            - host: The API base URL.
            - api_key: The API key for authentication.
            - username: The username for authentication.
            - password: The password for authentication.
            - access_token: The provided OAuth access token.
    """

    config_dict = {
    "host": host,
    "access_token": oath_token
    }
    return config_dict

def create_api_classes_for_client(sdk_module: str, api_client_instance) -> dict:
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

def wrap_api_call(api_client, config):
    orig_call_api = api_client.call_api

    # Compose decorators: rate limit, then refresh, then retry
    @sleep_and_retry
    @limits(calls=config.rate_limit_per_minute, period=60)
    def wrapped_call_api(*args, **kwargs):
        if config.debug_mode:
            print(f"[{time.strftime('%X')}] API request sent.")
        # Compose refresh/retry decorators in *call* context
        call = orig_call_api
        call = refresh_on_401(config, config.debug_mode)(call)
        call = retry_on_429(max_retries=config.max_retries, debug_mode=config.debug_mode)(call)
        return call(*args, **kwargs)
    
    api_client.call_api = wrapped_call_api










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