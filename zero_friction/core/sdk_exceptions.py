from billing_client.exceptions import ApiException as BillingApiException
from masterdata_client.exceptions import ApiException as MasterdataApiException
from attachments_client.exceptions import ApiException as AttachmentsApiException
from communication_client.exceptions import ApiException as CommunicationApiException
from configuration_client.exceptions import ApiException as ConfigurationApiException
from forecasting_client.exceptions import ApiException as ForecastingApiException
from metering_client.exceptions import ApiException as MeteringApiException
from regionalregulations_client.exceptions import ApiException as RegionalRegulationsApiException

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


