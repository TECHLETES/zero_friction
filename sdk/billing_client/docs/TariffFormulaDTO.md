# TariffFormulaDTO

Represents a tariff formula used in property group billing calculations.  This DTO contains a collection of formula functions that define how tariffs are calculated.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**functions** | [**Dict[str, FormulaFunctionInstanceDTO]**](FormulaFunctionInstanceDTO.md) | Dictionary of formula function instances, keyed by their order in the formula.  Each function represents a step in the tariff calculation process. | [optional] 

## Example

```python
from billing_client.models.tariff_formula_dto import TariffFormulaDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TariffFormulaDTO from a JSON string
tariff_formula_dto_instance = TariffFormulaDTO.from_json(json)
# print the JSON string representation of the object
print(TariffFormulaDTO.to_json())

# convert the object into a dict
tariff_formula_dto_dict = tariff_formula_dto_instance.to_dict()
# create an instance of TariffFormulaDTO from a dict
tariff_formula_dto_from_dict = TariffFormulaDTO.from_dict(tariff_formula_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


