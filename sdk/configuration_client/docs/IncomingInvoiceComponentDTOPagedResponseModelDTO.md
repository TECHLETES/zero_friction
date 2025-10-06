# IncomingInvoiceComponentDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[IncomingInvoiceComponentDTO]**](IncomingInvoiceComponentDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.incoming_invoice_component_dto_paged_response_model_dto import IncomingInvoiceComponentDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingInvoiceComponentDTOPagedResponseModelDTO from a JSON string
incoming_invoice_component_dto_paged_response_model_dto_instance = IncomingInvoiceComponentDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingInvoiceComponentDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
incoming_invoice_component_dto_paged_response_model_dto_dict = incoming_invoice_component_dto_paged_response_model_dto_instance.to_dict()
# create an instance of IncomingInvoiceComponentDTOPagedResponseModelDTO from a dict
incoming_invoice_component_dto_paged_response_model_dto_from_dict = IncomingInvoiceComponentDTOPagedResponseModelDTO.from_dict(incoming_invoice_component_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


