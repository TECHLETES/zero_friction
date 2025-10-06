# PrepaymentMetersInstalledOnServiceLocationDTOListApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**List[PrepaymentMetersInstalledOnServiceLocationDTO]**](PrepaymentMetersInstalledOnServiceLocationDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from masterdata_client.models.prepayment_meters_installed_on_service_location_dto_list_api_response_dto import PrepaymentMetersInstalledOnServiceLocationDTOListApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PrepaymentMetersInstalledOnServiceLocationDTOListApiResponseDTO from a JSON string
prepayment_meters_installed_on_service_location_dto_list_api_response_dto_instance = PrepaymentMetersInstalledOnServiceLocationDTOListApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(PrepaymentMetersInstalledOnServiceLocationDTOListApiResponseDTO.to_json())

# convert the object into a dict
prepayment_meters_installed_on_service_location_dto_list_api_response_dto_dict = prepayment_meters_installed_on_service_location_dto_list_api_response_dto_instance.to_dict()
# create an instance of PrepaymentMetersInstalledOnServiceLocationDTOListApiResponseDTO from a dict
prepayment_meters_installed_on_service_location_dto_list_api_response_dto_from_dict = PrepaymentMetersInstalledOnServiceLocationDTOListApiResponseDTO.from_dict(prepayment_meters_installed_on_service_location_dto_list_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


