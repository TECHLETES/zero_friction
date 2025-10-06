# MeteringIssueOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all** | **int** |  | [optional] 
**unresolved** | **int** |  | [optional] 

## Example

```python
from metering_client.models.metering_issue_overview_count_dto import MeteringIssueOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringIssueOverviewCountDTO from a JSON string
metering_issue_overview_count_dto_instance = MeteringIssueOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringIssueOverviewCountDTO.to_json())

# convert the object into a dict
metering_issue_overview_count_dto_dict = metering_issue_overview_count_dto_instance.to_dict()
# create an instance of MeteringIssueOverviewCountDTO from a dict
metering_issue_overview_count_dto_from_dict = MeteringIssueOverviewCountDTO.from_dict(metering_issue_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


