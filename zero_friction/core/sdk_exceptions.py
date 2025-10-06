from billing_client.exceptions import ApiException as BillingApiException
from masterdata_client.exceptions import ApiException as MasterdataApiException
from attachments_client.exceptions import ApiException as AttachmentsApiException
from communication_client.exceptions import ApiException as CommunicationApiException
from configuration_client.exceptions import ApiException as ConfigurationApiException
from forecasting_client.exceptions import ApiException as ForecastingApiException
from metering_client.exceptions import ApiException as MeteringApiException
from regionalregulations_client.exceptions import ApiException as RegionalRegulationsApiException
import functools
import time
from ratelimit import limits, sleep_and_retry

def get_all_sdk_exceptions():
    return (
        BillingApiException,
        MasterdataApiException,
        AttachmentsApiException,
        CommunicationApiException,
        ConfigurationApiException,
        ForecastingApiException,
        MeteringApiException,
        RegionalRegulationsApiException,
    )

ALL_SDK_EXCEPTIONS = get_all_sdk_exceptions()

def retry_on_429(max_retries: int = 6, debug_mode: bool = False):
    def decorator(func):
        @functools.wraps(func)
        def wrapper(*args, **kwargs):
            last_exc = None
            for attempt in range(1, max_retries + 1):
                try:
                    return func(*args, **kwargs)
                except ALL_SDK_EXCEPTIONS as e:
                    code = getattr(e, "status", None) or getattr(e, "status_code", None)
                    headers = getattr(e, "headers", {}) or {}
                    if code == 429:
                        if debug_mode:
                            print(f"[{func.__name__}] 429 received—retrying (attempt {attempt}/{max_retries})")
                        retry_after = int(headers.get("x-retry-after-seconds", "1")) + 3
                        if debug_mode:
                            print(f"[{func.__name__}] 429 received—sleeping {retry_after}s (attempt {attempt})")
                        time.sleep(retry_after)
                        last_exc = e
                        continue
                    raise
                except Exception:
                    raise
            raise last_exc
        return wrapper
    return decorator

def refresh_on_401(config, debug_mode=False):
    def decorator(func):
        @functools.wraps(func)
        def wrapper(*args, **kwargs):
            tried_refresh = False
            while True:
                try:
                    return func(*args, **kwargs)
                except ALL_SDK_EXCEPTIONS as e:
                    code = getattr(e, "status", None) or getattr(e, "status_code", None)
                    if code == 401 and not tried_refresh:
                        if debug_mode:
                            print("401 Unauthorized—refreshing token and retrying once")
                        config.refresh_token()
                        tried_refresh = True
                        continue
                    raise
        return wrapper
    return decorator


