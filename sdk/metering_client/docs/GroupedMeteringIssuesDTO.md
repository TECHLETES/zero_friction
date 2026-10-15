# GroupedMeteringIssuesDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meter** | [**MeterReference**](MeterReference.md) |  | [optional] 
**issue_count** | **int** |  | [optional] 
**first_issue_date** | **datetime** |  | [optional] 
**last_issue_date** | **datetime** |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

## Example

```python
from metering_client.models.grouped_metering_issues_dto import GroupedMeteringIssuesDTO

# TODO update the JSON string below
json = "{}"
# create an instance of GroupedMeteringIssuesDTO from a JSON string
grouped_metering_issues_dto_instance = GroupedMeteringIssuesDTO.from_json(json)
# print the JSON string representation of the object
print(GroupedMeteringIssuesDTO.to_json())

# convert the object into a dict
grouped_metering_issues_dto_dict = grouped_metering_issues_dto_instance.to_dict()
# create an instance of GroupedMeteringIssuesDTO from a dict
grouped_metering_issues_dto_from_dict = GroupedMeteringIssuesDTO.from_dict(grouped_metering_issues_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


