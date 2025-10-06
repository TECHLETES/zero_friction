# OutgoingBankingTransactionDTO

Represents an outgoing banking transaction in the system.  This DTO contains comprehensive information about the transaction, including its status, amounts, and related entities.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**identification** | **str** | The unique identification of the outgoing banking transaction. | [optional] 
**sequence_num** | **int** | The sequence number of the transaction. | [optional] 
**type** | [**OutgoingBankingTransactionType**](OutgoingBankingTransactionType.md) | The type of outgoing banking transaction. | [optional] 
**status** | [**OutgoingBankingTransactionStatus**](OutgoingBankingTransactionStatus.md) | The current status of the outgoing banking transaction. | [optional] 
**mutation_date_time** | **datetime** | The date and time when the mutation occurred. | [optional] 
**company_bank_account** | [**OutgoingBankingTransactionCompanyBankAccountDTO**](OutgoingBankingTransactionCompanyBankAccountDTO.md) | Information about the company bank account associated with this transaction. | [optional] 
**file_name** | **str** | The name of the file containing the transaction details. | [optional] 
**internal_file_path** | **str** | The internal file path where the transaction file is stored. | [optional] 
**total_amount** | **float** | The total amount of the transaction. | [optional] 
**entity_counts** | [**OutgoingBankingTransactionEntityCountsDTO**](OutgoingBankingTransactionEntityCountsDTO.md) | Counts of various entities associated with this transaction. | [optional] 
**migrated** | **bool** | Indicates whether this transaction has been migrated from an older system. | [optional] 
**locked** | **bool** | Indicates whether this transaction is locked for modifications. | [optional] 
**confirming_incoming_banking_transactions** | **Dict[str, Optional[str]]** | Dictionary mapping incoming banking transaction IDs to their confirmations. | [optional] 

## Example

```python
from billing_client.models.outgoing_banking_transaction_dto import OutgoingBankingTransactionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingBankingTransactionDTO from a JSON string
outgoing_banking_transaction_dto_instance = OutgoingBankingTransactionDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingBankingTransactionDTO.to_json())

# convert the object into a dict
outgoing_banking_transaction_dto_dict = outgoing_banking_transaction_dto_instance.to_dict()
# create an instance of OutgoingBankingTransactionDTO from a dict
outgoing_banking_transaction_dto_from_dict = OutgoingBankingTransactionDTO.from_dict(outgoing_banking_transaction_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


