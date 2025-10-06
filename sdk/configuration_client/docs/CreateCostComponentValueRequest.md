# CreateCostComponentValueRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cost_component_id** | **str** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**value** | **float** |  | [optional] 

## Example

```python
from configuration_client.models.create_cost_component_value_request import CreateCostComponentValueRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateCostComponentValueRequest from a JSON string
create_cost_component_value_request_instance = CreateCostComponentValueRequest.from_json(json)
# print the JSON string representation of the object
print(CreateCostComponentValueRequest.to_json())

# convert the object into a dict
create_cost_component_value_request_dict = create_cost_component_value_request_instance.to_dict()
# create an instance of CreateCostComponentValueRequest from a dict
create_cost_component_value_request_from_dict = CreateCostComponentValueRequest.from_dict(create_cost_component_value_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


