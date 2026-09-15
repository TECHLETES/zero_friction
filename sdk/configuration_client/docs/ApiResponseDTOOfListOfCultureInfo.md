# ApiResponseDTOOfListOfCultureInfo


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
from configuration_client.models.api_response_dtoof_list_of_culture_info import ApiResponseDTOOfListOfCultureInfo

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfListOfCultureInfo from a JSON string
api_response_dtoof_list_of_culture_info_instance = ApiResponseDTOOfListOfCultureInfo.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfListOfCultureInfo.to_json())

# convert the object into a dict
api_response_dtoof_list_of_culture_info_dict = api_response_dtoof_list_of_culture_info_instance.to_dict()
# create an instance of ApiResponseDTOOfListOfCultureInfo from a dict
api_response_dtoof_list_of_culture_info_from_dict = ApiResponseDTOOfListOfCultureInfo.from_dict(api_response_dtoof_list_of_culture_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


