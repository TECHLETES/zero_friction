# OrganizationContactDetailsDTO


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
from configuration_client.models.organization_contact_details_dto import OrganizationContactDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationContactDetailsDTO from a JSON string
organization_contact_details_dto_instance = OrganizationContactDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(OrganizationContactDetailsDTO.to_json())

# convert the object into a dict
organization_contact_details_dto_dict = organization_contact_details_dto_instance.to_dict()
# create an instance of OrganizationContactDetailsDTO from a dict
organization_contact_details_dto_from_dict = OrganizationContactDetailsDTO.from_dict(organization_contact_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


