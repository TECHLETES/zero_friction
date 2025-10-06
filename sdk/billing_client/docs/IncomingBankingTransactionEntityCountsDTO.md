# IncomingBankingTransactionEntityCountsDTO

Contains statistics about the entities processed in an incoming banking transaction file.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number_of_bank_transfers** | **int** | Total number of bank transfers in the file. | [optional] 
**number_of_reversals** | **int** | Total number of reversals in the file. | [optional] 
**number_of_confirmations** | **int** | Total number of confirmations in the file. | [optional] 
**processed_bank_transfers** | **int** | Number of successfully processed bank transfers. | [optional] 
**processed_reversals** | **int** | Number of successfully processed reversals. | [optional] 
**processed_confirmations** | **int** | Number of successfully processed confirmations. | [optional] 
**failed_bank_transfers** | **int** | Number of failed bank transfers. | [optional] 
**failed_reversals** | **int** | Number of failed reversals. | [optional] 
**failed_confirmations** | **int** | Number of failed confirmations. | [optional] 

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


