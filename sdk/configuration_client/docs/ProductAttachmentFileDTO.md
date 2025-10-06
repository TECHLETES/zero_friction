# ProductAttachmentFileDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**culture** | [**CultureInfo**](CultureInfo.md) |  | [optional] 
**file_name** | **str** |  | [optional] 
**internal_file_name** | **str** |  | [optional] 
**attachment_id** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.product_attachment_file_dto import ProductAttachmentFileDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProductAttachmentFileDTO from a JSON string
product_attachment_file_dto_instance = ProductAttachmentFileDTO.from_json(json)
# print the JSON string representation of the object
print(ProductAttachmentFileDTO.to_json())

# convert the object into a dict
product_attachment_file_dto_dict = product_attachment_file_dto_instance.to_dict()
# create an instance of ProductAttachmentFileDTO from a dict
product_attachment_file_dto_from_dict = ProductAttachmentFileDTO.from_dict(product_attachment_file_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


