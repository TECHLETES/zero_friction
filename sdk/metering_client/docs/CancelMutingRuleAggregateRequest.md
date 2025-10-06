# CancelMutingRuleAggregateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_type** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional] 
**message** | **str** |  | [optional] 
**time_period** | [**MutingRuleTimePeriod**](MutingRuleTimePeriod.md) |  | [optional] 
**mute_from_with_numeric_value** | **int** |  | [optional] 
**mute_until_with_numeric_value** | **int** |  | [optional] 
**user_id** | **str** |  | [optional] 

## Example

```python
from metering_client.models.cancel_muting_rule_aggregate_request import CancelMutingRuleAggregateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CancelMutingRuleAggregateRequest from a JSON string
cancel_muting_rule_aggregate_request_instance = CancelMutingRuleAggregateRequest.from_json(json)
# print the JSON string representation of the object
print(CancelMutingRuleAggregateRequest.to_json())

# convert the object into a dict
cancel_muting_rule_aggregate_request_dict = cancel_muting_rule_aggregate_request_instance.to_dict()
# create an instance of CancelMutingRuleAggregateRequest from a dict
cancel_muting_rule_aggregate_request_from_dict = CancelMutingRuleAggregateRequest.from_dict(cancel_muting_rule_aggregate_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


