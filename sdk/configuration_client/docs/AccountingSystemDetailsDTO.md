# AccountingSystemDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accounting_system_type** | [**AccountingSystemType**](AccountingSystemType.md) |  | [optional]
**external_integration_status** | [**ExternalIntegrationStatus**](ExternalIntegrationStatus.md) |  |
**activation_date** | **date** |  | [optional]
**unmapped_general_ledger_codes** | **int** |  | [optional]
**unmapped_products** | **int** |  | [optional]
**unmapped_billing_items** | **int** |  | [optional]
**unmapped_tax_codes** | **int** |  | [optional]
**can_activate** | **bool** |  | [optional]
**processing_enabled** | **bool** |  | [optional]
**last_synced_on** | **datetime** |  | [optional]
**sync_status** | [**AccountingSyncStatus**](AccountingSyncStatus.md) |  | [optional]
**accounting_instance_url** | **str** |  | [optional]
**was_active** | **bool** |  | [optional]
**afas_settings** | [**AfasSettingsDetailsDto**](AfasSettingsDetailsDto.md) |  | [optional]

## Example

```python
from configuration_client.models.accounting_system_details_dto import AccountingSystemDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AccountingSystemDetailsDTO from a JSON string
accounting_system_details_dto_instance = AccountingSystemDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(AccountingSystemDetailsDTO.to_json())

# convert the object into a dict
accounting_system_details_dto_dict = accounting_system_details_dto_instance.to_dict()
# create an instance of AccountingSystemDetailsDTO from a dict
accounting_system_details_dto_from_dict = AccountingSystemDetailsDTO.from_dict(accounting_system_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
