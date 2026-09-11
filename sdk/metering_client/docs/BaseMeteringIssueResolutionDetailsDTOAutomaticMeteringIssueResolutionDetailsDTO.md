# BaseMeteringIssueResolutionDetailsDTOAutomaticMeteringIssueResolutionDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**resolved_reason** | [**MeteringIssueResolutionReason**](MeteringIssueResolutionReason.md) |  | [optional]
**resolved_by_user_id** | **str** |  | [optional]
**new_value** | **float** |  | [optional]

## Example

```python
from metering_client.models.base_metering_issue_resolution_details_dto_automatic_metering_issue_resolution_details_dto import BaseMeteringIssueResolutionDetailsDTOAutomaticMeteringIssueResolutionDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringIssueResolutionDetailsDTOAutomaticMeteringIssueResolutionDetailsDTO from a JSON string
base_metering_issue_resolution_details_dto_automatic_metering_issue_resolution_details_dto_instance = BaseMeteringIssueResolutionDetailsDTOAutomaticMeteringIssueResolutionDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringIssueResolutionDetailsDTOAutomaticMeteringIssueResolutionDetailsDTO.to_json())

# convert the object into a dict
base_metering_issue_resolution_details_dto_automatic_metering_issue_resolution_details_dto_dict = base_metering_issue_resolution_details_dto_automatic_metering_issue_resolution_details_dto_instance.to_dict()
# create an instance of BaseMeteringIssueResolutionDetailsDTOAutomaticMeteringIssueResolutionDetailsDTO from a dict
base_metering_issue_resolution_details_dto_automatic_metering_issue_resolution_details_dto_from_dict = BaseMeteringIssueResolutionDetailsDTOAutomaticMeteringIssueResolutionDetailsDTO.from_dict(base_metering_issue_resolution_details_dto_automatic_metering_issue_resolution_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
