# FormulaExecutionResultDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**FormulaExecutionResultDTO**](FormulaExecutionResultDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from metering_client.models.formula_execution_result_dto_api_response_dto import FormulaExecutionResultDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FormulaExecutionResultDTOApiResponseDTO from a JSON string
formula_execution_result_dto_api_response_dto_instance = FormulaExecutionResultDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(FormulaExecutionResultDTOApiResponseDTO.to_json())

# convert the object into a dict
formula_execution_result_dto_api_response_dto_dict = formula_execution_result_dto_api_response_dto_instance.to_dict()
# create an instance of FormulaExecutionResultDTOApiResponseDTO from a dict
formula_execution_result_dto_api_response_dto_from_dict = FormulaExecutionResultDTOApiResponseDTO.from_dict(formula_execution_result_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


