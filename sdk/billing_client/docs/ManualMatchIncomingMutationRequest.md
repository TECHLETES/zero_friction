# ManualMatchIncomingMutationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**outgoing_banking_transaction_id** | **str** |  | [optional]
**outgoing_mutation_id** | **str** |  | [optional]
**customer_id** | **str** |  | [optional]
**matching_transactions** | [**List[MatchingTransactionRequest]**](MatchingTransactionRequest.md) |  | [optional]

## Example

```python
from billing_client.models.manual_match_incoming_mutation_request import ManualMatchIncomingMutationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ManualMatchIncomingMutationRequest from a JSON string
manual_match_incoming_mutation_request_instance = ManualMatchIncomingMutationRequest.from_json(json)
# print the JSON string representation of the object
print(ManualMatchIncomingMutationRequest.to_json())

# convert the object into a dict
manual_match_incoming_mutation_request_dict = manual_match_incoming_mutation_request_instance.to_dict()
# create an instance of ManualMatchIncomingMutationRequest from a dict
manual_match_incoming_mutation_request_from_dict = ManualMatchIncomingMutationRequest.from_dict(manual_match_incoming_mutation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
