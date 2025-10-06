# AddressDataObject


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**street_name** | **str** |  | [optional] 
**street_number** | **str** |  | [optional] 
**street_number_addition** | **str** |  | [optional] 
**building_name** | **str** |  | [optional] 
**locality** | **str** |  | [optional] 
**postal_code** | **str** |  | [optional] 
**city** | **str** |  | [optional] 
**country** | [**CountryCode**](CountryCode.md) |  | [optional] 
**show_country** | **bool** |  | [optional] 
**culture** | [**CultureInfo**](CultureInfo.md) |  | [optional] 
**display** | **str** |  | [optional] [readonly] 
**get_lines_formatted_for_country** | **List[str]** |  | [optional] [readonly] 

## Example

```python
from attachments_client.models.address_data_object import AddressDataObject

# TODO update the JSON string below
json = "{}"
# create an instance of AddressDataObject from a JSON string
address_data_object_instance = AddressDataObject.from_json(json)
# print the JSON string representation of the object
print(AddressDataObject.to_json())

# convert the object into a dict
address_data_object_dict = address_data_object_instance.to_dict()
# create an instance of AddressDataObject from a dict
address_data_object_from_dict = AddressDataObject.from_dict(address_data_object_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


