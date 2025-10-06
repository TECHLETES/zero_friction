# AddressDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**street_name** | **str** |  | [optional] 
**street_number** | **str** |  | [optional] 
**street_number_addition** | **str** |  | [optional] 
**postal_code** | **str** |  | [optional] 
**building_name** | **str** |  | [optional] 
**locality** | **str** |  | [optional] 
**city** | **str** |  | [optional] 
**country** | [**CountryCode**](CountryCode.md) |  | [optional] 
**localized_display** | **str** |  | [optional] 
**line_one** | **str** |  | [optional] 
**line_two** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.address_dto import AddressDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AddressDTO from a JSON string
address_dto_instance = AddressDTO.from_json(json)
# print the JSON string representation of the object
print(AddressDTO.to_json())

# convert the object into a dict
address_dto_dict = address_dto_instance.to_dict()
# create an instance of AddressDTO from a dict
address_dto_from_dict = AddressDTO.from_dict(address_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


