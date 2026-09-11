# OutgoingBankingTransactionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identification** | **str** |  | [optional]
**sequence_num** | **int** |  | [optional]
**type** | [**OutgoingBankingTransactionType**](OutgoingBankingTransactionType.md) |  | [optional]
**status** | [**OutgoingBankingTransactionStatus**](OutgoingBankingTransactionStatus.md) |  | [optional]
**provider_type** | [**BankingTransactionProviderType**](BankingTransactionProviderType.md) |  | [optional]
**mutation_date_time** | **datetime** |  | [optional]
**company_bank_account** | [**OutgoingBankingTransactionCompanyBankAccountDTO**](OutgoingBankingTransactionCompanyBankAccountDTO.md) |  | [optional]
**file_name** | **str** |  | [optional]
**internal_file_path** | **str** |  | [optional]
**total_amount** | **float** |  | [optional]
**entity_counts** | [**OutgoingBankingTransactionEntityCountsDTO**](OutgoingBankingTransactionEntityCountsDTO.md) |  | [optional]
**migrated** | **bool** |  | [optional]
**locked** | **bool** |  | [optional]
**confirming_incoming_banking_transactions** | **Dict[str, str]** |  | [optional]
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
