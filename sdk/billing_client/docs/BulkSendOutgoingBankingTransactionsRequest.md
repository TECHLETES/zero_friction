# BulkSendOutgoingBankingTransactionsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**GetOutgoingBankingTransactionsQueryParams**](GetOutgoingBankingTransactionsQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]

## Example

```python
from billing_client.models.bulk_send_outgoing_banking_transactions_request import BulkSendOutgoingBankingTransactionsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkSendOutgoingBankingTransactionsRequest from a JSON string
bulk_send_outgoing_banking_transactions_request_instance = BulkSendOutgoingBankingTransactionsRequest.from_json(json)
# print the JSON string representation of the object
print(BulkSendOutgoingBankingTransactionsRequest.to_json())

# convert the object into a dict
bulk_send_outgoing_banking_transactions_request_dict = bulk_send_outgoing_banking_transactions_request_instance.to_dict()
# create an instance of BulkSendOutgoingBankingTransactionsRequest from a dict
bulk_send_outgoing_banking_transactions_request_from_dict = BulkSendOutgoingBankingTransactionsRequest.from_dict(bulk_send_outgoing_banking_transactions_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
