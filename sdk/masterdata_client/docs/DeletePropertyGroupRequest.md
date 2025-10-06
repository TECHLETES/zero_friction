# DeletePropertyGroupRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mutation_date_time** | **datetime** |  | [optional] 

## Example

```python
from masterdata_client.models.delete_property_group_request import DeletePropertyGroupRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DeletePropertyGroupRequest from a JSON string
delete_property_group_request_instance = DeletePropertyGroupRequest.from_json(json)
# print the JSON string representation of the object
print(DeletePropertyGroupRequest.to_json())

# convert the object into a dict
delete_property_group_request_dict = delete_property_group_request_instance.to_dict()
# create an instance of DeletePropertyGroupRequest from a dict
delete_property_group_request_from_dict = DeletePropertyGroupRequest.from_dict(delete_property_group_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


