# TransactionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_type** | [**TransactionType**](TransactionType.md) |  | [optional] 
**transaction_sub_type** | [**TransactionSubType**](TransactionSubType.md) |  | [optional] 
**transaction_date_time** | **datetime** |  | [optional] 
**transaction_due_date_time** | **datetime** |  | [optional] 
**transaction_amount** | **float** |  | [optional] 
**transaction_open_amount** | **float** |  | [optional] 
**debtor** | [**DebtorDTO**](DebtorDTO.md) |  | [optional] 
**organisation_bank_account_id** | **str** |  | [optional] 
**company_bank_account_id** | **str** |  | [optional] 
**payment_reference** | **str** |  | [optional] 
**reference_details** | [**TransactionReferenceDetailsDTO**](TransactionReferenceDetailsDTO.md) |  | [optional] 
**settlement_details** | [**SettlementDetailsDTO**](SettlementDetailsDTO.md) |  | [optional] 
**reversed** | **bool** |  | [optional] 
**reversal_reason** | [**PaymentReversalReason**](PaymentReversalReason.md) |  | [optional] 
**reversal_additional_information** | **str** |  | [optional] 
**automatically_closed** | **bool** |  | [optional] 
**awaiting_bank_confirmation** | **bool** |  | [optional] 
**awaiting_bank_confirmation_transaction_id** | **str** |  | [optional] 
**awaiting_bank_confirmation_transaction_identification** | **str** |  | [optional] 
**awaiting_bank_confirmation_transaction_type** | [**OutgoingBankingTransactionType**](OutgoingBankingTransactionType.md) |  | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) |  | [optional] 
**payment_plan_details** | [**PaymentPlanDetailsDTO**](PaymentPlanDetailsDTO.md) |  | [optional] 
**collection_details** | [**CollectionCaseDetailsDTO**](CollectionCaseDetailsDTO.md) |  | [optional] 
**incoming_banking_transaction_id** | **str** |  | [optional] 
**incoming_mutation_id** | **str** |  | [optional] 
**outgoing_banking_transaction_id** | **str** |  | [optional] 
**outgoing_mutation_id** | **str** |  | [optional] 
**account_export_status** | [**AccountExportStatus**](AccountExportStatus.md) |  | [optional] 
**account_export_details** | [**AccountExportDetailsDTO**](AccountExportDetailsDTO.md) |  | [optional] 
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
from billing_client.models.transaction_dto import TransactionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TransactionDTO from a JSON string
transaction_dto_instance = TransactionDTO.from_json(json)
# print the JSON string representation of the object
print(TransactionDTO.to_json())

# convert the object into a dict
transaction_dto_dict = transaction_dto_instance.to_dict()
# create an instance of TransactionDTO from a dict
transaction_dto_from_dict = TransactionDTO.from_dict(transaction_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


