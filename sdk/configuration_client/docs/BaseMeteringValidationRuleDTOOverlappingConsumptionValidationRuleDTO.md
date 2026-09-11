# BaseMeteringValidationRuleDTOOverlappingConsumptionValidationRuleDTO


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
from configuration_client.models.base_metering_validation_rule_dto_overlapping_consumption_validation_rule_dto import BaseMeteringValidationRuleDTOOverlappingConsumptionValidationRuleDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringValidationRuleDTOOverlappingConsumptionValidationRuleDTO from a JSON string
base_metering_validation_rule_dto_overlapping_consumption_validation_rule_dto_instance = BaseMeteringValidationRuleDTOOverlappingConsumptionValidationRuleDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringValidationRuleDTOOverlappingConsumptionValidationRuleDTO.to_json())

# convert the object into a dict
base_metering_validation_rule_dto_overlapping_consumption_validation_rule_dto_dict = base_metering_validation_rule_dto_overlapping_consumption_validation_rule_dto_instance.to_dict()
# create an instance of BaseMeteringValidationRuleDTOOverlappingConsumptionValidationRuleDTO from a dict
base_metering_validation_rule_dto_overlapping_consumption_validation_rule_dto_from_dict = BaseMeteringValidationRuleDTOOverlappingConsumptionValidationRuleDTO.from_dict(base_metering_validation_rule_dto_overlapping_consumption_validation_rule_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


