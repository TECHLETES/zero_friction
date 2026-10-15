# OutgoingBankingTransactionPreviewDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requests** | [**OutgoingBankingTransactionPreviewInsightsDTO**](OutgoingBankingTransactionPreviewInsightsDTO.md) |  | [optional] 
**refunds** | [**OutgoingBankingTransactionPreviewInsightsDTO**](OutgoingBankingTransactionPreviewInsightsDTO.md) |  | [optional] 

## Example

```python
from billing_client.models.outgoing_banking_transaction_preview_dto import OutgoingBankingTransactionPreviewDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingBankingTransactionPreviewDTO from a JSON string
outgoing_banking_transaction_preview_dto_instance = OutgoingBankingTransactionPreviewDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingBankingTransactionPreviewDTO.to_json())

# convert the object into a dict
outgoing_banking_transaction_preview_dto_dict = outgoing_banking_transaction_preview_dto_instance.to_dict()
# create an instance of OutgoingBankingTransactionPreviewDTO from a dict
outgoing_banking_transaction_preview_dto_from_dict = OutgoingBankingTransactionPreviewDTO.from_dict(outgoing_banking_transaction_preview_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


