# BaseMeteringValidationRuleDTOUncontractedConsumptionValidationRuleDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**evaluation_window_days** | **int** |  | [optional]
**grace_days_before_supply_start** | **int** |  | [optional]
**grace_days_after_supply_end** | **int** |  | [optional]
**maximum_allowed_consumption** | **float** |  | [optional]
**error** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional]
**enabled** | **bool** |  | [optional]
**synchronous** | **bool** |  | [optional]
**supported_incrementation_types** | [**List[IncrementationType]**](IncrementationType.md) |  | [optional]

## Example

```python
from configuration_client.models.base_metering_validation_rule_dto_uncontracted_consumption_validation_rule_dto import BaseMeteringValidationRuleDTOUncontractedConsumptionValidationRuleDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringValidationRuleDTOUncontractedConsumptionValidationRuleDTO from a JSON string
base_metering_validation_rule_dto_uncontracted_consumption_validation_rule_dto_instance = BaseMeteringValidationRuleDTOUncontractedConsumptionValidationRuleDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringValidationRuleDTOUncontractedConsumptionValidationRuleDTO.to_json())

# convert the object into a dict
base_metering_validation_rule_dto_uncontracted_consumption_validation_rule_dto_dict = base_metering_validation_rule_dto_uncontracted_consumption_validation_rule_dto_instance.to_dict()
# create an instance of BaseMeteringValidationRuleDTOUncontractedConsumptionValidationRuleDTO from a dict
base_metering_validation_rule_dto_uncontracted_consumption_validation_rule_dto_from_dict = BaseMeteringValidationRuleDTOUncontractedConsumptionValidationRuleDTO.from_dict(base_metering_validation_rule_dto_uncontracted_consumption_validation_rule_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
