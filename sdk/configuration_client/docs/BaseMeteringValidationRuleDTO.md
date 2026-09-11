# BaseMeteringValidationRuleDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  |
**grace_period_in_days** | **int** |  | [optional]
**error** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional]
**enabled** | **bool** |  | [optional]
**synchronous** | **bool** |  | [optional]
**supported_incrementation_types** | [**List[IncrementationType]**](IncrementationType.md) |  | [optional]
**evaluation_window_days** | **int** |  | [optional]
**grace_days_before_supply_start** | **int** |  | [optional]
**grace_days_after_supply_end** | **int** |  | [optional]
**maximum_allowed_consumption** | **float** |  | [optional]
**high_consumption_margin** | **float** |  | [optional]
**low_consumption_margin** | **float** |  | [optional]
**min_expected_days** | **int** |  | [optional]
**consumption_threshold** | **float** |  | [optional]
**grace_days_after_supply_start** | **int** |  | [optional]
**grace_days_before_supply_end** | **int** |  | [optional]
**auto_solve** | **bool** |  | [optional]
**minimum_gap_duration** | **str** |  | [optional]

## Example

```python
from configuration_client.models.base_metering_validation_rule_dto import BaseMeteringValidationRuleDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringValidationRuleDTO from a JSON string
base_metering_validation_rule_dto_instance = BaseMeteringValidationRuleDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringValidationRuleDTO.to_json())

# convert the object into a dict
base_metering_validation_rule_dto_dict = base_metering_validation_rule_dto_instance.to_dict()
# create an instance of BaseMeteringValidationRuleDTO from a dict
base_metering_validation_rule_dto_from_dict = BaseMeteringValidationRuleDTO.from_dict(base_metering_validation_rule_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
