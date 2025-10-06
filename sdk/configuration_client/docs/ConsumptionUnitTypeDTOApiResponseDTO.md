# ConsumptionUnitTypeDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**ConsumptionUnitTypeDTO**](ConsumptionUnitTypeDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.consumption_unit_type_dto_api_response_dto import ConsumptionUnitTypeDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumptionUnitTypeDTOApiResponseDTO from a JSON string
consumption_unit_type_dto_api_response_dto_instance = ConsumptionUnitTypeDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ConsumptionUnitTypeDTOApiResponseDTO.to_json())

# convert the object into a dict
consumption_unit_type_dto_api_response_dto_dict = consumption_unit_type_dto_api_response_dto_instance.to_dict()
# create an instance of ConsumptionUnitTypeDTOApiResponseDTO from a dict
consumption_unit_type_dto_api_response_dto_from_dict = ConsumptionUnitTypeDTOApiResponseDTO.from_dict(consumption_unit_type_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


