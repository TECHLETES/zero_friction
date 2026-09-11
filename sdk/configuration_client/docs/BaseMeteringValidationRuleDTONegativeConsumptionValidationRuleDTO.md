# BaseMeteringValidationRuleDTONegativeConsumptionValidationRuleDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**error** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional] 
**enabled** | **bool** |  | [optional] 
**synchronous** | **bool** |  | [optional] 
**supported_incrementation_types** | [**List[IncrementationType]**](IncrementationType.md) |  | [optional] 

## Example

```python
from configuration_client.models.base_metering_validation_rule_dto_negative_consumption_validation_rule_dto import BaseMeteringValidationRuleDTONegativeConsumptionValidationRuleDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringValidationRuleDTONegativeConsumptionValidationRuleDTO from a JSON string
base_metering_validation_rule_dto_negative_consumption_validation_rule_dto_instance = BaseMeteringValidationRuleDTONegativeConsumptionValidationRuleDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringValidationRuleDTONegativeConsumptionValidationRuleDTO.to_json())

# convert the object into a dict
base_metering_validation_rule_dto_negative_consumption_validation_rule_dto_dict = base_metering_validation_rule_dto_negative_consumption_validation_rule_dto_instance.to_dict()
# create an instance of BaseMeteringValidationRuleDTONegativeConsumptionValidationRuleDTO from a dict
base_metering_validation_rule_dto_negative_consumption_validation_rule_dto_from_dict = BaseMeteringValidationRuleDTONegativeConsumptionValidationRuleDTO.from_dict(base_metering_validation_rule_dto_negative_consumption_validation_rule_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


