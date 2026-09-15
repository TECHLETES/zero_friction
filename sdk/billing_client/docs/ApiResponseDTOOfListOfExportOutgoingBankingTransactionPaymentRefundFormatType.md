# ApiResponseDTOOfListOfExportOutgoingBankingTransactionPaymentRefundFormatType


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[ExportOutgoingBankingTransactionPaymentRefundFormatType]**](ExportOutgoingBankingTransactionPaymentRefundFormatType.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.api_response_dtoof_list_of_export_outgoing_banking_transaction_payment_refund_format_type import ApiResponseDTOOfListOfExportOutgoingBankingTransactionPaymentRefundFormatType

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfListOfExportOutgoingBankingTransactionPaymentRefundFormatType from a JSON string
api_response_dtoof_list_of_export_outgoing_banking_transaction_payment_refund_format_type_instance = ApiResponseDTOOfListOfExportOutgoingBankingTransactionPaymentRefundFormatType.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfListOfExportOutgoingBankingTransactionPaymentRefundFormatType.to_json())

# convert the object into a dict
api_response_dtoof_list_of_export_outgoing_banking_transaction_payment_refund_format_type_dict = api_response_dtoof_list_of_export_outgoing_banking_transaction_payment_refund_format_type_instance.to_dict()
# create an instance of ApiResponseDTOOfListOfExportOutgoingBankingTransactionPaymentRefundFormatType from a dict
api_response_dtoof_list_of_export_outgoing_banking_transaction_payment_refund_format_type_from_dict = ApiResponseDTOOfListOfExportOutgoingBankingTransactionPaymentRefundFormatType.from_dict(api_response_dtoof_list_of_export_outgoing_banking_transaction_payment_refund_format_type_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


