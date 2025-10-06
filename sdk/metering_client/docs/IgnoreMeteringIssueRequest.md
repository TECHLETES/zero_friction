# IgnoreMeteringIssueRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 

## Example

```python
from metering_client.models.ignore_metering_issue_request import IgnoreMeteringIssueRequest

# TODO update the JSON string below
json = "{}"
# create an instance of IgnoreMeteringIssueRequest from a JSON string
ignore_metering_issue_request_instance = IgnoreMeteringIssueRequest.from_json(json)
# print the JSON string representation of the object
print(IgnoreMeteringIssueRequest.to_json())

# convert the object into a dict
ignore_metering_issue_request_dict = ignore_metering_issue_request_instance.to_dict()
# create an instance of IgnoreMeteringIssueRequest from a dict
ignore_metering_issue_request_from_dict = IgnoreMeteringIssueRequest.from_dict(ignore_metering_issue_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


