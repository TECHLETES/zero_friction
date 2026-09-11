# CreateOrUpdateCostComponentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  |
**description** | **str** |  |
**cost_component_values** | [**List[CostComponentValueRequest]**](CostComponentValueRequest.md) |  | [optional]

## Example

```python
from configuration_client.models.create_or_update_cost_component_request import CreateOrUpdateCostComponentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateOrUpdateCostComponentRequest from a JSON string
create_or_update_cost_component_request_instance = CreateOrUpdateCostComponentRequest.from_json(json)
# print the JSON string representation of the object
print(CreateOrUpdateCostComponentRequest.to_json())

# convert the object into a dict
create_or_update_cost_component_request_dict = create_or_update_cost_component_request_instance.to_dict()
# create an instance of CreateOrUpdateCostComponentRequest from a dict
create_or_update_cost_component_request_from_dict = CreateOrUpdateCostComponentRequest.from_dict(create_or_update_cost_component_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
