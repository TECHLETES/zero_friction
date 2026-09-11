# ApiResponseDTOOfboolean


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **bool** |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from communication_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfboolean from a JSON string
api_response_dto_ofboolean_instance = ApiResponseDTOOfboolean.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfboolean.to_json())

# convert the object into a dict
api_response_dto_ofboolean_dict = api_response_dto_ofboolean_instance.to_dict()
# create an instance of ApiResponseDTOOfboolean from a dict
api_response_dto_ofboolean_from_dict = ApiResponseDTOOfboolean.from_dict(api_response_dto_ofboolean_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
