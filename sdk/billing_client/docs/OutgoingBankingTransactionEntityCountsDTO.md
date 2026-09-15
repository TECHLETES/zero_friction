# OutgoingBankingTransactionEntityCountsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number_of_mutations** | **int** |  | [optional] 
**confirmed_mutations** | **int** |  | [optional] 
**reversed_mutations** | **int** |  | [optional] 

## Example

```python
from billing_client.models.outgoing_banking_transaction_entity_counts_dto import OutgoingBankingTransactionEntityCountsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingBankingTransactionEntityCountsDTO from a JSON string
outgoing_banking_transaction_entity_counts_dto_instance = OutgoingBankingTransactionEntityCountsDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingBankingTransactionEntityCountsDTO.to_json())

# convert the object into a dict
outgoing_banking_transaction_entity_counts_dto_dict = outgoing_banking_transaction_entity_counts_dto_instance.to_dict()
# create an instance of OutgoingBankingTransactionEntityCountsDTO from a dict
outgoing_banking_transaction_entity_counts_dto_from_dict = OutgoingBankingTransactionEntityCountsDTO.from_dict(outgoing_banking_transaction_entity_counts_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


