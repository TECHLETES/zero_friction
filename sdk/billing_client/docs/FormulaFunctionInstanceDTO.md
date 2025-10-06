# FormulaFunctionInstanceDTO

Represents an instance of a formula function with its input parameters and output configuration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**function_type** | [**FormulaFunctionType**](FormulaFunctionType.md) | Type of formula function being instantiated | [optional] 
**input_parameters** | [**List[FormulaFunctionInputParameterDTO]**](FormulaFunctionInputParameterDTO.md) | List of input parameters required by the function | [optional] 
**output_parameter_name** | **str** | Name of the output parameter that will store the function&#39;s result | [optional] 

## Example

```python
from billing_client.models.formula_function_instance_dto import FormulaFunctionInstanceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FormulaFunctionInstanceDTO from a JSON string
formula_function_instance_dto_instance = FormulaFunctionInstanceDTO.from_json(json)
# print the JSON string representation of the object
print(FormulaFunctionInstanceDTO.to_json())

# convert the object into a dict
formula_function_instance_dto_dict = formula_function_instance_dto_instance.to_dict()
# create an instance of FormulaFunctionInstanceDTO from a dict
formula_function_instance_dto_from_dict = FormulaFunctionInstanceDTO.from_dict(formula_function_instance_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


