# OutgoingBankingTransactionsExportDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_identification** | **str** |  | [optional] 
**transaction_type** | [**OutgoingBankingTransactionType**](OutgoingBankingTransactionType.md) |  | [optional] 
**transaction_status** | [**OutgoingBankingTransactionStatus**](OutgoingBankingTransactionStatus.md) |  | [optional] 
**transaction_collection_date** | **datetime** |  | [optional] 
**transaction_total_amount** | **float** |  | [optional] 
**company_bank_account_holder** | **str** |  | [optional] 
**company_bank_account_iban** | **str** |  | [optional] 
**outgoing_mutation_type** | [**OutgoingMutationType**](OutgoingMutationType.md) |  | [optional] 
**outgoing_mutation_status** | [**OutgoingMutationStatus**](OutgoingMutationStatus.md) |  | [optional] 
**outgoing_mutation_amount** | **float** |  | [optional] 
**outgoing_mutation_decription** | **str** |  | [optional] 
**customer_account_number** | **str** |  | [optional] 
**customer_name** | **str** |  | [optional] 
**customer_bank_account_iban** | **str** |  | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) |  | [optional] 
**invoice_number** | **str** |  | [optional] 
**invoice_date** | **datetime** |  | [optional] 
**invoice_due_date** | **datetime** |  | [optional] 
**invoice_amount** | **float** |  | [optional] 
**invoice_type** | [**InvoiceType**](InvoiceType.md) |  | [optional] 
**invoice_period_start_date_time** | **datetime** |  | [optional] 
**invoice_period_end_date_time** | **datetime** |  | [optional] 

## Example

```python
from billing_client.models.outgoing_banking_transactions_export_dto import OutgoingBankingTransactionsExportDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingBankingTransactionsExportDTO from a JSON string
outgoing_banking_transactions_export_dto_instance = OutgoingBankingTransactionsExportDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingBankingTransactionsExportDTO.to_json())

# convert the object into a dict
outgoing_banking_transactions_export_dto_dict = outgoing_banking_transactions_export_dto_instance.to_dict()
# create an instance of OutgoingBankingTransactionsExportDTO from a dict
outgoing_banking_transactions_export_dto_from_dict = OutgoingBankingTransactionsExportDTO.from_dict(outgoing_banking_transactions_export_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


