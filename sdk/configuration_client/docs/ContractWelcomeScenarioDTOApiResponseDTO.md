# ContractWelcomeScenarioDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**ContractWelcomeScenarioDTO**](ContractWelcomeScenarioDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.contract_welcome_scenario_dto_api_response_dto import ContractWelcomeScenarioDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContractWelcomeScenarioDTOApiResponseDTO from a JSON string
contract_welcome_scenario_dto_api_response_dto_instance = ContractWelcomeScenarioDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ContractWelcomeScenarioDTOApiResponseDTO.to_json())

# convert the object into a dict
contract_welcome_scenario_dto_api_response_dto_dict = contract_welcome_scenario_dto_api_response_dto_instance.to_dict()
# create an instance of ContractWelcomeScenarioDTOApiResponseDTO from a dict
contract_welcome_scenario_dto_api_response_dto_from_dict = ContractWelcomeScenarioDTOApiResponseDTO.from_dict(contract_welcome_scenario_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


