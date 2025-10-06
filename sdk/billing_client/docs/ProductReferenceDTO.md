# ProductReferenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] [readonly] 
**product_id** | **str** |  | [optional] [readonly] 
**product_name** | **str** |  | [optional] 

## Example

```python
from billing_client.models.product_reference_dto import ProductReferenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProductReferenceDTO from a JSON string
product_reference_dto_instance = ProductReferenceDTO.from_json(json)
# print the JSON string representation of the object
print(ProductReferenceDTO.to_json())

# convert the object into a dict
product_reference_dto_dict = product_reference_dto_instance.to_dict()
# create an instance of ProductReferenceDTO from a dict
product_reference_dto_from_dict = ProductReferenceDTO.from_dict(product_reference_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


