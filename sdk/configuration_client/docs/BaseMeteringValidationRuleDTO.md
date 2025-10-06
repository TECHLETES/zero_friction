# BaseMeteringValidationRuleDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional] 
**enabled** | **bool** |  | [optional] 

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


