# ContactEntryDTO

Represents a contact entry for a customer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contact_type** | [**ContactType**](ContactType.md) | Type of contact information | [optional] 
**value** | **str** | The actual contact value | [optional] 
**description** | **str** | Description of the contact entry | [optional] 
**primary_for_type** | **bool** | Indicates whether this is the primary contact method for its type | [optional] 

## Example

```python
from masterdata_client.models.contact_entry_dto import ContactEntryDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContactEntryDTO from a JSON string
contact_entry_dto_instance = ContactEntryDTO.from_json(json)
# print the JSON string representation of the object
print(ContactEntryDTO.to_json())

# convert the object into a dict
contact_entry_dto_dict = contact_entry_dto_instance.to_dict()
# create an instance of ContactEntryDTO from a dict
contact_entry_dto_from_dict = ContactEntryDTO.from_dict(contact_entry_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


