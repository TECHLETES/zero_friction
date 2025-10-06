# OutgoingBankingTransactionPreviewInsightsDTO

Contains insights about a specific type of outgoing banking transaction.  This DTO provides information about the number of invoices and total amount.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number_of_invoices** | **int** | The total number of invoices included in this preview. | [optional] 
**total_amount** | **float** | The total amount of all invoices in this preview. | [optional] 

## Example

```python
from billing_client.models.outgoing_banking_transaction_preview_insights_dto import OutgoingBankingTransactionPreviewInsightsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingBankingTransactionPreviewInsightsDTO from a JSON string
outgoing_banking_transaction_preview_insights_dto_instance = OutgoingBankingTransactionPreviewInsightsDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingBankingTransactionPreviewInsightsDTO.to_json())

# convert the object into a dict
outgoing_banking_transaction_preview_insights_dto_dict = outgoing_banking_transaction_preview_insights_dto_instance.to_dict()
# create an instance of OutgoingBankingTransactionPreviewInsightsDTO from a dict
outgoing_banking_transaction_preview_insights_dto_from_dict = OutgoingBankingTransactionPreviewInsightsDTO.from_dict(outgoing_banking_transaction_preview_insights_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


