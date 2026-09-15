# UpdateOrganizationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vat_account_number** | **str** |  | 
**company_account_number** | **str** |  | 
**logo** | **str** |  | 
**primary_color** | **str** |  | 
**secondary_color** | **str** |  | 
**address** | [**AddressDTO**](AddressDTO.md) |  | 
**contact_details** | [**UpdateOrganizationContactDetailsRequest**](UpdateOrganizationContactDetailsRequest.md) |  | 
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


