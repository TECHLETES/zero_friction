# AverageServiceConsumptionPerServiceLocationDTOListApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**List[AverageServiceConsumptionPerServiceLocationDTO]**](AverageServiceConsumptionPerServiceLocationDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from metering_client.models.average_service_consumption_per_service_location_dto_list_api_response_dto import AverageServiceConsumptionPerServiceLocationDTOListApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AverageServiceConsumptionPerServiceLocationDTOListApiResponseDTO from a JSON string
average_service_consumption_per_service_location_dto_list_api_response_dto_instance = AverageServiceConsumptionPerServiceLocationDTOListApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(AverageServiceConsumptionPerServiceLocationDTOListApiResponseDTO.to_json())

# convert the object into a dict
average_service_consumption_per_service_location_dto_list_api_response_dto_dict = average_service_consumption_per_service_location_dto_list_api_response_dto_instance.to_dict()
# create an instance of AverageServiceConsumptionPerServiceLocationDTOListApiResponseDTO from a dict
average_service_consumption_per_service_location_dto_list_api_response_dto_from_dict = AverageServiceConsumptionPerServiceLocationDTOListApiResponseDTO.from_dict(average_service_consumption_per_service_location_dto_list_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


