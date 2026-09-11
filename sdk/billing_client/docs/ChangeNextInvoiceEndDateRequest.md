# ChangeNextInvoiceEndDateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from_first_open_period** | **bool** |  | [optional]
**end_date_time** | **datetime** |  |

## Example

```python
from billing_client.models.change_next_invoice_end_date_request import ChangeNextInvoiceEndDateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeNextInvoiceEndDateRequest from a JSON string
change_next_invoice_end_date_request_instance = ChangeNextInvoiceEndDateRequest.from_json(json)
# print the JSON string representation of the object
print(ChangeNextInvoiceEndDateRequest.to_json())

# convert the object into a dict
change_next_invoice_end_date_request_dict = change_next_invoice_end_date_request_instance.to_dict()
# create an instance of ChangeNextInvoiceEndDateRequest from a dict
change_next_invoice_end_date_request_from_dict = ChangeNextInvoiceEndDateRequest.from_dict(change_next_invoice_end_date_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
