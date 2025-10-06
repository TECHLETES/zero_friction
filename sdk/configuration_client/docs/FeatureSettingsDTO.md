# FeatureSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_invoice_estimation_enabled** | **bool** | Enables the feature to estimate invoices | [optional] 
**metering_validation_enabled** | **bool** |  | [optional] 
**prepayment_enabled** | **bool** | Enables the feature to create prepayment contracts and meters. | [optional] 
**prepayment_manual_transactions_enabled** | **bool** | Enables the feature to manually create prepayment transactions and adjust balances. Should ONLY be enabled on test environments for testing purposes. Needs ZFH.DataTransfer.Configuration.DTO.v1.Responses.Organizations.FeatureSettingsDTO.PrepaymentEnabled to be set to &#x60;true&#x60; as well. | [optional] 
**annual_statements** | **bool** | Enables the feature to create and send out annual statements. | [optional] 

## Example

```python
from configuration_client.models.feature_settings_dto import FeatureSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FeatureSettingsDTO from a JSON string
feature_settings_dto_instance = FeatureSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(FeatureSettingsDTO.to_json())

# convert the object into a dict
feature_settings_dto_dict = feature_settings_dto_instance.to_dict()
# create an instance of FeatureSettingsDTO from a dict
feature_settings_dto_from_dict = FeatureSettingsDTO.from_dict(feature_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


