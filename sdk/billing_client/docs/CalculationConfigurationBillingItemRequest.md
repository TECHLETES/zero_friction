# CalculationConfigurationBillingItemRequest

Represents a request to configure calculation settings for a billing item.  This DTO is used to set up tariff calculations and formulas for specific billing items.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_item_id** | **str** | The ID of the billing item to configure. | [optional] 
**deviating_tariff_calculation** | **bool** | Indicates whether this billing item uses a deviating tariff calculation. | [optional] 
**tariff_formula** | [**TariffFormulaDTO**](TariffFormulaDTO.md) | The tariff formula to be used for calculation when deviating tariff calculation is enabled. | [optional] 

## Example

```python
from billing_client.models.calculation_configuration_billing_item_request import CalculationConfigurationBillingItemRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CalculationConfigurationBillingItemRequest from a JSON string
calculation_configuration_billing_item_request_instance = CalculationConfigurationBillingItemRequest.from_json(json)
# print the JSON string representation of the object
print(CalculationConfigurationBillingItemRequest.to_json())

# convert the object into a dict
calculation_configuration_billing_item_request_dict = calculation_configuration_billing_item_request_instance.to_dict()
# create an instance of CalculationConfigurationBillingItemRequest from a dict
calculation_configuration_billing_item_request_from_dict = CalculationConfigurationBillingItemRequest.from_dict(calculation_configuration_billing_item_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


