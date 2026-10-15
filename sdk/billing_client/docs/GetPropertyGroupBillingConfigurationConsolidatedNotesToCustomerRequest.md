# GetPropertyGroupBillingConfigurationConsolidatedNotesToCustomerRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**property_group_ids** | **List[str]** |  | [optional] 
**culture** | **str** | Culture identifier (e.g., &#39;en-US&#39;, &#39;nl-NL&#39;) | [optional] 

## Example

```python
from billing_client.models.get_property_group_billing_configuration_consolidated_notes_to_customer_request import GetPropertyGroupBillingConfigurationConsolidatedNotesToCustomerRequest

# TODO update the JSON string below
json = "{}"
# create an instance of GetPropertyGroupBillingConfigurationConsolidatedNotesToCustomerRequest from a JSON string
get_property_group_billing_configuration_consolidated_notes_to_customer_request_instance = GetPropertyGroupBillingConfigurationConsolidatedNotesToCustomerRequest.from_json(json)
# print the JSON string representation of the object
print(GetPropertyGroupBillingConfigurationConsolidatedNotesToCustomerRequest.to_json())

# convert the object into a dict
get_property_group_billing_configuration_consolidated_notes_to_customer_request_dict = get_property_group_billing_configuration_consolidated_notes_to_customer_request_instance.to_dict()
# create an instance of GetPropertyGroupBillingConfigurationConsolidatedNotesToCustomerRequest from a dict
get_property_group_billing_configuration_consolidated_notes_to_customer_request_from_dict = GetPropertyGroupBillingConfigurationConsolidatedNotesToCustomerRequest.from_dict(get_property_group_billing_configuration_consolidated_notes_to_customer_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


