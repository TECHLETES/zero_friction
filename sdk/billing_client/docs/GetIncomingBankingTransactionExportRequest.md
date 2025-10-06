# GetIncomingBankingTransactionExportRequest

Represents a request to export data for specific incoming banking transactions.  This DTO is used to retrieve transaction data in a format suitable for export.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**incoming_banking_transaction_ids** | **List[str]** | A list of IDs for the incoming banking transactions to be included in the export. | [optional] 

## Example

```python
from billing_client.models.get_incoming_banking_transaction_export_request import GetIncomingBankingTransactionExportRequest

# TODO update the JSON string below
json = "{}"
# create an instance of GetIncomingBankingTransactionExportRequest from a JSON string
get_incoming_banking_transaction_export_request_instance = GetIncomingBankingTransactionExportRequest.from_json(json)
# print the JSON string representation of the object
print(GetIncomingBankingTransactionExportRequest.to_json())

# convert the object into a dict
get_incoming_banking_transaction_export_request_dict = get_incoming_banking_transaction_export_request_instance.to_dict()
# create an instance of GetIncomingBankingTransactionExportRequest from a dict
get_incoming_banking_transaction_export_request_from_dict = GetIncomingBankingTransactionExportRequest.from_dict(get_incoming_banking_transaction_export_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


