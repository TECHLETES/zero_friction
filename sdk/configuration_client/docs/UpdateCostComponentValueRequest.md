# UpdateCostComponentValueRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**value** | **float** |  | [optional] 

## Example

```python
from configuration_client.models.update_cost_component_value_request import UpdateCostComponentValueRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCostComponentValueRequest from a JSON string
update_cost_component_value_request_instance = UpdateCostComponentValueRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateCostComponentValueRequest.to_json())

# convert the object into a dict
update_cost_component_value_request_dict = update_cost_component_value_request_instance.to_dict()
# create an instance of UpdateCostComponentValueRequest from a dict
update_cost_component_value_request_from_dict = UpdateCostComponentValueRequest.from_dict(update_cost_component_value_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


