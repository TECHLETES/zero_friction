# BulkDeleteOutgoingMutationRequest

Represents a bulk request to delete multiple outgoing mutations.  This DTO allows for batch deletion of mutations based on query parameters and filters.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** | Indicates whether this is a validation-only request without actual deletion. | [optional] 
**var_query_params** | [**GetOutgoingMutationsQueryParams**](GetOutgoingMutationsQueryParams.md) | Query parameters to filter the mutations to be deleted. | [optional] 
**quick_filter** | **str** | A quick filter string to further refine the selection of mutations to be deleted. | [optional] 

## Example

```python
from billing_client.models.bulk_delete_outgoing_mutation_request import BulkDeleteOutgoingMutationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkDeleteOutgoingMutationRequest from a JSON string
bulk_delete_outgoing_mutation_request_instance = BulkDeleteOutgoingMutationRequest.from_json(json)
# print the JSON string representation of the object
print(BulkDeleteOutgoingMutationRequest.to_json())

# convert the object into a dict
bulk_delete_outgoing_mutation_request_dict = bulk_delete_outgoing_mutation_request_instance.to_dict()
# create an instance of BulkDeleteOutgoingMutationRequest from a dict
bulk_delete_outgoing_mutation_request_from_dict = BulkDeleteOutgoingMutationRequest.from_dict(bulk_delete_outgoing_mutation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


