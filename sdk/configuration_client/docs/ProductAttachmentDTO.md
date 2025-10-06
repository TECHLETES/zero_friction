# ProductAttachmentDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_attachment_id** | **str** |  | [optional] 
**include_in_welcome_email** | **bool** |  | [optional] 
**visibility** | [**AttachmentVisibility**](AttachmentVisibility.md) |  | [optional] 
**approval_required** | **bool** |  | [optional] 
**valid_from** | **datetime** |  | [optional] 
**valid_until** | **datetime** |  | [optional] 
**attachment_files** | [**List[ProductAttachmentFileDTO]**](ProductAttachmentFileDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.product_attachment_dto import ProductAttachmentDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProductAttachmentDTO from a JSON string
product_attachment_dto_instance = ProductAttachmentDTO.from_json(json)
# print the JSON string representation of the object
print(ProductAttachmentDTO.to_json())

# convert the object into a dict
product_attachment_dto_dict = product_attachment_dto_instance.to_dict()
# create an instance of ProductAttachmentDTO from a dict
product_attachment_dto_from_dict = ProductAttachmentDTO.from_dict(product_attachment_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


