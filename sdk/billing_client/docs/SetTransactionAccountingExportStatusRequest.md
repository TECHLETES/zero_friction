# SetTransactionAccountingExportStatusRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_export_status** | [**AccountExportStatus**](AccountExportStatus.md) |  |
**account_export_details** | [**AccountExportDetailsDTO**](AccountExportDetailsDTO.md) |  |

## Example

```python
from billing_client.models.set_transaction_accounting_export_status_request import SetTransactionAccountingExportStatusRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SetTransactionAccountingExportStatusRequest from a JSON string
set_transaction_accounting_export_status_request_instance = SetTransactionAccountingExportStatusRequest.from_json(json)
# print the JSON string representation of the object
print(SetTransactionAccountingExportStatusRequest.to_json())

# convert the object into a dict
set_transaction_accounting_export_status_request_dict = set_transaction_accounting_export_status_request_instance.to_dict()
# create an instance of SetTransactionAccountingExportStatusRequest from a dict
set_transaction_accounting_export_status_request_from_dict = SetTransactionAccountingExportStatusRequest.from_dict(set_transaction_accounting_export_status_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
