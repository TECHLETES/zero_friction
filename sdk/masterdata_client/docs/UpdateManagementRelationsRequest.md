# UpdateManagementRelationsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**management_relations** | [**List[ManagementRelationRequest]**](ManagementRelationRequest.md) |  | [optional]

## Example

```python
from masterdata_client.models.update_management_relations_request import UpdateManagementRelationsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateManagementRelationsRequest from a JSON string
update_management_relations_request_instance = UpdateManagementRelationsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateManagementRelationsRequest.to_json())

# convert the object into a dict
update_management_relations_request_dict = update_management_relations_request_instance.to_dict()
# create an instance of UpdateManagementRelationsRequest from a dict
update_management_relations_request_from_dict = UpdateManagementRelationsRequest.from_dict(update_management_relations_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
