# BaseMeteringValidationRuleDTOConsumptionOutOfBoundsValidationRuleDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**high_consumption_margin** | **float** |  | [optional]
**low_consumption_margin** | **float** |  | [optional]
**error** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional]
**enabled** | **bool** |  | [optional]
**synchronous** | **bool** |  | [optional]
**supported_incrementation_types** | [**List[IncrementationType]**](IncrementationType.md) |  | [optional]

## Example

```python
from configuration_client.models.base_metering_validation_rule_dto_consumption_out_of_bounds_validation_rule_dto import BaseMeteringValidationRuleDTOConsumptionOutOfBoundsValidationRuleDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringValidationRuleDTOConsumptionOutOfBoundsValidationRuleDTO from a JSON string
base_metering_validation_rule_dto_consumption_out_of_bounds_validation_rule_dto_instance = BaseMeteringValidationRuleDTOConsumptionOutOfBoundsValidationRuleDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringValidationRuleDTOConsumptionOutOfBoundsValidationRuleDTO.to_json())

# convert the object into a dict
base_metering_validation_rule_dto_consumption_out_of_bounds_validation_rule_dto_dict = base_metering_validation_rule_dto_consumption_out_of_bounds_validation_rule_dto_instance.to_dict()
# create an instance of BaseMeteringValidationRuleDTOConsumptionOutOfBoundsValidationRuleDTO from a dict
base_metering_validation_rule_dto_consumption_out_of_bounds_validation_rule_dto_from_dict = BaseMeteringValidationRuleDTOConsumptionOutOfBoundsValidationRuleDTO.from_dict(base_metering_validation_rule_dto_consumption_out_of_bounds_validation_rule_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
