# FormulaFunctionInputParameterDTO

Represents an input parameter for a formula function

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the input parameter | [optional] 
**reference_type** | [**FormulaFunctionInputParameterReferenceType**](FormulaFunctionInputParameterReferenceType.md) | Type of reference for the parameter value | [optional] 
**reference_type_parameters** | **object** | Parameters specific to the reference type | [optional] 

## Example

```python
from billing_client.models.formula_function_input_parameter_dto import FormulaFunctionInputParameterDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FormulaFunctionInputParameterDTO from a JSON string
formula_function_input_parameter_dto_instance = FormulaFunctionInputParameterDTO.from_json(json)
# print the JSON string representation of the object
print(FormulaFunctionInputParameterDTO.to_json())

# convert the object into a dict
formula_function_input_parameter_dto_dict = formula_function_input_parameter_dto_instance.to_dict()
# create an instance of FormulaFunctionInputParameterDTO from a dict
formula_function_input_parameter_dto_from_dict = FormulaFunctionInputParameterDTO.from_dict(formula_function_input_parameter_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


