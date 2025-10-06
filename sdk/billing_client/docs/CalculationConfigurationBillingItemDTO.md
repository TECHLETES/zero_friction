# CalculationConfigurationBillingItemDTO

Represents a billing item within a calculation configuration.  This DTO contains information about how a specific billing item should be calculated,  including its tariff formula and validation results.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_item_id** | **str** | The unique identifier of the billing item. | [optional] 
**deviating_tariff_calculation** | **bool** | Indicates whether this billing item uses a deviating tariff calculation method  that differs from the standard calculation. | [optional] 
**tariff_formula** | [**TariffFormulaDTO**](TariffFormulaDTO.md) | The tariff formula used to calculate the billing item&#39;s cost. | [optional] 
**tariff_validation_result** | [**FormulaValidationResultDTO**](FormulaValidationResultDTO.md) | The validation results for the tariff formula, indicating whether the formula  is valid and any validation errors that may exist. | [optional] 

## Example

```python
from billing_client.models.calculation_configuration_billing_item_dto import CalculationConfigurationBillingItemDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CalculationConfigurationBillingItemDTO from a JSON string
calculation_configuration_billing_item_dto_instance = CalculationConfigurationBillingItemDTO.from_json(json)
# print the JSON string representation of the object
print(CalculationConfigurationBillingItemDTO.to_json())

# convert the object into a dict
calculation_configuration_billing_item_dto_dict = calculation_configuration_billing_item_dto_instance.to_dict()
# create an instance of CalculationConfigurationBillingItemDTO from a dict
calculation_configuration_billing_item_dto_from_dict = CalculationConfigurationBillingItemDTO.from_dict(calculation_configuration_billing_item_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


