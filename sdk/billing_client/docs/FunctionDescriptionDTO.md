# FunctionDescriptionDTO

Represents a description of a formula function, including its category, type, and parameter information

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**function_category** | [**FormulaFunctionCategory**](FormulaFunctionCategory.md) | Category classification of the function | [optional] 
**function_type** | [**FormulaFunctionType**](FormulaFunctionType.md) | Specific type of the formula function | [optional] 
**output_type** | **str** | Data type of the function&#39;s output | [optional] 
**input_parameters** | **Dict[str, Optional[str]]** | Dictionary mapping input parameter names to their data types | [optional] 

## Example

```python
from billing_client.models.function_description_dto import FunctionDescriptionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FunctionDescriptionDTO from a JSON string
function_description_dto_instance = FunctionDescriptionDTO.from_json(json)
# print the JSON string representation of the object
print(FunctionDescriptionDTO.to_json())

# convert the object into a dict
function_description_dto_dict = function_description_dto_instance.to_dict()
# create an instance of FunctionDescriptionDTO from a dict
function_description_dto_from_dict = FunctionDescriptionDTO.from_dict(function_description_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


