# BaseTariffCalculationTypeParametersDTOUnitPriceTariffCalculationTypeParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**formula_based** | **bool** |  | [optional]
**input_parameters** | [**List[BillingTariffInputDTO]**](BillingTariffInputDTO.md) |  | [optional]
**unit_tariff** | **float** |  | [optional]
**expression** | **str** |  | [optional]
**calculation_type** | [**BillingItemTariffCalculationType**](BillingItemTariffCalculationType.md) |  | [optional]

## Example

```python
from configuration_client.models.base_tariff_calculation_type_parameters_dto_unit_price_tariff_calculation_type_parameters_dto import BaseTariffCalculationTypeParametersDTOUnitPriceTariffCalculationTypeParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseTariffCalculationTypeParametersDTOUnitPriceTariffCalculationTypeParametersDTO from a JSON string
base_tariff_calculation_type_parameters_dto_unit_price_tariff_calculation_type_parameters_dto_instance = BaseTariffCalculationTypeParametersDTOUnitPriceTariffCalculationTypeParametersDTO.from_json(json)
# print the JSON string representation of the object
print(BaseTariffCalculationTypeParametersDTOUnitPriceTariffCalculationTypeParametersDTO.to_json())

# convert the object into a dict
base_tariff_calculation_type_parameters_dto_unit_price_tariff_calculation_type_parameters_dto_dict = base_tariff_calculation_type_parameters_dto_unit_price_tariff_calculation_type_parameters_dto_instance.to_dict()
# create an instance of BaseTariffCalculationTypeParametersDTOUnitPriceTariffCalculationTypeParametersDTO from a dict
base_tariff_calculation_type_parameters_dto_unit_price_tariff_calculation_type_parameters_dto_from_dict = BaseTariffCalculationTypeParametersDTOUnitPriceTariffCalculationTypeParametersDTO.from_dict(base_tariff_calculation_type_parameters_dto_unit_price_tariff_calculation_type_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
