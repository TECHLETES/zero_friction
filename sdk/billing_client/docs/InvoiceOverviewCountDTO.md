# InvoiceOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**require_attention** | **int** |  | [optional] 
**all** | **int** |  | [optional] 
**to_approve** | **int** |  | [optional] 
**to_send** | **int** |  | [optional] 
**unpaid** | **int** |  | [optional] 
**overdue** | **int** |  | [optional] 
**ready_for_payment_collection** | **int** |  | [optional] 
**to_export** | **int** |  | [optional] 

## Example

```python
from billing_client.models.invoice_overview_count_dto import InvoiceOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceOverviewCountDTO from a JSON string
invoice_overview_count_dto_instance = InvoiceOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceOverviewCountDTO.to_json())

# convert the object into a dict
invoice_overview_count_dto_dict = invoice_overview_count_dto_instance.to_dict()
# create an instance of InvoiceOverviewCountDTO from a dict
invoice_overview_count_dto_from_dict = InvoiceOverviewCountDTO.from_dict(invoice_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


