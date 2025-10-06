# ServiceLocationDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**ServiceLocationDTO**](ServiceLocationDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from masterdata_client.models.service_location_dto_api_response_dto import ServiceLocationDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceLocationDTOApiResponseDTO from a JSON string
service_location_dto_api_response_dto_instance = ServiceLocationDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceLocationDTOApiResponseDTO.to_json())

# convert the object into a dict
service_location_dto_api_response_dto_dict = service_location_dto_api_response_dto_instance.to_dict()
# create an instance of ServiceLocationDTOApiResponseDTO from a dict
service_location_dto_api_response_dto_from_dict = ServiceLocationDTOApiResponseDTO.from_dict(service_location_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


