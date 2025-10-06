# CostUnitDTOListApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**List[CostUnitDTO]**](CostUnitDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.cost_unit_dto_list_api_response_dto import CostUnitDTOListApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CostUnitDTOListApiResponseDTO from a JSON string
cost_unit_dto_list_api_response_dto_instance = CostUnitDTOListApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CostUnitDTOListApiResponseDTO.to_json())

# convert the object into a dict
cost_unit_dto_list_api_response_dto_dict = cost_unit_dto_list_api_response_dto_instance.to_dict()
# create an instance of CostUnitDTOListApiResponseDTO from a dict
cost_unit_dto_list_api_response_dto_from_dict = CostUnitDTOListApiResponseDTO.from_dict(cost_unit_dto_list_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


