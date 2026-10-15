# BillingCalculationTypeParametersDTOConsumptionCalculationTypeParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | 
**metering_type** | [**MeteringType**](MeteringType.md) |  | 
**direction** | [**Direction**](Direction.md) |  | [optional] 
**billing_calculation_type** | [**BillingCalculationType**](BillingCalculationType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | 

## Example

```python
from configuration_client.models.billing_calculation_type_parameters_dto_consumption_calculation_type_parameters_dto import BillingCalculationTypeParametersDTOConsumptionCalculationTypeParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingCalculationTypeParametersDTOConsumptionCalculationTypeParametersDTO from a JSON string
billing_calculation_type_parameters_dto_consumption_calculation_type_parameters_dto_instance = BillingCalculationTypeParametersDTOConsumptionCalculationTypeParametersDTO.from_json(json)
# print the JSON string representation of the object
print(BillingCalculationTypeParametersDTOConsumptionCalculationTypeParametersDTO.to_json())

# convert the object into a dict
billing_calculation_type_parameters_dto_consumption_calculation_type_parameters_dto_dict = billing_calculation_type_parameters_dto_consumption_calculation_type_parameters_dto_instance.to_dict()
# create an instance of BillingCalculationTypeParametersDTOConsumptionCalculationTypeParametersDTO from a dict
billing_calculation_type_parameters_dto_consumption_calculation_type_parameters_dto_from_dict = BillingCalculationTypeParametersDTOConsumptionCalculationTypeParametersDTO.from_dict(billing_calculation_type_parameters_dto_consumption_calculation_type_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


