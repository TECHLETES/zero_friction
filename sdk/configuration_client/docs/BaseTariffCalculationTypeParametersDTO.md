# BaseTariffCalculationTypeParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**calculation_type** | [**BillingItemTariffCalculationType**](BillingItemTariffCalculationType.md) |  | [optional] [readonly] 

## Example

```python
from configuration_client.models.base_tariff_calculation_type_parameters_dto import BaseTariffCalculationTypeParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseTariffCalculationTypeParametersDTO from a JSON string
base_tariff_calculation_type_parameters_dto_instance = BaseTariffCalculationTypeParametersDTO.from_json(json)
# print the JSON string representation of the object
print(BaseTariffCalculationTypeParametersDTO.to_json())

# convert the object into a dict
base_tariff_calculation_type_parameters_dto_dict = base_tariff_calculation_type_parameters_dto_instance.to_dict()
# create an instance of BaseTariffCalculationTypeParametersDTO from a dict
base_tariff_calculation_type_parameters_dto_from_dict = BaseTariffCalculationTypeParametersDTO.from_dict(base_tariff_calculation_type_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


