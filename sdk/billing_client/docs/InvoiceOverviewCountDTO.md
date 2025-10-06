# InvoiceOverviewCountDTO

Represents counts of invoices in different states for overview purposes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**require_attention** | **int** | Number of invoices requiring attention | [optional] 
**all** | **int** | Total number of all invoices | [optional] 
**to_approve** | **int** | Number of invoices pending approval | [optional] 
**to_send** | **int** | Number of invoices pending sending | [optional] 
**unpaid** | **int** | Number of unpaid invoices | [optional] 
**overdue** | **int** | Number of overdue invoices | [optional] 
**ready_for_payment_collection** | **int** | Number of invoices ready for payment collection | [optional] 
**to_export** | **int** | Number of invoices pending export | [optional] 

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


