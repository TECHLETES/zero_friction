# AssignInvoicesToOutgoingBankingTransactionRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all_applicable** | **bool** |  | [optional]
**outgoing_banking_transaction_type** | [**OutgoingBankingTransactionType**](OutgoingBankingTransactionType.md) |  | [optional]
**invoice_ids** | **List[str]** |  | [optional]
**add_to_new_outgoing_banking_transactions** | **bool** |  | [optional]
**overridden_collection_date** | **datetime** |  | [optional]

## Example

```python
from billing_client.models.assign_invoices_to_outgoing_banking_transaction_request import AssignInvoicesToOutgoingBankingTransactionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AssignInvoicesToOutgoingBankingTransactionRequest from a JSON string
assign_invoices_to_outgoing_banking_transaction_request_instance = AssignInvoicesToOutgoingBankingTransactionRequest.from_json(json)
# print the JSON string representation of the object
print(AssignInvoicesToOutgoingBankingTransactionRequest.to_json())

# convert the object into a dict
assign_invoices_to_outgoing_banking_transaction_request_dict = assign_invoices_to_outgoing_banking_transaction_request_instance.to_dict()
# create an instance of AssignInvoicesToOutgoingBankingTransactionRequest from a dict
assign_invoices_to_outgoing_banking_transaction_request_from_dict = AssignInvoicesToOutgoingBankingTransactionRequest.from_dict(assign_invoices_to_outgoing_banking_transaction_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
