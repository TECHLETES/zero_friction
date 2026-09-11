# IncomingBankingTransactionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identification** | **str** |  | [optional]
**sequence_num** | **int** |  | [optional]
**status** | [**IncomingBankingTransactionStatus**](IncomingBankingTransactionStatus.md) |  | [optional]
**provider_type** | [**BankingTransactionProviderType**](BankingTransactionProviderType.md) |  | [optional]
**file_creation_date_time** | **datetime** |  | [optional]
**opening_balance** | **float** |  | [optional]
**closing_balance** | **float** |  | [optional]
**opening_balance_date** | **datetime** |  | [optional]
**closing_balance_date** | **datetime** |  | [optional]
**company_bank_account** | [**IncomingBankingTransactionCompanyBankAccountDTO**](IncomingBankingTransactionCompanyBankAccountDTO.md) |  | [optional]
**file_name** | **str** |  | [optional]
**internal_file_path** | **str** |  | [optional]
**entity_counts** | [**IncomingBankingTransactionEntityCountsDTO**](IncomingBankingTransactionEntityCountsDTO.md) |  | [optional]
**locked** | **bool** |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**automatically_created** | **bool** |  | [optional]
**iban_confirmations** | [**List[IncomingBankingTransactionIbanConfirmationDTO]**](IncomingBankingTransactionIbanConfirmationDTO.md) |  | [optional]
**organisation_id** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

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
