# BulkOverrideOutgoingBankingTransactionBankConfirmationRequest

Represents a bulk request to override the bank confirmation status of multiple outgoing banking transactions.  This DTO allows for batch overriding of bank confirmations based on query parameters and filters.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** | Indicates whether this is a validation-only request without actual override. | [optional] 
**var_query_params** | [**GetOutgoingBankingTransactionsQueryParams**](GetOutgoingBankingTransactionsQueryParams.md) | Query parameters to filter the transactions to be overridden. | [optional] 
**quick_filter** | **str** | A quick filter string to further refine the selection of transactions to be overridden. | [optional] 

## Example

```python
from billing_client.models.bulk_override_outgoing_banking_transaction_bank_confirmation_request import BulkOverrideOutgoingBankingTransactionBankConfirmationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkOverrideOutgoingBankingTransactionBankConfirmationRequest from a JSON string
bulk_override_outgoing_banking_transaction_bank_confirmation_request_instance = BulkOverrideOutgoingBankingTransactionBankConfirmationRequest.from_json(json)
# print the JSON string representation of the object
print(BulkOverrideOutgoingBankingTransactionBankConfirmationRequest.to_json())

# convert the object into a dict
bulk_override_outgoing_banking_transaction_bank_confirmation_request_dict = bulk_override_outgoing_banking_transaction_bank_confirmation_request_instance.to_dict()
# create an instance of BulkOverrideOutgoingBankingTransactionBankConfirmationRequest from a dict
bulk_override_outgoing_banking_transaction_bank_confirmation_request_from_dict = BulkOverrideOutgoingBankingTransactionBankConfirmationRequest.from_dict(bulk_override_outgoing_banking_transaction_bank_confirmation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


