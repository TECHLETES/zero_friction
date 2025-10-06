# UpdatePropertyGroupBillingConfigurationNoteToCustomerRequest

Represents a request to update the note to customer for a property group billing configuration.  This DTO is used to modify the note that will be displayed to customers on invoices.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**note_to_customer** | **str** | The new note text to be displayed to customers on invoices. | [optional] 

## Example

```python
from billing_client.models.update_property_group_billing_configuration_note_to_customer_request import UpdatePropertyGroupBillingConfigurationNoteToCustomerRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePropertyGroupBillingConfigurationNoteToCustomerRequest from a JSON string
update_property_group_billing_configuration_note_to_customer_request_instance = UpdatePropertyGroupBillingConfigurationNoteToCustomerRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePropertyGroupBillingConfigurationNoteToCustomerRequest.to_json())

# convert the object into a dict
update_property_group_billing_configuration_note_to_customer_request_dict = update_property_group_billing_configuration_note_to_customer_request_instance.to_dict()
# create an instance of UpdatePropertyGroupBillingConfigurationNoteToCustomerRequest from a dict
update_property_group_billing_configuration_note_to_customer_request_from_dict = UpdatePropertyGroupBillingConfigurationNoteToCustomerRequest.from_dict(update_property_group_billing_configuration_note_to_customer_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


