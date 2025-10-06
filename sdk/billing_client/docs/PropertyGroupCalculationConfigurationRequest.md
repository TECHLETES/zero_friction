# PropertyGroupCalculationConfigurationRequest

Represents a request to configure calculation settings for a property group.  This DTO is used to set up billing calculations and formulas for multiple service locations within a property group.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | The name of the calculation configuration. | [optional] 
**id** | **str** | The ID of the calculation configuration. | [optional] 
**service_location_ids** | **List[str]** | List of service location IDs included in this calculation configuration. | [optional] 
**billing_items** | [**List[CalculationConfigurationBillingItemRequest]**](CalculationConfigurationBillingItemRequest.md) | List of billing items with their specific calculation configurations. | [optional] 

## Example

```python
from billing_client.models.property_group_calculation_configuration_request import PropertyGroupCalculationConfigurationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupCalculationConfigurationRequest from a JSON string
property_group_calculation_configuration_request_instance = PropertyGroupCalculationConfigurationRequest.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupCalculationConfigurationRequest.to_json())

# convert the object into a dict
property_group_calculation_configuration_request_dict = property_group_calculation_configuration_request_instance.to_dict()
# create an instance of PropertyGroupCalculationConfigurationRequest from a dict
property_group_calculation_configuration_request_from_dict = PropertyGroupCalculationConfigurationRequest.from_dict(property_group_calculation_configuration_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


