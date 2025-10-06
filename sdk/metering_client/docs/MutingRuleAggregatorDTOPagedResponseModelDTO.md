# MutingRuleAggregatorDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[MutingRuleAggregatorDTO]**](MutingRuleAggregatorDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from metering_client.models.muting_rule_aggregator_dto_paged_response_model_dto import MutingRuleAggregatorDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MutingRuleAggregatorDTOPagedResponseModelDTO from a JSON string
muting_rule_aggregator_dto_paged_response_model_dto_instance = MutingRuleAggregatorDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(MutingRuleAggregatorDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
muting_rule_aggregator_dto_paged_response_model_dto_dict = muting_rule_aggregator_dto_paged_response_model_dto_instance.to_dict()
# create an instance of MutingRuleAggregatorDTOPagedResponseModelDTO from a dict
muting_rule_aggregator_dto_paged_response_model_dto_from_dict = MutingRuleAggregatorDTOPagedResponseModelDTO.from_dict(muting_rule_aggregator_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


