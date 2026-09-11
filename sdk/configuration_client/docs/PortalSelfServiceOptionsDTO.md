# PortalSelfServiceOptionsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_edit_communication_details** | **bool** |  | [optional]
**allow_edit_personal_information** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.portal_self_service_options_dto import PortalSelfServiceOptionsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PortalSelfServiceOptionsDTO from a JSON string
portal_self_service_options_dto_instance = PortalSelfServiceOptionsDTO.from_json(json)
# print the JSON string representation of the object
print(PortalSelfServiceOptionsDTO.to_json())

# convert the object into a dict
portal_self_service_options_dto_dict = portal_self_service_options_dto_instance.to_dict()
# create an instance of PortalSelfServiceOptionsDTO from a dict
portal_self_service_options_dto_from_dict = PortalSelfServiceOptionsDTO.from_dict(portal_self_service_options_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
