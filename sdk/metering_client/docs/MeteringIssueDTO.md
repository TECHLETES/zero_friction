# MeteringIssueDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**meter** | [**MeterReference**](MeterReference.md) |  | [optional] 
**property_group** | [**PropertyGroupReferenceDTO**](PropertyGroupReferenceDTO.md) |  | [optional] 
**meter_model_id** | **str** |  | [optional] 
**noticed_date_time** | **datetime** |  | [optional] 
**error** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional] 
**status** | [**MeteringIssueStatus**](MeteringIssueStatus.md) |  | [optional] 
**details** | **object** |  | [optional] 
**resolution** | [**MeteringIssueResolutionDTO**](MeteringIssueResolutionDTO.md) |  | [optional] 

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


