# CostComponentValueRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**existing_id** | **str** |  | [optional]
**start_date_time** | **datetime** |  | [optional]
**end_date_time** | **datetime** |  |
**value** | **float** |  |
**date_range** | **object** |  | [optional]

## Example

```python
from configuration_client.models.cost_component_value_request import CostComponentValueRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CostComponentValueRequest from a JSON string
cost_component_value_request_instance = CostComponentValueRequest.from_json(json)
# print the JSON string representation of the object
print(CostComponentValueRequest.to_json())

# convert the object into a dict
cost_component_value_request_dict = cost_component_value_request_instance.to_dict()
# create an instance of CostComponentValueRequest from a dict
cost_component_value_request_from_dict = CostComponentValueRequest.from_dict(cost_component_value_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
