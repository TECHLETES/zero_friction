# BulkResetIncomingMutationsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetIncomingMutationsQueryParams**](GetIncomingMutationsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from billing_client.models.bulk_reset_incoming_mutations_request import BulkResetIncomingMutationsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkResetIncomingMutationsRequest from a JSON string
bulk_reset_incoming_mutations_request_instance = BulkResetIncomingMutationsRequest.from_json(json)
# print the JSON string representation of the object
print(BulkResetIncomingMutationsRequest.to_json())

# convert the object into a dict
bulk_reset_incoming_mutations_request_dict = bulk_reset_incoming_mutations_request_instance.to_dict()
# create an instance of BulkResetIncomingMutationsRequest from a dict
bulk_reset_incoming_mutations_request_from_dict = BulkResetIncomingMutationsRequest.from_dict(bulk_reset_incoming_mutations_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


