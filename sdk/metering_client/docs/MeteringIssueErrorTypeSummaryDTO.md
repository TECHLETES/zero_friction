# MeteringIssueErrorTypeSummaryDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**error_type** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional] 
**issue_count** | **int** |  | [optional] 
**meter_count** | **int** |  | [optional] 

## Example

```python
from metering_client.models.metering_issue_error_type_summary_dto import MeteringIssueErrorTypeSummaryDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringIssueErrorTypeSummaryDTO from a JSON string
metering_issue_error_type_summary_dto_instance = MeteringIssueErrorTypeSummaryDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringIssueErrorTypeSummaryDTO.to_json())

# convert the object into a dict
metering_issue_error_type_summary_dto_dict = metering_issue_error_type_summary_dto_instance.to_dict()
# create an instance of MeteringIssueErrorTypeSummaryDTO from a dict
metering_issue_error_type_summary_dto_from_dict = MeteringIssueErrorTypeSummaryDTO.from_dict(metering_issue_error_type_summary_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


