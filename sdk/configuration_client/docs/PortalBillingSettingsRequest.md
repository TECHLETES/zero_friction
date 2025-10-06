# PortalBillingSettingsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_customer_to_change_advance_amount** | **bool** |  | [optional] 
**hide_invoice_section** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.portal_billing_settings_request import PortalBillingSettingsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PortalBillingSettingsRequest from a JSON string
portal_billing_settings_request_instance = PortalBillingSettingsRequest.from_json(json)
# print the JSON string representation of the object
print(PortalBillingSettingsRequest.to_json())

# convert the object into a dict
portal_billing_settings_request_dict = portal_billing_settings_request_instance.to_dict()
# create an instance of PortalBillingSettingsRequest from a dict
portal_billing_settings_request_from_dict = PortalBillingSettingsRequest.from_dict(portal_billing_settings_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


