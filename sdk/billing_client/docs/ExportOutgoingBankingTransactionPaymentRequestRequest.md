# ExportOutgoingBankingTransactionPaymentRequestRequest

Represents a request to export outgoing banking transaction payment requests.  This DTO is used to export payment request transactions in a specified format.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**format_type** | [**ExportOutgoingBankingTransactionPaymentRequestFormatType**](ExportOutgoingBankingTransactionPaymentRequestFormatType.md) | The format type to be used for exporting the payment request transactions. | [optional] 

## Example

```python
from billing_client.models.export_outgoing_banking_transaction_payment_request_request import ExportOutgoingBankingTransactionPaymentRequestRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ExportOutgoingBankingTransactionPaymentRequestRequest from a JSON string
export_outgoing_banking_transaction_payment_request_request_instance = ExportOutgoingBankingTransactionPaymentRequestRequest.from_json(json)
# print the JSON string representation of the object
print(ExportOutgoingBankingTransactionPaymentRequestRequest.to_json())

# convert the object into a dict
export_outgoing_banking_transaction_payment_request_request_dict = export_outgoing_banking_transaction_payment_request_request_instance.to_dict()
# create an instance of ExportOutgoingBankingTransactionPaymentRequestRequest from a dict
export_outgoing_banking_transaction_payment_request_request_from_dict = ExportOutgoingBankingTransactionPaymentRequestRequest.from_dict(export_outgoing_banking_transaction_payment_request_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


