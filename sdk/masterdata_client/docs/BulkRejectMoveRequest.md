# BulkRejectMoveRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetMoveRequestsQueryParams**](GetMoveRequestsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_reject_move_request import BulkRejectMoveRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkRejectMoveRequest from a JSON string
bulk_reject_move_request_instance = BulkRejectMoveRequest.from_json(json)
# print the JSON string representation of the object
print(BulkRejectMoveRequest.to_json())

# convert the object into a dict
bulk_reject_move_request_dict = bulk_reject_move_request_instance.to_dict()
# create an instance of BulkRejectMoveRequest from a dict
bulk_reject_move_request_from_dict = BulkRejectMoveRequest.from_dict(bulk_reject_move_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


