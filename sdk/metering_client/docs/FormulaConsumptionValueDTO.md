# FormulaConsumptionValueDTO

Represents a single consumption value with its time period

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **float** | The consumption value | [optional] 
**start_date_time** | **datetime** | Start date and time of the consumption period | [optional] 
**end_date_time** | **datetime** | End date and time of the consumption period | [optional] 

## Example

```python
from metering_client.models.formula_consumption_value_dto import FormulaConsumptionValueDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FormulaConsumptionValueDTO from a JSON string
formula_consumption_value_dto_instance = FormulaConsumptionValueDTO.from_json(json)
# print the JSON string representation of the object
print(FormulaConsumptionValueDTO.to_json())

# convert the object into a dict
formula_consumption_value_dto_dict = formula_consumption_value_dto_instance.to_dict()
# create an instance of FormulaConsumptionValueDTO from a dict
formula_consumption_value_dto_from_dict = FormulaConsumptionValueDTO.from_dict(formula_consumption_value_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


