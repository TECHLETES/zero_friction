# BulkCreateMutingRuleRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_type** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional] 
**message** | **str** |  | [optional] 
**time_period** | [**MutingRuleTimePeriod**](MutingRuleTimePeriod.md) |  | [optional] 
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetMetersQueryParams**](GetMetersQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from metering_client.models.bulk_create_muting_rule_request import BulkCreateMutingRuleRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkCreateMutingRuleRequest from a JSON string
bulk_create_muting_rule_request_instance = BulkCreateMutingRuleRequest.from_json(json)
# print the JSON string representation of the object
print(BulkCreateMutingRuleRequest.to_json())

# convert the object into a dict
bulk_create_muting_rule_request_dict = bulk_create_muting_rule_request_instance.to_dict()
# create an instance of BulkCreateMutingRuleRequest from a dict
bulk_create_muting_rule_request_from_dict = BulkCreateMutingRuleRequest.from_dict(bulk_create_muting_rule_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


