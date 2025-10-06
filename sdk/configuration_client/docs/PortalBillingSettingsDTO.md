# PortalBillingSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_customer_to_change_advance_amount** | **bool** |  | [optional] 
**hide_invoice_section** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.portal_billing_settings_dto import PortalBillingSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PortalBillingSettingsDTO from a JSON string
portal_billing_settings_dto_instance = PortalBillingSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(PortalBillingSettingsDTO.to_json())

# convert the object into a dict
portal_billing_settings_dto_dict = portal_billing_settings_dto_instance.to_dict()
# create an instance of PortalBillingSettingsDTO from a dict
portal_billing_settings_dto_from_dict = PortalBillingSettingsDTO.from_dict(portal_billing_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


