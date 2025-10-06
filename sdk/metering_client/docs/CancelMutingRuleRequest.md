# CancelMutingRuleRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_type** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional] 
**meter_ids** | **List[str]** |  | [optional] 

## Example

```python
from metering_client.models.cancel_muting_rule_request import CancelMutingRuleRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CancelMutingRuleRequest from a JSON string
cancel_muting_rule_request_instance = CancelMutingRuleRequest.from_json(json)
# print the JSON string representation of the object
print(CancelMutingRuleRequest.to_json())

# convert the object into a dict
cancel_muting_rule_request_dict = cancel_muting_rule_request_instance.to_dict()
# create an instance of CancelMutingRuleRequest from a dict
cancel_muting_rule_request_from_dict = CancelMutingRuleRequest.from_dict(cancel_muting_rule_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


