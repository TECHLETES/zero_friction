# BulkAssignInvoicesToOutgoingBankingTransactionRequest

Represents a bulk request to assign invoices to outgoing banking transactions.  This DTO extends the base assignment request with bulk operation capabilities.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**all_applicable** | **bool** | Indicates whether all applicable invoices should be assigned.  Must be true if no specific invoice IDs are provided. | [optional] 
**outgoing_banking_transaction_type** | [**OutgoingBankingTransactionType**](OutgoingBankingTransactionType.md) | The type of outgoing banking transaction to assign invoices to. | [optional] 
**invoice_ids** | **List[str]** | A list of specific invoice IDs to assign.  Required if AllApplicable is false. | [optional] 
**add_to_new_outgoing_banking_transactions** | **bool** | Indicates whether invoices should be added to new outgoing banking transactions. | [optional] 
**overridden_collection_date** | **datetime** | An optional override for the collection date of the transactions.  Can only be set when AddToNewOutgoingBankingTransactions is true. | [optional] 
**only_validate** | **bool** | Indicates whether this is a validation-only request without actual assignment. | [optional] 
**var_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md) | Query parameters to filter the invoices to be assigned. | [optional] 
**quick_filter** | **str** | A quick filter string to further refine the selection of invoices to be assigned. | [optional] 

## Example

```python
from billing_client.models.bulk_assign_invoices_to_outgoing_banking_transaction_request import BulkAssignInvoicesToOutgoingBankingTransactionRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkAssignInvoicesToOutgoingBankingTransactionRequest from a JSON string
bulk_assign_invoices_to_outgoing_banking_transaction_request_instance = BulkAssignInvoicesToOutgoingBankingTransactionRequest.from_json(json)
# print the JSON string representation of the object
print(BulkAssignInvoicesToOutgoingBankingTransactionRequest.to_json())

# convert the object into a dict
bulk_assign_invoices_to_outgoing_banking_transaction_request_dict = bulk_assign_invoices_to_outgoing_banking_transaction_request_instance.to_dict()
# create an instance of BulkAssignInvoicesToOutgoingBankingTransactionRequest from a dict
bulk_assign_invoices_to_outgoing_banking_transaction_request_from_dict = BulkAssignInvoicesToOutgoingBankingTransactionRequest.from_dict(bulk_assign_invoices_to_outgoing_banking_transaction_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


