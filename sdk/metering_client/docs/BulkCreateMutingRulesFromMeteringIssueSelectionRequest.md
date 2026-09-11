# BulkCreateMutingRulesFromMeteringIssueSelectionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**GetMeteringIssuesQueryParams**](GetMeteringIssuesQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]
**time_period** | [**MutingRuleTimePeriod**](MutingRuleTimePeriod.md) |  |
**muting_rule_message** | **str** |  | [optional]
**error_types** | [**List[MeteringIssueError]**](MeteringIssueError.md) |  |

## Example

```python
from metering_client.models.bulk_create_muting_rules_from_metering_issue_selection_request import BulkCreateMutingRulesFromMeteringIssueSelectionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkCreateMutingRulesFromMeteringIssueSelectionRequest from a JSON string
bulk_create_muting_rules_from_metering_issue_selection_request_instance = BulkCreateMutingRulesFromMeteringIssueSelectionRequest.from_json(json)
# print the JSON string representation of the object
print(BulkCreateMutingRulesFromMeteringIssueSelectionRequest.to_json())

# convert the object into a dict
bulk_create_muting_rules_from_metering_issue_selection_request_dict = bulk_create_muting_rules_from_metering_issue_selection_request_instance.to_dict()
# create an instance of BulkCreateMutingRulesFromMeteringIssueSelectionRequest from a dict
bulk_create_muting_rules_from_metering_issue_selection_request_from_dict = BulkCreateMutingRulesFromMeteringIssueSelectionRequest.from_dict(bulk_create_muting_rules_from_metering_issue_selection_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
