# PostalCodeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**postal_code** | **str** |  | [optional] 
**city** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.postal_code_dto import PostalCodeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PostalCodeDTO from a JSON string
postal_code_dto_instance = PostalCodeDTO.from_json(json)
# print the JSON string representation of the object
print(PostalCodeDTO.to_json())

# convert the object into a dict
postal_code_dto_dict = postal_code_dto_instance.to_dict()
# create an instance of PostalCodeDTO from a dict
postal_code_dto_from_dict = PostalCodeDTO.from_dict(postal_code_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


