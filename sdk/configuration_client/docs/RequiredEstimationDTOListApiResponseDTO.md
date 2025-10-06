# RequiredEstimationDTOListApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**List[RequiredEstimationDTO]**](RequiredEstimationDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.required_estimation_dto_list_api_response_dto import RequiredEstimationDTOListApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of RequiredEstimationDTOListApiResponseDTO from a JSON string
required_estimation_dto_list_api_response_dto_instance = RequiredEstimationDTOListApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(RequiredEstimationDTOListApiResponseDTO.to_json())

# convert the object into a dict
required_estimation_dto_list_api_response_dto_dict = required_estimation_dto_list_api_response_dto_instance.to_dict()
# create an instance of RequiredEstimationDTOListApiResponseDTO from a dict
required_estimation_dto_list_api_response_dto_from_dict = RequiredEstimationDTOListApiResponseDTO.from_dict(required_estimation_dto_list_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


