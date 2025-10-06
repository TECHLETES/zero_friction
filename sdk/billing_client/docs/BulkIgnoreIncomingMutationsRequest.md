# BulkIgnoreIncomingMutationsRequest

Represents a bulk request to ignore multiple incoming mutations.  This DTO allows for batch marking of mutations as ignored based on query parameters and filters.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** | Indicates whether this is a validation-only request without actual ignoring. | [optional] 
**var_query_params** | [**GetIncomingMutationsQueryParams**](GetIncomingMutationsQueryParams.md) | Query parameters to filter the mutations to be ignored. | [optional] 
**quick_filter** | **str** | A quick filter string to further refine the selection of mutations to be ignored. | [optional] 

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


