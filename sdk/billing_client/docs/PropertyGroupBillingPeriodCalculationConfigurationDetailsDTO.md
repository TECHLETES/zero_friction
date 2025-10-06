# PropertyGroupBillingPeriodCalculationConfigurationDetailsDTO

Represents calculation configuration details for a property group billing period.  Contains information about tariff status and billing items.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**calculation_configuration_id** | **str** | The unique identifier of the calculation configuration. | [optional] 
**tariff_status** | [**PropertyGroupBillingPeriodTariffStatus**](PropertyGroupBillingPeriodTariffStatus.md) | The current status of tariff calculations for this configuration. | [optional] 
**billing_items** | [**List[BillingItemDetailsDTO]**](BillingItemDetailsDTO.md) | List of billing items included in this calculation configuration. | [optional] 

## Example

```python
from billing_client.models.property_group_billing_period_calculation_configuration_details_dto import PropertyGroupBillingPeriodCalculationConfigurationDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupBillingPeriodCalculationConfigurationDetailsDTO from a JSON string
property_group_billing_period_calculation_configuration_details_dto_instance = PropertyGroupBillingPeriodCalculationConfigurationDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupBillingPeriodCalculationConfigurationDetailsDTO.to_json())

# convert the object into a dict
property_group_billing_period_calculation_configuration_details_dto_dict = property_group_billing_period_calculation_configuration_details_dto_instance.to_dict()
# create an instance of PropertyGroupBillingPeriodCalculationConfigurationDetailsDTO from a dict
property_group_billing_period_calculation_configuration_details_dto_from_dict = PropertyGroupBillingPeriodCalculationConfigurationDetailsDTO.from_dict(property_group_billing_period_calculation_configuration_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


