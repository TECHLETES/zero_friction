# MeteringIssueSelectionSummaryDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issue_count** | **int** |  | [optional]
**meter_count** | **int** |  | [optional]
**error_types** | [**List[MeteringIssueErrorTypeSummaryDTO]**](MeteringIssueErrorTypeSummaryDTO.md) |  | [optional]

## Example

```python
from metering_client.models.metering_issue_selection_summary_dto import MeteringIssueSelectionSummaryDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringIssueSelectionSummaryDTO from a JSON string
metering_issue_selection_summary_dto_instance = MeteringIssueSelectionSummaryDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringIssueSelectionSummaryDTO.to_json())

# convert the object into a dict
metering_issue_selection_summary_dto_dict = metering_issue_selection_summary_dto_instance.to_dict()
# create an instance of MeteringIssueSelectionSummaryDTO from a dict
metering_issue_selection_summary_dto_from_dict = MeteringIssueSelectionSummaryDTO.from_dict(metering_issue_selection_summary_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
