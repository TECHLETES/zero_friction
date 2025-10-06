# FunctionDescription


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**function_category** | [**FormulaFunctionCategory**](FormulaFunctionCategory.md) |  | [optional] 
**function_type** | [**FormulaFunctionType**](FormulaFunctionType.md) |  | [optional] 
**output_type** | **str** |  | [optional] 
**input_parameters** | **Dict[str, Optional[str]]** |  | [optional] 

## Example

```python
from metering_client.models.function_description import FunctionDescription

# TODO update the JSON string below
json = "{}"
# create an instance of FunctionDescription from a JSON string
function_description_instance = FunctionDescription.from_json(json)
# print the JSON string representation of the object
print(FunctionDescription.to_json())

# convert the object into a dict
function_description_dict = function_description_instance.to_dict()
# create an instance of FunctionDescription from a dict
function_description_from_dict = FunctionDescription.from_dict(function_description_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


