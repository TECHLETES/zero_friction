# FormulaExecutionResultDTO

Represents the result of executing a formula, including any errors and output

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**has_errors** | **bool** | Indicates whether any errors occurred during formula execution | [optional] 
**errors** | [**List[FormulaFunctionExceptionDTO]**](FormulaFunctionExceptionDTO.md) | List of errors that occurred during formula execution | [optional] 
**output** | [**List[FormulaConsumptionDTO]**](FormulaConsumptionDTO.md) | List of consumption data produced by the formula execution | [optional] 

## Example

```python
from metering_client.models.formula_execution_result_dto import FormulaExecutionResultDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FormulaExecutionResultDTO from a JSON string
formula_execution_result_dto_instance = FormulaExecutionResultDTO.from_json(json)
# print the JSON string representation of the object
print(FormulaExecutionResultDTO.to_json())

# convert the object into a dict
formula_execution_result_dto_dict = formula_execution_result_dto_instance.to_dict()
# create an instance of FormulaExecutionResultDTO from a dict
formula_execution_result_dto_from_dict = FormulaExecutionResultDTO.from_dict(formula_execution_result_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


