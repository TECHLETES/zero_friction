# PortalSelfServiceOptionsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_edit_communication_details** | **bool** |  | [optional] 
**allow_edit_personal_information** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.portal_self_service_options_request import PortalSelfServiceOptionsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PortalSelfServiceOptionsRequest from a JSON string
portal_self_service_options_request_instance = PortalSelfServiceOptionsRequest.from_json(json)
# print the JSON string representation of the object
print(PortalSelfServiceOptionsRequest.to_json())

# convert the object into a dict
portal_self_service_options_request_dict = portal_self_service_options_request_instance.to_dict()
# create an instance of PortalSelfServiceOptionsRequest from a dict
portal_self_service_options_request_from_dict = PortalSelfServiceOptionsRequest.from_dict(portal_self_service_options_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


