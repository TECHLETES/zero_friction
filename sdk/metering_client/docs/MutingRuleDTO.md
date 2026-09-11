# MutingRuleDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_type** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional]
**message** | **str** |  | [optional]
**time_period** | [**MutingRuleTimePeriod**](MutingRuleTimePeriod.md) |  | [optional]
**mute_from** | **datetime** |  | [optional]
**mute_until** | **datetime** |  | [optional]
**meter_id** | **str** |  | [optional]
**mute_from_with_numeric_value** | **int** |  | [optional]
**mute_until_with_numeric_value** | **int** |  | [optional]
**user_id** | **str** |  | [optional]
**organisation_id** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from metering_client.models.muting_rule_dto import MutingRuleDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MutingRuleDTO from a JSON string
muting_rule_dto_instance = MutingRuleDTO.from_json(json)
# print the JSON string representation of the object
print(MutingRuleDTO.to_json())

# convert the object into a dict
muting_rule_dto_dict = muting_rule_dto_instance.to_dict()
# create an instance of MutingRuleDTO from a dict
muting_rule_dto_from_dict = MutingRuleDTO.from_dict(muting_rule_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
