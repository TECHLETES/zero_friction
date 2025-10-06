# FormulaValidationResultDTO

Represents the result of validating a formula, including any validation errors

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**valid** | **bool** | Indicates whether the formula is valid | [optional] 
**general_validation_errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) | List of general validation errors that apply to the entire formula | [optional] 
**function_validation_errors** | [**List[FormulaValidationResultFunctionValidationErrorDTO]**](FormulaValidationResultFunctionValidationErrorDTO.md) | List of validation errors specific to individual functions in the formula | [optional] 

## Example

```python
from metering_client.models.formula_validation_result_dto import FormulaValidationResultDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FormulaValidationResultDTO from a JSON string
formula_validation_result_dto_instance = FormulaValidationResultDTO.from_json(json)
# print the JSON string representation of the object
print(FormulaValidationResultDTO.to_json())

# convert the object into a dict
formula_validation_result_dto_dict = formula_validation_result_dto_instance.to_dict()
# create an instance of FormulaValidationResultDTO from a dict
formula_validation_result_dto_from_dict = FormulaValidationResultDTO.from_dict(formula_validation_result_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


