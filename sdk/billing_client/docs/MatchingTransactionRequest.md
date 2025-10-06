# MatchingTransactionRequest

Represents a single transaction to be matched with its settlement amount.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**matching_transaction_id** | **str** | The ID of the transaction to be matched. | [optional] 
**amount_to_settle** | **float** | The amount to be settled for this transaction. | [optional] 

## Example

```python
from billing_client.models.matching_transaction_request import MatchingTransactionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of MatchingTransactionRequest from a JSON string
matching_transaction_request_instance = MatchingTransactionRequest.from_json(json)
# print the JSON string representation of the object
print(MatchingTransactionRequest.to_json())

# convert the object into a dict
matching_transaction_request_dict = matching_transaction_request_instance.to_dict()
# create an instance of MatchingTransactionRequest from a dict
matching_transaction_request_from_dict = MatchingTransactionRequest.from_dict(matching_transaction_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


