# UpdateOutgoingBankingTransactionCollectionDateRequest

Represents a request to update the collection date of an outgoing banking transaction.  This DTO is used to modify when a transaction should be collected from the customer's account.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**collection_date** | **datetime** | The new date and time when the transaction should be collected. | [optional] 

## Example

```python
from billing_client.models.update_outgoing_banking_transaction_collection_date_request import UpdateOutgoingBankingTransactionCollectionDateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateOutgoingBankingTransactionCollectionDateRequest from a JSON string
update_outgoing_banking_transaction_collection_date_request_instance = UpdateOutgoingBankingTransactionCollectionDateRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateOutgoingBankingTransactionCollectionDateRequest.to_json())

# convert the object into a dict
update_outgoing_banking_transaction_collection_date_request_dict = update_outgoing_banking_transaction_collection_date_request_instance.to_dict()
# create an instance of UpdateOutgoingBankingTransactionCollectionDateRequest from a dict
update_outgoing_banking_transaction_collection_date_request_from_dict = UpdateOutgoingBankingTransactionCollectionDateRequest.from_dict(update_outgoing_banking_transaction_collection_date_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


