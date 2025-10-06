# ContractLocationsAddedScenarioDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**ContractLocationsAddedScenarioDTO**](ContractLocationsAddedScenarioDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.contract_locations_added_scenario_dto_api_response_dto import ContractLocationsAddedScenarioDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContractLocationsAddedScenarioDTOApiResponseDTO from a JSON string
contract_locations_added_scenario_dto_api_response_dto_instance = ContractLocationsAddedScenarioDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ContractLocationsAddedScenarioDTOApiResponseDTO.to_json())

# convert the object into a dict
contract_locations_added_scenario_dto_api_response_dto_dict = contract_locations_added_scenario_dto_api_response_dto_instance.to_dict()
# create an instance of ContractLocationsAddedScenarioDTOApiResponseDTO from a dict
contract_locations_added_scenario_dto_api_response_dto_from_dict = ContractLocationsAddedScenarioDTOApiResponseDTO.from_dict(contract_locations_added_scenario_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


