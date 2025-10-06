# UpdatePropertyGroupRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**type** | [**PropertyGroupType**](PropertyGroupType.md) |  | [optional] 
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.update_property_group_request import UpdatePropertyGroupRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePropertyGroupRequest from a JSON string
update_property_group_request_instance = UpdatePropertyGroupRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePropertyGroupRequest.to_json())

# convert the object into a dict
update_property_group_request_dict = update_property_group_request_instance.to_dict()
# create an instance of UpdatePropertyGroupRequest from a dict
update_property_group_request_from_dict = UpdatePropertyGroupRequest.from_dict(update_property_group_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


