# CreatePropertyGroupRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**type** | [**PropertyGroupType**](PropertyGroupType.md) |  | [optional] 
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**management_relations** | [**List[ManagementRelationRequest]**](ManagementRelationRequest.md) |  | [optional] 
**service_locations** | **List[str]** |  | [optional] 

## Example

```python
from masterdata_client.models.create_property_group_request import CreatePropertyGroupRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreatePropertyGroupRequest from a JSON string
create_property_group_request_instance = CreatePropertyGroupRequest.from_json(json)
# print the JSON string representation of the object
print(CreatePropertyGroupRequest.to_json())

# convert the object into a dict
create_property_group_request_dict = create_property_group_request_instance.to_dict()
# create an instance of CreatePropertyGroupRequest from a dict
create_property_group_request_from_dict = CreatePropertyGroupRequest.from_dict(create_property_group_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


