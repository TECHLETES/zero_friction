# AccountingExportRunErrorDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_code** | **int** |  | [optional]
**extra_info** | **List[str]** |  | [optional]

## Example

```python
from billing_client.models.accounting_export_run_error_dto import AccountingExportRunErrorDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AccountingExportRunErrorDTO from a JSON string
accounting_export_run_error_dto_instance = AccountingExportRunErrorDTO.from_json(json)
# print the JSON string representation of the object
print(AccountingExportRunErrorDTO.to_json())

# convert the object into a dict
accounting_export_run_error_dto_dict = accounting_export_run_error_dto_instance.to_dict()
# create an instance of AccountingExportRunErrorDTO from a dict
accounting_export_run_error_dto_from_dict = AccountingExportRunErrorDTO.from_dict(accounting_export_run_error_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
