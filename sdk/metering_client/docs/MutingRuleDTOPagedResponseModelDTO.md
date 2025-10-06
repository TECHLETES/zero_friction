# MutingRuleDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[MutingRuleDTO]**](MutingRuleDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from metering_client.models.muting_rule_dto_paged_response_model_dto import MutingRuleDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MutingRuleDTOPagedResponseModelDTO from a JSON string
muting_rule_dto_paged_response_model_dto_instance = MutingRuleDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(MutingRuleDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
muting_rule_dto_paged_response_model_dto_dict = muting_rule_dto_paged_response_model_dto_instance.to_dict()
# create an instance of MutingRuleDTOPagedResponseModelDTO from a dict
muting_rule_dto_paged_response_model_dto_from_dict = MutingRuleDTOPagedResponseModelDTO.from_dict(muting_rule_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


