# ContactEntryRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**primary_for_type** | **bool** |  | [optional] 
**contact_type** | [**ContactType**](ContactType.md) |  | [optional] 

## Example

```python
from masterdata_client.models.contact_entry_request import ContactEntryRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ContactEntryRequest from a JSON string
contact_entry_request_instance = ContactEntryRequest.from_json(json)
# print the JSON string representation of the object
print(ContactEntryRequest.to_json())

# convert the object into a dict
contact_entry_request_dict = contact_entry_request_instance.to_dict()
# create an instance of ContactEntryRequest from a dict
contact_entry_request_from_dict = ContactEntryRequest.from_dict(contact_entry_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


