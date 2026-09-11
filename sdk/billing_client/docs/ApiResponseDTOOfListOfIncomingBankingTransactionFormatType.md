# ApiResponseDTOOfListOfIncomingBankingTransactionFormatType


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[IncomingBankingTransactionFormatType]**](IncomingBankingTransactionFormatType.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from billing_client.models.api_response_dtoof_list_of_incoming_banking_transaction_format_type import ApiResponseDTOOfListOfIncomingBankingTransactionFormatType

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfListOfIncomingBankingTransactionFormatType from a JSON string
api_response_dtoof_list_of_incoming_banking_transaction_format_type_instance = ApiResponseDTOOfListOfIncomingBankingTransactionFormatType.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfListOfIncomingBankingTransactionFormatType.to_json())

# convert the object into a dict
api_response_dtoof_list_of_incoming_banking_transaction_format_type_dict = api_response_dtoof_list_of_incoming_banking_transaction_format_type_instance.to_dict()
# create an instance of ApiResponseDTOOfListOfIncomingBankingTransactionFormatType from a dict
api_response_dtoof_list_of_incoming_banking_transaction_format_type_from_dict = ApiResponseDTOOfListOfIncomingBankingTransactionFormatType.from_dict(api_response_dtoof_list_of_incoming_banking_transaction_format_type_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
