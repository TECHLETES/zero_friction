# BaseBankStatementMatchingRuleDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  |
**kind** | **str** |  | [optional]
**enabled** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.base_bank_statement_matching_rule_dto import BaseBankStatementMatchingRuleDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseBankStatementMatchingRuleDTO from a JSON string
base_bank_statement_matching_rule_dto_instance = BaseBankStatementMatchingRuleDTO.from_json(json)
# print the JSON string representation of the object
print(BaseBankStatementMatchingRuleDTO.to_json())

# convert the object into a dict
base_bank_statement_matching_rule_dto_dict = base_bank_statement_matching_rule_dto_instance.to_dict()
# create an instance of BaseBankStatementMatchingRuleDTO from a dict
base_bank_statement_matching_rule_dto_from_dict = BaseBankStatementMatchingRuleDTO.from_dict(base_bank_statement_matching_rule_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
