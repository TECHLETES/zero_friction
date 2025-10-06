# UpdateOrganizationContactDetailsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email_address** | **str** |  | [optional] 
**telephone** | **str** |  | [optional] 
**website** | **str** |  | [optional] 
**telephone_interruptions** | **str** |  | [optional] 
**support** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.update_organization_contact_details_request import UpdateOrganizationContactDetailsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateOrganizationContactDetailsRequest from a JSON string
update_organization_contact_details_request_instance = UpdateOrganizationContactDetailsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateOrganizationContactDetailsRequest.to_json())

# convert the object into a dict
update_organization_contact_details_request_dict = update_organization_contact_details_request_instance.to_dict()
# create an instance of UpdateOrganizationContactDetailsRequest from a dict
update_organization_contact_details_request_from_dict = UpdateOrganizationContactDetailsRequest.from_dict(update_organization_contact_details_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


