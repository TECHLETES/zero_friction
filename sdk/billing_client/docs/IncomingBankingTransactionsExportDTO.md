# IncomingBankingTransactionsExportDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_identification** | **str** |  | [optional] 
**opening_balance_date** | **datetime** |  | [optional] 
**closing_balance_date** | **datetime** |  | [optional] 
**transaction_status** | [**IncomingBankingTransactionStatus**](IncomingBankingTransactionStatus.md) |  | [optional] 
**company_bank_account_holder** | **str** |  | [optional] 
**company_bank_account_iban** | **str** |  | [optional] 
**mutation_type** | [**IncomingMutationType**](IncomingMutationType.md) |  | [optional] 
**mutation_date** | **datetime** |  | [optional] 
**mutation_amount** | **float** |  | [optional] 
**mutation_display_amount** | **float** |  | [optional] 
**mutation_status** | [**IncomingMutationStatus**](IncomingMutationStatus.md) |  | [optional] 
**mutation_reference** | **str** |  | [optional] 
**account_holder** | **str** |  | [optional] 
**account_iban** | **str** |  | [optional] 
**customer_account_number** | **str** |  | [optional] 
**customer_name** | **str** |  | [optional] 
**outgoing_banking_identification** | **str** |  | [optional] 
**matching_outgoing_banking_mutation_identification** | **str** |  | [optional] 
**matching_outgoing_mutation_description** | **str** |  | [optional] 
**is_manual_match** | **bool** |  | [optional] 

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


