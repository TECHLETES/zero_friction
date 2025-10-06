# MeteringIssueResolutionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resolved_date_time** | **datetime** |  | [optional] 
**type** | [**MeteringIssueResolutionType**](MeteringIssueResolutionType.md) |  | [optional] 
**details** | [**BaseMeteringIssueResolutionDetailsDTO**](BaseMeteringIssueResolutionDetailsDTO.md) |  | [optional] 

## Example

```python
from metering_client.models.metering_issue_resolution_dto import MeteringIssueResolutionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringIssueResolutionDTO from a JSON string
metering_issue_resolution_dto_instance = MeteringIssueResolutionDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringIssueResolutionDTO.to_json())

# convert the object into a dict
metering_issue_resolution_dto_dict = metering_issue_resolution_dto_instance.to_dict()
# create an instance of MeteringIssueResolutionDTO from a dict
metering_issue_resolution_dto_from_dict = MeteringIssueResolutionDTO.from_dict(metering_issue_resolution_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


