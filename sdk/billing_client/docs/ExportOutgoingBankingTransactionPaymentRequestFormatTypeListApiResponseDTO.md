# ExportOutgoingBankingTransactionPaymentRequestFormatTypeListApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**List[ExportOutgoingBankingTransactionPaymentRequestFormatType]**](ExportOutgoingBankingTransactionPaymentRequestFormatType.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.export_outgoing_banking_transaction_payment_request_format_type_list_api_response_dto import ExportOutgoingBankingTransactionPaymentRequestFormatTypeListApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ExportOutgoingBankingTransactionPaymentRequestFormatTypeListApiResponseDTO from a JSON string
export_outgoing_banking_transaction_payment_request_format_type_list_api_response_dto_instance = ExportOutgoingBankingTransactionPaymentRequestFormatTypeListApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ExportOutgoingBankingTransactionPaymentRequestFormatTypeListApiResponseDTO.to_json())

# convert the object into a dict
export_outgoing_banking_transaction_payment_request_format_type_list_api_response_dto_dict = export_outgoing_banking_transaction_payment_request_format_type_list_api_response_dto_instance.to_dict()
# create an instance of ExportOutgoingBankingTransactionPaymentRequestFormatTypeListApiResponseDTO from a dict
export_outgoing_banking_transaction_payment_request_format_type_list_api_response_dto_from_dict = ExportOutgoingBankingTransactionPaymentRequestFormatTypeListApiResponseDTO.from_dict(export_outgoing_banking_transaction_payment_request_format_type_list_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


