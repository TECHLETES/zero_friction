# AccountExportDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exported_on** | **datetime** |  | [optional]
**export_failure_details** | **str** |  | [optional]
**export_failure_reason** | [**AccountingExportFailureReason**](AccountingExportFailureReason.md) |  | [optional]
**timeout_retry_count** | **int** |  | [optional]

## Example

```python
from billing_client.models.account_export_details_dto import AccountExportDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AccountExportDetailsDTO from a JSON string
account_export_details_dto_instance = AccountExportDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(AccountExportDetailsDTO.to_json())

# convert the object into a dict
account_export_details_dto_dict = account_export_details_dto_instance.to_dict()
# create an instance of AccountExportDetailsDTO from a dict
account_export_details_dto_from_dict = AccountExportDetailsDTO.from_dict(account_export_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
