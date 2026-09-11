# IncomingBankingTransactionEntityCountsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number_of_bank_transfers** | **int** |  | [optional] 
**number_of_reversals** | **int** |  | [optional] 
**number_of_confirmations** | **int** |  | [optional] 
**processed_bank_transfers** | **int** |  | [optional] 
**processed_reversals** | **int** |  | [optional] 
**processed_confirmations** | **int** |  | [optional] 
**failed_bank_transfers** | **int** |  | [optional] 
**failed_reversals** | **int** |  | [optional] 
**failed_confirmations** | **int** |  | [optional] 

## Example

```python
from billing_client.models.incoming_banking_transaction_entity_counts_dto import IncomingBankingTransactionEntityCountsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingBankingTransactionEntityCountsDTO from a JSON string
incoming_banking_transaction_entity_counts_dto_instance = IncomingBankingTransactionEntityCountsDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingBankingTransactionEntityCountsDTO.to_json())

# convert the object into a dict
incoming_banking_transaction_entity_counts_dto_dict = incoming_banking_transaction_entity_counts_dto_instance.to_dict()
# create an instance of IncomingBankingTransactionEntityCountsDTO from a dict
incoming_banking_transaction_entity_counts_dto_from_dict = IncomingBankingTransactionEntityCountsDTO.from_dict(incoming_banking_transaction_entity_counts_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


