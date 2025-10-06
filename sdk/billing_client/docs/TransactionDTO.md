# TransactionDTO

Represents a transaction in the billing system

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
**transaction_type** | [**TransactionType**](TransactionType.md) | Type of the transaction | [optional] 
**transaction_sub_type** | [**TransactionSubType**](TransactionSubType.md) | Subtype of the transaction | [optional] 
**transaction_date_time** | **datetime** | Date and time when the transaction occurred | [optional] 
**transaction_due_date_time** | **datetime** | Date and time when the transaction is due | [optional] 
**transaction_amount** | **float** | Total amount of the transaction | [optional] 
**transaction_open_amount** | **float** | Remaining open amount of the transaction | [optional] 
**customer_id** | **str** | Identifier of the customer | [optional] 
**debtor** | [**DebtorDTO**](DebtorDTO.md) | Debtor information | [optional] 
**organisation_bank_account_id** | **str** | Identifier of the organization&#39;s bank account (obsolete, for backwards compatibility) | [optional] 
**company_bank_account_id** | **str** | Identifier of the company&#39;s bank account | [optional] 
**payment_reference** | **str** | Payment reference number | [optional] 
**reference_details** | [**TransactionReferenceDetailsDTO**](TransactionReferenceDetailsDTO.md) | Reference details for the transaction | [optional] 
**settlement_details** | [**SettlementDetailsDTO**](SettlementDetailsDTO.md) | Settlement details for the transaction | [optional] 
**reversed** | **bool** | Indicates if the transaction has been reversed | [optional] 
**reversal_reason** | [**PaymentReversalReason**](PaymentReversalReason.md) | Reason for payment reversal | [optional] 
**reversal_additional_information** | **str** | Additional information about the reversal | [optional] 
**automatically_closed** | **bool** | Indicates if the transaction was automatically closed | [optional] 
**awaiting_bank_confirmation** | **bool** | Indicates if the transaction is awaiting bank confirmation | [optional] 
**awaiting_bank_confirmation_transaction_id** | **str** | Identifier of the transaction awaiting bank confirmation | [optional] 
**awaiting_bank_confirmation_transaction_identification** | **str** | Identification of the transaction awaiting bank confirmation | [optional] 
**awaiting_bank_confirmation_transaction_type** | [**OutgoingBankingTransactionType**](OutgoingBankingTransactionType.md) | Type of outgoing banking transaction awaiting confirmation | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) | List of associated property groups | [optional] 
**incoming_banking_transaction_id** | **str** | Identifier of the incoming banking transaction | [optional] 
**incoming_mutation_id** | **str** | Identifier of the incoming mutation | [optional] 
**outgoing_banking_transaction_id** | **str** | Identifier of the outgoing banking transaction | [optional] 
**outgoing_mutation_id** | **str** | Identifier of the outgoing mutation | [optional] 

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


