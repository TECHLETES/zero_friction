# ApiResponseDTOOfListOfstring


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **List[str]** |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from metering_client.models.api_response_dtoof_list_ofstring import ApiResponseDTOOfListOfstring

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfListOfstring from a JSON string
api_response_dtoof_list_ofstring_instance = ApiResponseDTOOfListOfstring.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfListOfstring.to_json())

# convert the object into a dict
api_response_dtoof_list_ofstring_dict = api_response_dtoof_list_ofstring_instance.to_dict()
# create an instance of ApiResponseDTOOfListOfstring from a dict
api_response_dtoof_list_ofstring_from_dict = ApiResponseDTOOfListOfstring.from_dict(api_response_dtoof_list_ofstring_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
