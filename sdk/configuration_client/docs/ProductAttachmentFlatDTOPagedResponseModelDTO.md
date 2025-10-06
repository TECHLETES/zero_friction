# ProductAttachmentFlatDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[ProductAttachmentFlatDTO]**](ProductAttachmentFlatDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.product_attachment_flat_dto_paged_response_model_dto import ProductAttachmentFlatDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProductAttachmentFlatDTOPagedResponseModelDTO from a JSON string
product_attachment_flat_dto_paged_response_model_dto_instance = ProductAttachmentFlatDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(ProductAttachmentFlatDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
product_attachment_flat_dto_paged_response_model_dto_dict = product_attachment_flat_dto_paged_response_model_dto_instance.to_dict()
# create an instance of ProductAttachmentFlatDTOPagedResponseModelDTO from a dict
product_attachment_flat_dto_paged_response_model_dto_from_dict = ProductAttachmentFlatDTOPagedResponseModelDTO.from_dict(product_attachment_flat_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


