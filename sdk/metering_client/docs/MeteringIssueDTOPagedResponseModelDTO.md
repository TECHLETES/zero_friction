# MeteringIssueDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[MeteringIssueDTO]**](MeteringIssueDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from metering_client.models.metering_issue_dto_paged_response_model_dto import MeteringIssueDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringIssueDTOPagedResponseModelDTO from a JSON string
metering_issue_dto_paged_response_model_dto_instance = MeteringIssueDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringIssueDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
metering_issue_dto_paged_response_model_dto_dict = metering_issue_dto_paged_response_model_dto_instance.to_dict()
# create an instance of MeteringIssueDTOPagedResponseModelDTO from a dict
metering_issue_dto_paged_response_model_dto_from_dict = MeteringIssueDTOPagedResponseModelDTO.from_dict(metering_issue_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


