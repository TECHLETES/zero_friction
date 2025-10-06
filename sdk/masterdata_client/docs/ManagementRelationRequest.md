# ManagementRelationRequest

Represents a request to create or update a management relation between entities

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** | The unique identifier of the customer for whom the management relation is being created | [optional] 
**management_relation_type** | [**ManagementRelationType**](ManagementRelationType.md) | The type of management relation being established between the entities | [optional] 

## Example

```python
from masterdata_client.models.management_relation_request import ManagementRelationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ManagementRelationRequest from a JSON string
management_relation_request_instance = ManagementRelationRequest.from_json(json)
# print the JSON string representation of the object
print(ManagementRelationRequest.to_json())

# convert the object into a dict
management_relation_request_dict = management_relation_request_instance.to_dict()
# create an instance of ManagementRelationRequest from a dict
management_relation_request_from_dict = ManagementRelationRequest.from_dict(management_relation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


