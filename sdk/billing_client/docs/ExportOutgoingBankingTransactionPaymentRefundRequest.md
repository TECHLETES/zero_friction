# ExportOutgoingBankingTransactionPaymentRefundRequest

Represents a request to export outgoing banking transaction payment refunds.  This DTO is used to export payment refund transactions in a specified format.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**format_type** | [**ExportOutgoingBankingTransactionPaymentRefundFormatType**](ExportOutgoingBankingTransactionPaymentRefundFormatType.md) | The format type to be used for exporting the payment refund transactions. | [optional] 

## Example

```python
from billing_client.models.export_outgoing_banking_transaction_payment_refund_request import ExportOutgoingBankingTransactionPaymentRefundRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ExportOutgoingBankingTransactionPaymentRefundRequest from a JSON string
export_outgoing_banking_transaction_payment_refund_request_instance = ExportOutgoingBankingTransactionPaymentRefundRequest.from_json(json)
# print the JSON string representation of the object
print(ExportOutgoingBankingTransactionPaymentRefundRequest.to_json())

# convert the object into a dict
export_outgoing_banking_transaction_payment_refund_request_dict = export_outgoing_banking_transaction_payment_refund_request_instance.to_dict()
# create an instance of ExportOutgoingBankingTransactionPaymentRefundRequest from a dict
export_outgoing_banking_transaction_payment_refund_request_from_dict = ExportOutgoingBankingTransactionPaymentRefundRequest.from_dict(export_outgoing_banking_transaction_payment_refund_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


