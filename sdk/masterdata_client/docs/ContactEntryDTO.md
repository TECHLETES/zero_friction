# ContactEntryDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contact_type** | [**ContactType**](ContactType.md) |  | [optional] 
**value** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**primary_for_type** | **bool** |  | [optional] 

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


