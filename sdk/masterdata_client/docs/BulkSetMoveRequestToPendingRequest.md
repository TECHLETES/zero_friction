# BulkSetMoveRequestToPendingRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**new_status** | [**MoveRequestStatus**](MoveRequestStatus.md) |  | [optional] 
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetMoveRequestsQueryParams**](GetMoveRequestsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_set_move_request_to_pending_request import BulkSetMoveRequestToPendingRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkSetMoveRequestToPendingRequest from a JSON string
bulk_set_move_request_to_pending_request_instance = BulkSetMoveRequestToPendingRequest.from_json(json)
# print the JSON string representation of the object
print(BulkSetMoveRequestToPendingRequest.to_json())

# convert the object into a dict
bulk_set_move_request_to_pending_request_dict = bulk_set_move_request_to_pending_request_instance.to_dict()
# create an instance of BulkSetMoveRequestToPendingRequest from a dict
bulk_set_move_request_to_pending_request_from_dict = BulkSetMoveRequestToPendingRequest.from_dict(bulk_set_move_request_to_pending_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


