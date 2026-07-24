"""Exceptions raised by generated Zero Friction SDK clients."""

from attachments_client.exceptions import ApiException as AttachmentsApiException
from billing_client.exceptions import ApiException as BillingApiException
from communication_client.exceptions import ApiException as CommunicationApiException
from configuration_client.exceptions import ApiException as ConfigurationApiException
from forecasting_client.exceptions import ApiException as ForecastingApiException
from masterdata_client.exceptions import ApiException as MasterdataApiException
from metering_client.exceptions import ApiException as MeteringApiException
from regionalregulations_client.exceptions import (
    ApiException as RegionalRegulationsApiException,
)


def get_all_sdk_exceptions() -> tuple[type[Exception], ...]:
    """Return all generated SDK exception classes handled by the client."""
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
