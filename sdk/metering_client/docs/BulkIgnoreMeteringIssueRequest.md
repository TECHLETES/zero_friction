# BulkIgnoreMeteringIssueRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetMeteringIssuesQueryParams**](GetMeteringIssuesQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from metering_client.models.bulk_ignore_metering_issue_request import BulkIgnoreMeteringIssueRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkIgnoreMeteringIssueRequest from a JSON string
bulk_ignore_metering_issue_request_instance = BulkIgnoreMeteringIssueRequest.from_json(json)
# print the JSON string representation of the object
print(BulkIgnoreMeteringIssueRequest.to_json())

# convert the object into a dict
bulk_ignore_metering_issue_request_dict = bulk_ignore_metering_issue_request_instance.to_dict()
# create an instance of BulkIgnoreMeteringIssueRequest from a dict
bulk_ignore_metering_issue_request_from_dict = BulkIgnoreMeteringIssueRequest.from_dict(bulk_ignore_metering_issue_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


