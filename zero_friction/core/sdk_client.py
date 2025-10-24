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

from .sdk_utils import create_config, wrap_api_call, create_api_classes_for_client
from .config import ZeroFrictionConfig

from zero_friction.patches.patched_customers_api import PatchedCustomersApi
from zero_friction.patches.core import apply_patches

class SDKClient:
    def __init__(
            self, 
            config: ZeroFrictionConfig
            ):
        if not isinstance(config, ZeroFrictionConfig):
            raise TypeError("config must be an instance of ZeroFrictionConfig.")
        
        apply_patches()

        self.config = config
        self.oauth_token = self.config.oauth_token

        attachements_kwargs = create_config(
            host="https://api.zerofriction.co/api/att",
            oath_token=self.oauth_token
        )
        self.attachments_client = AttachmentsClient(
            configuration=AttachmentsConfiguration(**attachements_kwargs)
        )

        billing_kwargs = create_config(
            host="https://api.zerofriction.co/api/bill",
            oath_token=self.oauth_token
        )
        self.billing_client = BillingClient(
            configuration=BillingConfiguration(**billing_kwargs)
        )

        communication_kwargs = create_config(
            host="https://api.zerofriction.co/api/comm",
            oath_token=self.oauth_token
        )
        self.communication_client = CommunicationClient(
            configuration=CommunicationConfiguration(**communication_kwargs)
        )

        configuration_kwargs = create_config(
            host="https://api.zerofriction.co/api/cfg",
            oath_token=self.oauth_token
        )
        self.configuration_client = ConfigurationClient(
            configuration=ConfigurationConfiguration(**configuration_kwargs)
        )

        forecasting_kwargs = create_config(
            host="https://api.zerofriction.co/api/fct",
            oath_token=self.oauth_token
        )
        self.forecasting_client = ForecastingClient(
            configuration=ForecastingConfiguration(**forecasting_kwargs)
        )

        masterdata_kwargs = create_config(
            host="https://api.zerofriction.co/api/md",
            oath_token=self.oauth_token
        )
        self.masterdata_client = MasterdataClient(
            configuration=MasterdataConfiguration(**masterdata_kwargs)
        )

        metering_kwargs = create_config(
            host="https://api.zerofriction.co/api/me",
            oath_token=self.oauth_token
        )
        self.metering_client = MeteringClient(
            configuration=MeteringConfiguration(**metering_kwargs)
        )

        regionalregulations_kwargs = create_config(
            host="https://api.zerofriction.co/api/reg",
            oath_token=self.oauth_token
        )
        self.regionalregulations_client = RegionalRegulationsClient(
            configuration=RegionalRegulationsConfiguration(**regionalregulations_kwargs)
        )

        # Dynamically attach all API classes to their respective clients
        sdk_modules = {
            "attachments_client": "attachments_client",
            "billing_client": "billing_client",
            "communication_client": "communication_client",
            "configuration_client": "configuration_client",
            "forecasting_client": "forecasting_client",
            "masterdata_client": "masterdata_client",
            "metering_client": "metering_client",
            "regionalregulations_client": "regionalregulations_client"
        }

        self._all_clients = [getattr(self, attr) for attr in sdk_modules]

        # Attach all API classes for each client
        for attr, module in sdk_modules.items():
            client_instance = getattr(self, attr)
            create_api_classes_for_client(module, client_instance)

        # Patch specific methods
        self.masterdata_client.customers_api = PatchedCustomersApi(self.masterdata_client.customers_api)

        # Now wrap call_api of every client for retry/rate-limit handling
        for client in self._all_clients:
            wrap_api_call(client, self.config)
