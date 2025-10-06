# UpdatePropertyGroupBillingConfigurationCostAllocationRequest

Represents a request to update cost allocation settings for a property group billing configuration.  This DTO is used to configure how costs are allocated across different components and calculation configurations.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**required_incoming_invoice_components** | [**List[RequiredIncomingInvoiceComponentRequestDetails]**](RequiredIncomingInvoiceComponentRequestDetails.md) | List of required incoming invoice components with their details. | [optional] 
**calculation_configurations** | [**List[PropertyGroupCalculationConfigurationRequest]**](PropertyGroupCalculationConfigurationRequest.md) | List of calculation configurations for the property group. | [optional] 

## Example

```python
from billing_client.models.update_property_group_billing_configuration_cost_allocation_request import UpdatePropertyGroupBillingConfigurationCostAllocationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePropertyGroupBillingConfigurationCostAllocationRequest from a JSON string
update_property_group_billing_configuration_cost_allocation_request_instance = UpdatePropertyGroupBillingConfigurationCostAllocationRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePropertyGroupBillingConfigurationCostAllocationRequest.to_json())

# convert the object into a dict
update_property_group_billing_configuration_cost_allocation_request_dict = update_property_group_billing_configuration_cost_allocation_request_instance.to_dict()
# create an instance of UpdatePropertyGroupBillingConfigurationCostAllocationRequest from a dict
update_property_group_billing_configuration_cost_allocation_request_from_dict = UpdatePropertyGroupBillingConfigurationCostAllocationRequest.from_dict(update_property_group_billing_configuration_cost_allocation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


