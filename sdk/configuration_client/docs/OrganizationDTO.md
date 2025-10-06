# OrganizationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**automatic_processing_enabled** | **bool** |  | [optional] 
**migration_mode** | **bool** |  | [optional] 
**code** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
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
**time_zone** | **str** |  | [optional] 
**culture** | [**CultureInfo**](CultureInfo.md) | We add culture here, and not the default culture of the language table, as this one is used  for currencies and number formats etc | [optional] 
**manually_set_customer_number** | **bool** |  | [optional] 
**manually_set_contract_number** | **bool** |  | [optional] 
**marked_for_deletion** | **bool** |  | [optional] 
**originally_enabled** | **bool** |  | [optional] 
**features** | [**FeatureSettingsDTO**](FeatureSettingsDTO.md) |  | [optional] 

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


