# MeteringFormulaDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**functions** | [**Dict[str, FormulaFunctionInstanceDTO]**](FormulaFunctionInstanceDTO.md) |  | [optional] 

## Example

```python
from metering_client.models.metering_formula_dto import MeteringFormulaDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringFormulaDTO from a JSON string
metering_formula_dto_instance = MeteringFormulaDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringFormulaDTO.to_json())

# convert the object into a dict
metering_formula_dto_dict = metering_formula_dto_instance.to_dict()
# create an instance of MeteringFormulaDTO from a dict
metering_formula_dto_from_dict = MeteringFormulaDTO.from_dict(metering_formula_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


