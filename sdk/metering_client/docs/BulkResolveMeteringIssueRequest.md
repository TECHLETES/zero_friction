# BulkResolveMeteringIssueRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 
**resolution_value** | **object** |  | [optional] 
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetMeteringIssuesQueryParams**](GetMeteringIssuesQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from metering_client.models.bulk_resolve_metering_issue_request import BulkResolveMeteringIssueRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkResolveMeteringIssueRequest from a JSON string
bulk_resolve_metering_issue_request_instance = BulkResolveMeteringIssueRequest.from_json(json)
# print the JSON string representation of the object
print(BulkResolveMeteringIssueRequest.to_json())

# convert the object into a dict
bulk_resolve_metering_issue_request_dict = bulk_resolve_metering_issue_request_instance.to_dict()
# create an instance of BulkResolveMeteringIssueRequest from a dict
bulk_resolve_metering_issue_request_from_dict = BulkResolveMeteringIssueRequest.from_dict(bulk_resolve_metering_issue_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


