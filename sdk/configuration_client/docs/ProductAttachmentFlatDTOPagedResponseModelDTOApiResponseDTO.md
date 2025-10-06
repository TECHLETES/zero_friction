# ProductAttachmentFlatDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**ProductAttachmentFlatDTOPagedResponseModelDTO**](ProductAttachmentFlatDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.product_attachment_flat_dto_paged_response_model_dto_api_response_dto import ProductAttachmentFlatDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProductAttachmentFlatDTOPagedResponseModelDTOApiResponseDTO from a JSON string
product_attachment_flat_dto_paged_response_model_dto_api_response_dto_instance = ProductAttachmentFlatDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ProductAttachmentFlatDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
product_attachment_flat_dto_paged_response_model_dto_api_response_dto_dict = product_attachment_flat_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of ProductAttachmentFlatDTOPagedResponseModelDTOApiResponseDTO from a dict
product_attachment_flat_dto_paged_response_model_dto_api_response_dto_from_dict = ProductAttachmentFlatDTOPagedResponseModelDTOApiResponseDTO.from_dict(product_attachment_flat_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


