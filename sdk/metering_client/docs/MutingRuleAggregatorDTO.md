# MutingRuleAggregatorDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**error_type** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional] 
**message** | **str** |  | [optional] 
**time_period** | [**MutingRuleTimePeriod**](MutingRuleTimePeriod.md) |  | [optional] 
**mute_from** | **datetime** |  | [optional] 
**mute_until** | **datetime** |  | [optional] 
**meter_id** | **str** |  | [optional] 
**mute_from_with_numeric_value** | **int** |  | [optional] 
**mute_until_with_numeric_value** | **int** |  | [optional] 
**user_id** | **str** |  | [optional] 
**meter_count** | **int** |  | [optional] 
**meter_serial_number** | **str** |  | [optional] 

## Example

```python
from metering_client.models.muting_rule_aggregator_dto import MutingRuleAggregatorDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MutingRuleAggregatorDTO from a JSON string
muting_rule_aggregator_dto_instance = MutingRuleAggregatorDTO.from_json(json)
# print the JSON string representation of the object
print(MutingRuleAggregatorDTO.to_json())

# convert the object into a dict
muting_rule_aggregator_dto_dict = muting_rule_aggregator_dto_instance.to_dict()
# create an instance of MutingRuleAggregatorDTO from a dict
muting_rule_aggregator_dto_from_dict = MutingRuleAggregatorDTO.from_dict(muting_rule_aggregator_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


