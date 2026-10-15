# ApiResponseDTOOfListOfClassDescription


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[ClassDescription]**](ClassDescription.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.api_response_dtoof_list_of_class_description import ApiResponseDTOOfListOfClassDescription

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfListOfClassDescription from a JSON string
api_response_dtoof_list_of_class_description_instance = ApiResponseDTOOfListOfClassDescription.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfListOfClassDescription.to_json())

# convert the object into a dict
api_response_dtoof_list_of_class_description_dict = api_response_dtoof_list_of_class_description_instance.to_dict()
# create an instance of ApiResponseDTOOfListOfClassDescription from a dict
api_response_dtoof_list_of_class_description_from_dict = ApiResponseDTOOfListOfClassDescription.from_dict(api_response_dtoof_list_of_class_description_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


