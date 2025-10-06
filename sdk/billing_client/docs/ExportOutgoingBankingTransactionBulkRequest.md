# ExportOutgoingBankingTransactionBulkRequest

Represents a bulk request to export outgoing banking transactions.  This DTO is used to export multiple outgoing banking transactions in a single operation.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**outgoing_banking_transaction_ids** | **List[str]** | List of outgoing banking transaction IDs to be exported. | [optional] 

## Example

```python
from billing_client.models.export_outgoing_banking_transaction_bulk_request import ExportOutgoingBankingTransactionBulkRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ExportOutgoingBankingTransactionBulkRequest from a JSON string
export_outgoing_banking_transaction_bulk_request_instance = ExportOutgoingBankingTransactionBulkRequest.from_json(json)
# print the JSON string representation of the object
print(ExportOutgoingBankingTransactionBulkRequest.to_json())

# convert the object into a dict
export_outgoing_banking_transaction_bulk_request_dict = export_outgoing_banking_transaction_bulk_request_instance.to_dict()
# create an instance of ExportOutgoingBankingTransactionBulkRequest from a dict
export_outgoing_banking_transaction_bulk_request_from_dict = ExportOutgoingBankingTransactionBulkRequest.from_dict(export_outgoing_banking_transaction_bulk_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


