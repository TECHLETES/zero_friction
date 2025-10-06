# PropertyGroupCalculationConfigurationDTO

Represents a calculation configuration for a property group.  This DTO defines how billing items should be calculated for specific service locations.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | The name of the calculation configuration. | [optional] 
**id** | **str** | The unique identifier of the calculation configuration. | [optional] 
**service_location_ids** | **List[str]** | List of service location identifiers that this configuration applies to. | [optional] 
**billing_items** | [**List[CalculationConfigurationBillingItemDTO]**](CalculationConfigurationBillingItemDTO.md) | List of billing items that are part of this calculation configuration. | [optional] 

## Example

```python
from billing_client.models.property_group_calculation_configuration_dto import PropertyGroupCalculationConfigurationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupCalculationConfigurationDTO from a JSON string
property_group_calculation_configuration_dto_instance = PropertyGroupCalculationConfigurationDTO.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupCalculationConfigurationDTO.to_json())

# convert the object into a dict
property_group_calculation_configuration_dto_dict = property_group_calculation_configuration_dto_instance.to_dict()
# create an instance of PropertyGroupCalculationConfigurationDTO from a dict
property_group_calculation_configuration_dto_from_dict = PropertyGroupCalculationConfigurationDTO.from_dict(property_group_calculation_configuration_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


