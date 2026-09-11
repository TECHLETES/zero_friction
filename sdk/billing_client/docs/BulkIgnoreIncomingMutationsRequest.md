# BulkIgnoreIncomingMutationsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**GetIncomingMutationsQueryParams**](GetIncomingMutationsQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]

## Example

```python
from billing_client.models.bulk_ignore_incoming_mutations_request import BulkIgnoreIncomingMutationsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkIgnoreIncomingMutationsRequest from a JSON string
bulk_ignore_incoming_mutations_request_instance = BulkIgnoreIncomingMutationsRequest.from_json(json)
# print the JSON string representation of the object
print(BulkIgnoreIncomingMutationsRequest.to_json())

# convert the object into a dict
bulk_ignore_incoming_mutations_request_dict = bulk_ignore_incoming_mutations_request_instance.to_dict()
# create an instance of BulkIgnoreIncomingMutationsRequest from a dict
bulk_ignore_incoming_mutations_request_from_dict = BulkIgnoreIncomingMutationsRequest.from_dict(bulk_ignore_incoming_mutations_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
