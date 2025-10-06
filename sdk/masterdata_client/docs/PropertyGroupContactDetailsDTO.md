# PropertyGroupContactDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email_address** | **str** |  | [optional] 
**telephone** | **str** |  | [optional] 
**website** | **str** |  | [optional] 
**telephone_interruptions** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.property_group_contact_details_dto import PropertyGroupContactDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupContactDetailsDTO from a JSON string
property_group_contact_details_dto_instance = PropertyGroupContactDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupContactDetailsDTO.to_json())

# convert the object into a dict
property_group_contact_details_dto_dict = property_group_contact_details_dto_instance.to_dict()
# create an instance of PropertyGroupContactDetailsDTO from a dict
property_group_contact_details_dto_from_dict = PropertyGroupContactDetailsDTO.from_dict(property_group_contact_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


