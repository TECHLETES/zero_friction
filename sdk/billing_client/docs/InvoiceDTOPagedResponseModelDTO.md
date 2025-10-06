# InvoiceDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[InvoiceDTO]**](InvoiceDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from billing_client.models.invoice_dto_paged_response_model_dto import InvoiceDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of InvoiceDTOPagedResponseModelDTO from a JSON string
invoice_dto_paged_response_model_dto_instance = InvoiceDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(InvoiceDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
invoice_dto_paged_response_model_dto_dict = invoice_dto_paged_response_model_dto_instance.to_dict()
# create an instance of InvoiceDTOPagedResponseModelDTO from a dict
invoice_dto_paged_response_model_dto_from_dict = InvoiceDTOPagedResponseModelDTO.from_dict(invoice_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


