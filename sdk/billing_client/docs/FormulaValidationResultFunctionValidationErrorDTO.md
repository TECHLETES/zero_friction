# FormulaValidationResultFunctionValidationErrorDTO

Represents a validation error for a specific function in the formula

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**function_position** | **int** | Position of the function in the formula where the validation error occurred | [optional] 
**error** | [**LocalisedErrorDTO**](LocalisedErrorDTO.md) | Localized error information | [optional] 
**value** | **str** | The value that caused the validation error | [optional] 

## Example

```python
from billing_client.models.formula_validation_result_function_validation_error_dto import FormulaValidationResultFunctionValidationErrorDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FormulaValidationResultFunctionValidationErrorDTO from a JSON string
formula_validation_result_function_validation_error_dto_instance = FormulaValidationResultFunctionValidationErrorDTO.from_json(json)
# print the JSON string representation of the object
print(FormulaValidationResultFunctionValidationErrorDTO.to_json())

# convert the object into a dict
formula_validation_result_function_validation_error_dto_dict = formula_validation_result_function_validation_error_dto_instance.to_dict()
# create an instance of FormulaValidationResultFunctionValidationErrorDTO from a dict
formula_validation_result_function_validation_error_dto_from_dict = FormulaValidationResultFunctionValidationErrorDTO.from_dict(formula_validation_result_function_validation_error_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


