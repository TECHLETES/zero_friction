# BaseMeteringValidationRuleDTOMissingMeterResetValidationRuleDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**auto_solve** | **bool** |  | [optional] 
**error** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional] 
**enabled** | **bool** |  | [optional] 
**synchronous** | **bool** |  | [optional] 
**supported_incrementation_types** | [**List[IncrementationType]**](IncrementationType.md) |  | [optional] 

## Example

```python
from configuration_client.models.base_metering_validation_rule_dto_missing_meter_reset_validation_rule_dto import BaseMeteringValidationRuleDTOMissingMeterResetValidationRuleDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringValidationRuleDTOMissingMeterResetValidationRuleDTO from a JSON string
base_metering_validation_rule_dto_missing_meter_reset_validation_rule_dto_instance = BaseMeteringValidationRuleDTOMissingMeterResetValidationRuleDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringValidationRuleDTOMissingMeterResetValidationRuleDTO.to_json())

# convert the object into a dict
base_metering_validation_rule_dto_missing_meter_reset_validation_rule_dto_dict = base_metering_validation_rule_dto_missing_meter_reset_validation_rule_dto_instance.to_dict()
# create an instance of BaseMeteringValidationRuleDTOMissingMeterResetValidationRuleDTO from a dict
base_metering_validation_rule_dto_missing_meter_reset_validation_rule_dto_from_dict = BaseMeteringValidationRuleDTOMissingMeterResetValidationRuleDTO.from_dict(base_metering_validation_rule_dto_missing_meter_reset_validation_rule_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


