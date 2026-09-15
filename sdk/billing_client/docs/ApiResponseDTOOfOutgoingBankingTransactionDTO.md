# ApiResponseDTOOfOutgoingBankingTransactionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**OutgoingBankingTransactionDTO**](OutgoingBankingTransactionDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.api_response_dtoof_outgoing_banking_transaction_dto import ApiResponseDTOOfOutgoingBankingTransactionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfOutgoingBankingTransactionDTO from a JSON string
api_response_dtoof_outgoing_banking_transaction_dto_instance = ApiResponseDTOOfOutgoingBankingTransactionDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfOutgoingBankingTransactionDTO.to_json())

# convert the object into a dict
api_response_dtoof_outgoing_banking_transaction_dto_dict = api_response_dtoof_outgoing_banking_transaction_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfOutgoingBankingTransactionDTO from a dict
api_response_dtoof_outgoing_banking_transaction_dto_from_dict = ApiResponseDTOOfOutgoingBankingTransactionDTO.from_dict(api_response_dtoof_outgoing_banking_transaction_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


