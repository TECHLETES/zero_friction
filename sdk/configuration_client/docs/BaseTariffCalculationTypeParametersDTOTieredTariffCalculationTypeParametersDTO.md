# BaseTariffCalculationTypeParametersDTOTieredTariffCalculationTypeParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**calculation_type** | [**BillingItemTariffCalculationType**](BillingItemTariffCalculationType.md) |  | [optional] 
**slices** | [**List[TieredSliceDTO]**](TieredSliceDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.base_tariff_calculation_type_parameters_dto_tiered_tariff_calculation_type_parameters_dto import BaseTariffCalculationTypeParametersDTOTieredTariffCalculationTypeParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseTariffCalculationTypeParametersDTOTieredTariffCalculationTypeParametersDTO from a JSON string
base_tariff_calculation_type_parameters_dto_tiered_tariff_calculation_type_parameters_dto_instance = BaseTariffCalculationTypeParametersDTOTieredTariffCalculationTypeParametersDTO.from_json(json)
# print the JSON string representation of the object
print(BaseTariffCalculationTypeParametersDTOTieredTariffCalculationTypeParametersDTO.to_json())

# convert the object into a dict
base_tariff_calculation_type_parameters_dto_tiered_tariff_calculation_type_parameters_dto_dict = base_tariff_calculation_type_parameters_dto_tiered_tariff_calculation_type_parameters_dto_instance.to_dict()
# create an instance of BaseTariffCalculationTypeParametersDTOTieredTariffCalculationTypeParametersDTO from a dict
base_tariff_calculation_type_parameters_dto_tiered_tariff_calculation_type_parameters_dto_from_dict = BaseTariffCalculationTypeParametersDTOTieredTariffCalculationTypeParametersDTO.from_dict(base_tariff_calculation_type_parameters_dto_tiered_tariff_calculation_type_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


