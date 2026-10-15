# EstimatedInvoiceOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**current_period** | **int** |  | [optional] 
**shortfall** | **int** |  | [optional] 
**surplus** | **int** |  | [optional] 
**low_accuracy** | **int** |  | [optional] 
**overdue_advances** | **int** |  | [optional] 

## Example

```python
from billing_client.models.estimated_invoice_overview_count_dto import EstimatedInvoiceOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EstimatedInvoiceOverviewCountDTO from a JSON string
estimated_invoice_overview_count_dto_instance = EstimatedInvoiceOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(EstimatedInvoiceOverviewCountDTO.to_json())

# convert the object into a dict
estimated_invoice_overview_count_dto_dict = estimated_invoice_overview_count_dto_instance.to_dict()
# create an instance of EstimatedInvoiceOverviewCountDTO from a dict
estimated_invoice_overview_count_dto_from_dict = EstimatedInvoiceOverviewCountDTO.from_dict(estimated_invoice_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


