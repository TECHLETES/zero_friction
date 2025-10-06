# MutingRuleOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **int** |  | [optional] 
**expired** | **int** |  | [optional] 

## Example

```python
from metering_client.models.muting_rule_overview_count_dto import MutingRuleOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MutingRuleOverviewCountDTO from a JSON string
muting_rule_overview_count_dto_instance = MutingRuleOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(MutingRuleOverviewCountDTO.to_json())

# convert the object into a dict
muting_rule_overview_count_dto_dict = muting_rule_overview_count_dto_instance.to_dict()
# create an instance of MutingRuleOverviewCountDTO from a dict
muting_rule_overview_count_dto_from_dict = MutingRuleOverviewCountDTO.from_dict(muting_rule_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


