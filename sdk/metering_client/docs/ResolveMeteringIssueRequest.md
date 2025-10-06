# ResolveMeteringIssueRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 
**resolution_value** | **object** |  | [optional] 

## Example

```python
from metering_client.models.resolve_metering_issue_request import ResolveMeteringIssueRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ResolveMeteringIssueRequest from a JSON string
resolve_metering_issue_request_instance = ResolveMeteringIssueRequest.from_json(json)
# print the JSON string representation of the object
print(ResolveMeteringIssueRequest.to_json())

# convert the object into a dict
resolve_metering_issue_request_dict = resolve_metering_issue_request_instance.to_dict()
# create an instance of ResolveMeteringIssueRequest from a dict
resolve_metering_issue_request_from_dict = ResolveMeteringIssueRequest.from_dict(resolve_metering_issue_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


