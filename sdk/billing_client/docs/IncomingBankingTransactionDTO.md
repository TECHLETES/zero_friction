# IncomingBankingTransactionDTO

Represents an incoming banking transaction file and its associated data.  This DTO contains information about the transaction file, balances, and processing status.

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
**identification** | **str** | The unique identifier of the transaction file. | [optional] 
**sequence_num** | **int** | The sequence number of the transaction file. | [optional] 
**status** | [**IncomingBankingTransactionStatus**](IncomingBankingTransactionStatus.md) | The current status of the transaction file. | [optional] 
**file_creation_date_time** | **datetime** | The date and time when the file was created. | [optional] 
**opening_balance** | **float** | The opening balance of the account at the start of the transaction period. | [optional] 
**closing_balance** | **float** | The closing balance of the account at the end of the transaction period. | [optional] 
**opening_balance_date** | **datetime** | The date and time of the opening balance. | [optional] 
**closing_balance_date** | **datetime** | The date and time of the closing balance. | [optional] 
**company_bank_account** | [**IncomingBankingTransactionCompanyBankAccountDTO**](IncomingBankingTransactionCompanyBankAccountDTO.md) | Information about the company bank account associated with this transaction. | [optional] 
**file_name** | **str** | The name of the transaction file. | [optional] 
**internal_file_path** | **str** | The internal file path where the transaction file is stored. | [optional] 
**entity_counts** | [**IncomingBankingTransactionEntityCountsDTO**](IncomingBankingTransactionEntityCountsDTO.md) | Statistics about the entities processed in this transaction file. | [optional] 
**locked** | **bool** | Indicates whether the transaction file is locked for processing. | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) | List of localized errors that occurred during processing. | [optional] 
**automatically_created** | **bool** | Indicates whether this transaction was automatically created. | [optional] 
**iban_confirmations** | [**List[IncomingBankingTransactionIbanConfirmationDTO]**](IncomingBankingTransactionIbanConfirmationDTO.md) | List of IBAN confirmations associated with this transaction. | [optional] 

## Example

```python
from billing_client.models.incoming_banking_transaction_dto import IncomingBankingTransactionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingBankingTransactionDTO from a JSON string
incoming_banking_transaction_dto_instance = IncomingBankingTransactionDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingBankingTransactionDTO.to_json())

# convert the object into a dict
incoming_banking_transaction_dto_dict = incoming_banking_transaction_dto_instance.to_dict()
# create an instance of IncomingBankingTransactionDTO from a dict
incoming_banking_transaction_dto_from_dict = IncomingBankingTransactionDTO.from_dict(incoming_banking_transaction_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


