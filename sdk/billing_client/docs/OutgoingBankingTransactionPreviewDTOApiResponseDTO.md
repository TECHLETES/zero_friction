# OutgoingBankingTransactionPreviewDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**OutgoingBankingTransactionPreviewDTO**](OutgoingBankingTransactionPreviewDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.outgoing_banking_transaction_preview_dto_api_response_dto import OutgoingBankingTransactionPreviewDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingBankingTransactionPreviewDTOApiResponseDTO from a JSON string
outgoing_banking_transaction_preview_dto_api_response_dto_instance = OutgoingBankingTransactionPreviewDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingBankingTransactionPreviewDTOApiResponseDTO.to_json())

# convert the object into a dict
outgoing_banking_transaction_preview_dto_api_response_dto_dict = outgoing_banking_transaction_preview_dto_api_response_dto_instance.to_dict()
# create an instance of OutgoingBankingTransactionPreviewDTOApiResponseDTO from a dict
outgoing_banking_transaction_preview_dto_api_response_dto_from_dict = OutgoingBankingTransactionPreviewDTOApiResponseDTO.from_dict(outgoing_banking_transaction_preview_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


