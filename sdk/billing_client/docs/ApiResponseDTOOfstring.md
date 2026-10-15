# ApiResponseDTOOfstring


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **str** |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.api_response_dto_ofstring import ApiResponseDTOOfstring

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfstring from a JSON string
api_response_dto_ofstring_instance = ApiResponseDTOOfstring.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfstring.to_json())

# convert the object into a dict
api_response_dto_ofstring_dict = api_response_dto_ofstring_instance.to_dict()
# create an instance of ApiResponseDTOOfstring from a dict
api_response_dto_ofstring_from_dict = ApiResponseDTOOfstring.from_dict(api_response_dto_ofstring_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


