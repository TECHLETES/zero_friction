# BaseMeteringIssueResolutionDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resolved_by_user_id** | **str** |  | [optional] 
**new_value** | **float** |  | [optional] 

## Example

```python
from metering_client.models.base_metering_issue_resolution_details_dto import BaseMeteringIssueResolutionDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseMeteringIssueResolutionDetailsDTO from a JSON string
base_metering_issue_resolution_details_dto_instance = BaseMeteringIssueResolutionDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(BaseMeteringIssueResolutionDetailsDTO.to_json())

# convert the object into a dict
base_metering_issue_resolution_details_dto_dict = base_metering_issue_resolution_details_dto_instance.to_dict()
# create an instance of BaseMeteringIssueResolutionDetailsDTO from a dict
base_metering_issue_resolution_details_dto_from_dict = BaseMeteringIssueResolutionDetailsDTO.from_dict(base_metering_issue_resolution_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


