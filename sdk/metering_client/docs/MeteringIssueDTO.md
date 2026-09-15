# MeteringIssueDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meter** | [**MeterReference**](MeterReference.md) |  | [optional] 
**property_group** | [**PropertyGroupReferenceDTO**](PropertyGroupReferenceDTO.md) |  | [optional] 
**meter_model_id** | **str** |  | [optional] 
**noticed_date_time** | **datetime** |  | [optional] 
**error** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional] 
**status** | [**MeteringIssueStatus**](MeteringIssueStatus.md) |  | [optional] 
**details** | [**BaseMeteringIssueDetailsDTO**](BaseMeteringIssueDetailsDTO.md) |  | [optional] 
**resolution** | [**MeteringIssueResolutionDTO**](MeteringIssueResolutionDTO.md) |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

## Example

```python
from metering_client.models.metering_issue_dto import MeteringIssueDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringIssueDTO from a JSON string
metering_issue_dto_instance = MeteringIssueDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringIssueDTO.to_json())

# convert the object into a dict
metering_issue_dto_dict = metering_issue_dto_instance.to_dict()
# create an instance of MeteringIssueDTO from a dict
metering_issue_dto_from_dict = MeteringIssueDTO.from_dict(metering_issue_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


