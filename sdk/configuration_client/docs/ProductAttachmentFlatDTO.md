# ProductAttachmentFlatDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachment** | [**ProductAttachmentDTO**](ProductAttachmentDTO.md) |  | [optional] 
**product** | [**ProductDTO**](ProductDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.product_attachment_flat_dto import ProductAttachmentFlatDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProductAttachmentFlatDTO from a JSON string
product_attachment_flat_dto_instance = ProductAttachmentFlatDTO.from_json(json)
# print the JSON string representation of the object
print(ProductAttachmentFlatDTO.to_json())

# convert the object into a dict
product_attachment_flat_dto_dict = product_attachment_flat_dto_instance.to_dict()
# create an instance of ProductAttachmentFlatDTO from a dict
product_attachment_flat_dto_from_dict = ProductAttachmentFlatDTO.from_dict(product_attachment_flat_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


