# GroupedMeteringIssuesDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[GroupedMeteringIssuesDTO]**](GroupedMeteringIssuesDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from metering_client.models.grouped_metering_issues_dto_paged_response_model_dto import GroupedMeteringIssuesDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of GroupedMeteringIssuesDTOPagedResponseModelDTO from a JSON string
grouped_metering_issues_dto_paged_response_model_dto_instance = GroupedMeteringIssuesDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(GroupedMeteringIssuesDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
grouped_metering_issues_dto_paged_response_model_dto_dict = grouped_metering_issues_dto_paged_response_model_dto_instance.to_dict()
# create an instance of GroupedMeteringIssuesDTOPagedResponseModelDTO from a dict
grouped_metering_issues_dto_paged_response_model_dto_from_dict = GroupedMeteringIssuesDTOPagedResponseModelDTO.from_dict(grouped_metering_issues_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


