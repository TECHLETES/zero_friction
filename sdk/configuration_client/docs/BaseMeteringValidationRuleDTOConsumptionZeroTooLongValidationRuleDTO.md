# BaseMeteringValidationRuleDTOConsumptionZeroTooLongValidationRuleDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**evaluation_window_days** | **int** |  | [optional] 
**min_expected_days** | **int** |  | [optional] 
**consumption_threshold** | **float** |  | [optional] 
**grace_days_after_supply_start** | **int** |  | [optional] 
**grace_days_before_supply_end** | **int** |  | [optional] 
**error** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional] 
**enabled** | **bool** |  | [optional] 
**synchronous** | **bool** |  | [optional] 
**supported_incrementation_types** | [**List[IncrementationType]**](IncrementationType.md) |  | [optional] 

## Example

```python
from configuration_client.models.base_metering_validation_rule_dto_consumption_zero_too_long_validation_rule_dto import BaseMeteringValidationRuleDTOConsumptionZeroTooLongValidationRuleDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringValidationRuleDTOConsumptionZeroTooLongValidationRuleDTO from a JSON string
base_metering_validation_rule_dto_consumption_zero_too_long_validation_rule_dto_instance = BaseMeteringValidationRuleDTOConsumptionZeroTooLongValidationRuleDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringValidationRuleDTOConsumptionZeroTooLongValidationRuleDTO.to_json())

# convert the object into a dict
base_metering_validation_rule_dto_consumption_zero_too_long_validation_rule_dto_dict = base_metering_validation_rule_dto_consumption_zero_too_long_validation_rule_dto_instance.to_dict()
# create an instance of BaseMeteringValidationRuleDTOConsumptionZeroTooLongValidationRuleDTO from a dict
base_metering_validation_rule_dto_consumption_zero_too_long_validation_rule_dto_from_dict = BaseMeteringValidationRuleDTOConsumptionZeroTooLongValidationRuleDTO.from_dict(base_metering_validation_rule_dto_consumption_zero_too_long_validation_rule_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


