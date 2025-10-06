# UpdateOrganizationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automatic_processing_enabled** | **bool** |  | [optional] 
**migration_mode** | **bool** |  | [optional] 
**vat_account_number** | **str** |  | [optional] 
**time_zone** | **str** |  | [optional] 
**culture** | **str** |  | [optional] 
**company_account_number** | **str** |  | [optional] 
**logo** | **str** |  | [optional] 
**primary_color** | **str** |  | [optional] 
**secondary_color** | **str** |  | [optional] 
**persist_logo_in_portal** | **bool** |  | [optional] 
**persist_color_in_portal** | **bool** |  | [optional] 
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**contact_details** | [**UpdateOrganizationContactDetailsRequest**](UpdateOrganizationContactDetailsRequest.md) |  | [optional] 
**manually_set_customer_number** | **bool** |  | [optional] 
**manually_set_contract_number** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.update_organization_request import UpdateOrganizationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateOrganizationRequest from a JSON string
update_organization_request_instance = UpdateOrganizationRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateOrganizationRequest.to_json())

# convert the object into a dict
update_organization_request_dict = update_organization_request_instance.to_dict()
# create an instance of UpdateOrganizationRequest from a dict
update_organization_request_from_dict = UpdateOrganizationRequest.from_dict(update_organization_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


