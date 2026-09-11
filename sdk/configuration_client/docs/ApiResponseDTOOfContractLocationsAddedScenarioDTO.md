# ApiResponseDTOOfContractLocationsAddedScenarioDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**ContractLocationsAddedScenarioDTO**](ContractLocationsAddedScenarioDTO.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.api_response_dtoof_contract_locations_added_scenario_dto import ApiResponseDTOOfContractLocationsAddedScenarioDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfContractLocationsAddedScenarioDTO from a JSON string
api_response_dtoof_contract_locations_added_scenario_dto_instance = ApiResponseDTOOfContractLocationsAddedScenarioDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfContractLocationsAddedScenarioDTO.to_json())

# convert the object into a dict
api_response_dtoof_contract_locations_added_scenario_dto_dict = api_response_dtoof_contract_locations_added_scenario_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfContractLocationsAddedScenarioDTO from a dict
api_response_dtoof_contract_locations_added_scenario_dto_from_dict = ApiResponseDTOOfContractLocationsAddedScenarioDTO.from_dict(api_response_dtoof_contract_locations_added_scenario_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
