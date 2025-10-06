# SetMoveRequestToPendingRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**new_status** | [**MoveRequestStatus**](MoveRequestStatus.md) |  | [optional] 

## Example

```python
from masterdata_client.models.set_move_request_to_pending_request import SetMoveRequestToPendingRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SetMoveRequestToPendingRequest from a JSON string
set_move_request_to_pending_request_instance = SetMoveRequestToPendingRequest.from_json(json)
# print the JSON string representation of the object
print(SetMoveRequestToPendingRequest.to_json())

# convert the object into a dict
set_move_request_to_pending_request_dict = set_move_request_to_pending_request_instance.to_dict()
# create an instance of SetMoveRequestToPendingRequest from a dict
set_move_request_to_pending_request_from_dict = SetMoveRequestToPendingRequest.from_dict(set_move_request_to_pending_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


