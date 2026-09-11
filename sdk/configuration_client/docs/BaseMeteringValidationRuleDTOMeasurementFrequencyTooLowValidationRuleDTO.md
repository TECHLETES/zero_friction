# BaseMeteringValidationRuleDTOMeasurementFrequencyTooLowValidationRuleDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**grace_period_in_days** | **int** |  | [optional]
**error** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional]
**enabled** | **bool** |  | [optional]
**synchronous** | **bool** |  | [optional]
**supported_incrementation_types** | [**List[IncrementationType]**](IncrementationType.md) |  | [optional]

## Example

```python
from configuration_client.models.base_metering_validation_rule_dto_measurement_frequency_too_low_validation_rule_dto import BaseMeteringValidationRuleDTOMeasurementFrequencyTooLowValidationRuleDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringValidationRuleDTOMeasurementFrequencyTooLowValidationRuleDTO from a JSON string
base_metering_validation_rule_dto_measurement_frequency_too_low_validation_rule_dto_instance = BaseMeteringValidationRuleDTOMeasurementFrequencyTooLowValidationRuleDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringValidationRuleDTOMeasurementFrequencyTooLowValidationRuleDTO.to_json())

# convert the object into a dict
base_metering_validation_rule_dto_measurement_frequency_too_low_validation_rule_dto_dict = base_metering_validation_rule_dto_measurement_frequency_too_low_validation_rule_dto_instance.to_dict()
# create an instance of BaseMeteringValidationRuleDTOMeasurementFrequencyTooLowValidationRuleDTO from a dict
base_metering_validation_rule_dto_measurement_frequency_too_low_validation_rule_dto_from_dict = BaseMeteringValidationRuleDTOMeasurementFrequencyTooLowValidationRuleDTO.from_dict(base_metering_validation_rule_dto_measurement_frequency_too_low_validation_rule_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
