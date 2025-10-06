# OrganizationDataObject


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**primary_color** | **str** |  | [optional] 
**secondary_color** | **str** |  | [optional] 
**bank_account** | **str** |  | [optional] 
**bank_account_holder** | **str** |  | [optional] 
**vat_account_number** | **str** |  | [optional] 
**company_account_number** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**logo** | **str** |  | [optional] 
**logo_cdn_url** | **str** |  | [optional] 
**address** | [**AddressDataObject**](AddressDataObject.md) |  | [optional] 
**email_address** | **str** |  | [optional] 
**telephone** | **str** |  | [optional] 
**website** | **str** |  | [optional] 
**telephone_interruptions** | **str** |  | [optional] 
**support** | **str** |  | [optional] 
**customer_portal** | **str** |  | [optional] 
**parameters** | [**OrganizationParametersDataObject**](OrganizationParametersDataObject.md) |  | [optional] 

## Example

```python
from attachments_client.models.organization_data_object import OrganizationDataObject

# TODO update the JSON string below
json = "{}"
# create an instance of OrganizationDataObject from a JSON string
organization_data_object_instance = OrganizationDataObject.from_json(json)
# print the JSON string representation of the object
print(OrganizationDataObject.to_json())

# convert the object into a dict
organization_data_object_dict = organization_data_object_instance.to_dict()
# create an instance of OrganizationDataObject from a dict
organization_data_object_from_dict = OrganizationDataObject.from_dict(organization_data_object_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


