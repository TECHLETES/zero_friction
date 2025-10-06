# UpdateCostComponentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.update_cost_component_request import UpdateCostComponentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCostComponentRequest from a JSON string
update_cost_component_request_instance = UpdateCostComponentRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateCostComponentRequest.to_json())

# convert the object into a dict
update_cost_component_request_dict = update_cost_component_request_instance.to_dict()
# create an instance of UpdateCostComponentRequest from a dict
update_cost_component_request_from_dict = UpdateCostComponentRequest.from_dict(update_cost_component_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


