# PortalOrganisationContactSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email_address** | **str** |  | [optional] 
**contact_url** | **str** |  | [optional] 
**telephone_number** | **str** |  | [optional] 
**sepa_mandate_terms_and_conditions_urls** | **Dict[str, Optional[str]]** |  | [optional] 
**terms_and_conditions_urls** | **Dict[str, Optional[str]]** |  | [optional] 

## Example

```python
from configuration_client.models.portal_organisation_contact_settings_dto import PortalOrganisationContactSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PortalOrganisationContactSettingsDTO from a JSON string
portal_organisation_contact_settings_dto_instance = PortalOrganisationContactSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(PortalOrganisationContactSettingsDTO.to_json())

# convert the object into a dict
portal_organisation_contact_settings_dto_dict = portal_organisation_contact_settings_dto_instance.to_dict()
# create an instance of PortalOrganisationContactSettingsDTO from a dict
portal_organisation_contact_settings_dto_from_dict = PortalOrganisationContactSettingsDTO.from_dict(portal_organisation_contact_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


