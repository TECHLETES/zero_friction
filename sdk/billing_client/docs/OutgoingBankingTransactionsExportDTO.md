# OutgoingBankingTransactionsExportDTO

Represents an outgoing banking transaction for export purposes.  This DTO contains comprehensive information about the transaction, including company, customer, and invoice details.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_identification** | **str** | The unique identification of the outgoing banking transaction. | [optional] 
**transaction_type** | [**OutgoingBankingTransactionType**](OutgoingBankingTransactionType.md) | The type of outgoing banking transaction. | [optional] 
**transaction_status** | [**OutgoingBankingTransactionStatus**](OutgoingBankingTransactionStatus.md) | The current status of the outgoing banking transaction. | [optional] 
**transaction_collection_date** | **datetime** | The date when the transaction collection is scheduled. | [optional] 
**transaction_total_amount** | **float** | The total amount of the transaction. | [optional] 
**company_bank_account_holder** | **str** | The name of the company bank account holder. | [optional] 
**company_bank_account_iban** | **str** | The IBAN of the company bank account. | [optional] 
**outgoing_mutation_type** | [**OutgoingMutationType**](OutgoingMutationType.md) | The type of outgoing mutation. | [optional] 
**outgoing_mutation_status** | [**OutgoingMutationStatus**](OutgoingMutationStatus.md) | The current status of the outgoing mutation. | [optional] 
**outgoing_mutation_amount** | **float** | The amount of the outgoing mutation. | [optional] 
**outgoing_mutation_decription** | **str** | The description of the outgoing mutation. | [optional] 
**customer_account_number** | **str** | The account number of the customer. | [optional] 
**customer_name** | **str** | The name of the customer. | [optional] 
**customer_bank_account_iban** | **str** | The IBAN of the customer&#39;s bank account. | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) | List of property groups associated with this transaction. | [optional] 
**invoice_number** | **str** | The number of the associated invoice. | [optional] 
**invoice_date** | **datetime** | The date when the invoice was issued. | [optional] 
**invoice_due_date** | **datetime** | The due date of the invoice. | [optional] 
**invoice_amount** | **float** | The amount of the invoice. | [optional] 
**invoice_type** | [**InvoiceType**](InvoiceType.md) | The type of the invoice. | [optional] 
**invoice_period_start_date_time** | **datetime** | The start date of the invoice period. | [optional] 
**invoice_period_end_date_time** | **datetime** | The end date of the invoice period. | [optional] 

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


