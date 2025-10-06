# SettleTransactionsRequest

Represents a request to settle multiple transactions.  This DTO is used to mark multiple transactions as settled, indicating they have been processed and completed.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_ids** | **List[str]** | List of transaction IDs to be marked as settled. | [optional] 

## Example

```python
from billing_client.models.settle_transactions_request import SettleTransactionsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SettleTransactionsRequest from a JSON string
settle_transactions_request_instance = SettleTransactionsRequest.from_json(json)
# print the JSON string representation of the object
print(SettleTransactionsRequest.to_json())

# convert the object into a dict
settle_transactions_request_dict = settle_transactions_request_instance.to_dict()
# create an instance of SettleTransactionsRequest from a dict
settle_transactions_request_from_dict = SettleTransactionsRequest.from_dict(settle_transactions_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


