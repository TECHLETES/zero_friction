# BulkSetMoveRequestToNew


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetMoveRequestsQueryParams**](GetMoveRequestsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_set_move_request_to_new import BulkSetMoveRequestToNew

# TODO update the JSON string below
json = "{}"
# create an instance of BulkSetMoveRequestToNew from a JSON string
bulk_set_move_request_to_new_instance = BulkSetMoveRequestToNew.from_json(json)
# print the JSON string representation of the object
print(BulkSetMoveRequestToNew.to_json())

# convert the object into a dict
bulk_set_move_request_to_new_dict = bulk_set_move_request_to_new_instance.to_dict()
# create an instance of BulkSetMoveRequestToNew from a dict
bulk_set_move_request_to_new_from_dict = BulkSetMoveRequestToNew.from_dict(bulk_set_move_request_to_new_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


