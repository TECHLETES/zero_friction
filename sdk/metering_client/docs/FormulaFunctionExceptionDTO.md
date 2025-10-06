# FormulaFunctionExceptionDTO

Represents an error that occurred during formula function execution

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**function_position** | **int** | Position of the function in the formula where the error occurred | [optional] 
**error** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) | Localized error information | [optional] 
**message** | **str** | Human-readable error message | [optional] 
**parameters** | **List[str]** | Parameters that were passed to the function when the error occurred | [optional] 

## Example

```python
from metering_client.models.formula_function_exception_dto import FormulaFunctionExceptionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FormulaFunctionExceptionDTO from a JSON string
formula_function_exception_dto_instance = FormulaFunctionExceptionDTO.from_json(json)
# print the JSON string representation of the object
print(FormulaFunctionExceptionDTO.to_json())

# convert the object into a dict
formula_function_exception_dto_dict = formula_function_exception_dto_instance.to_dict()
# create an instance of FormulaFunctionExceptionDTO from a dict
formula_function_exception_dto_from_dict = FormulaFunctionExceptionDTO.from_dict(formula_function_exception_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


