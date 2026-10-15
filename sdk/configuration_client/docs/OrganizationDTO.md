# OrganizationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vat_account_number** | **str** |  | [optional] 
**company_account_number** | **str** |  | [optional] 
**logo** | **str** |  | [optional] 
**logo_cdn_url** | **str** |  | [optional] 
**primary_color** | **str** |  | [optional] 
**secondary_color** | **str** |  | [optional] 
**persist_logo_in_portal** | **bool** |  | [optional] 
**persist_color_in_portal** | **bool** |  | [optional] 
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**contact_details** | [**OrganizationContactDetailsDTO**](OrganizationContactDetailsDTO.md) |  | [optional] 
**manually_set_customer_number** | **bool** |  | [optional] 
**manually_set_contract_number** | **bool** |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.organization_dto import OrganizationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationDTO from a JSON string
organization_dto_instance = OrganizationDTO.from_json(json)
# print the JSON string representation of the object
print(OrganizationDTO.to_json())

# convert the object into a dict
organization_dto_dict = organization_dto_instance.to_dict()
# create an instance of OrganizationDTO from a dict
organization_dto_from_dict = OrganizationDTO.from_dict(organization_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


