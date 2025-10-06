# IncomingBankingTransactionsExportDTO

Represents an incoming banking transaction for export purposes.  This DTO contains comprehensive information about the transaction, including company, customer, and matching details.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_identification** | **str** | The unique identification of the transaction. | [optional] 
**opening_balance_date** | **datetime** | The date and time of the opening balance. | [optional] 
**closing_balance_date** | **datetime** | The date and time of the closing balance. | [optional] 
**transaction_status** | [**IncomingBankingTransactionStatus**](IncomingBankingTransactionStatus.md) | The current status of the transaction. | [optional] 
**company_bank_account_holder** | **str** | The name of the company bank account holder. | [optional] 
**company_bank_account_iban** | **str** | The IBAN of the company bank account. | [optional] 
**mutation_type** | [**IncomingMutationType**](IncomingMutationType.md) | The type of mutation. | [optional] 
**mutation_date** | **datetime** | The date and time when the mutation occurred. | [optional] 
**mutation_amount** | **float** | The amount of the mutation. | [optional] 
**mutation_status** | [**IncomingMutationStatus**](IncomingMutationStatus.md) | The current status of the mutation. | [optional] 
**mutation_reference** | **str** | The reference number or description of the mutation. | [optional] 
**account_holder** | **str** | The name of the account holder. | [optional] 
**account_iban** | **str** | The IBAN of the account. | [optional] 
**customer_account_number** | **str** | The account number of the customer. | [optional] 
**customer_name** | **str** | The name of the customer. | [optional] 
**outgoing_banking_identification** | **str** | The identification of the matching outgoing banking transaction. | [optional] 
**matching_outgoing_banking_mutation_identification** | **str** | The identification of the matching outgoing banking mutation. | [optional] 
**matching_outgoing_mutation_description** | **str** | The description of the matching outgoing mutation. | [optional] 
**is_manual_match** | **bool** | Indicates whether this mutation was manually matched. | [optional] 

## Example

```python
from billing_client.models.incoming_banking_transactions_export_dto import IncomingBankingTransactionsExportDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingBankingTransactionsExportDTO from a JSON string
incoming_banking_transactions_export_dto_instance = IncomingBankingTransactionsExportDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingBankingTransactionsExportDTO.to_json())

# convert the object into a dict
incoming_banking_transactions_export_dto_dict = incoming_banking_transactions_export_dto_instance.to_dict()
# create an instance of IncomingBankingTransactionsExportDTO from a dict
incoming_banking_transactions_export_dto_from_dict = IncomingBankingTransactionsExportDTO.from_dict(incoming_banking_transactions_export_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


