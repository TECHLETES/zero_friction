# MeteringIssueReference


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**metering_issue_id** | **str** |  | [optional] 
**error** | [**MeteringIssueError**](MeteringIssueError.md) |  | [optional] 
**status** | [**MeteringIssueStatus**](MeteringIssueStatus.md) |  | [optional] 
**noticed_date_time** | **datetime** |  | [optional] 

## Example

```python
from metering_client.models.metering_issue_reference import MeteringIssueReference

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringIssueReference from a JSON string
metering_issue_reference_instance = MeteringIssueReference.from_json(json)
# print the JSON string representation of the object
print(MeteringIssueReference.to_json())

# convert the object into a dict
metering_issue_reference_dict = metering_issue_reference_instance.to_dict()
# create an instance of MeteringIssueReference from a dict
metering_issue_reference_from_dict = MeteringIssueReference.from_dict(metering_issue_reference_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


