# PaymentDTO

Represents a payment in the billing system.  This DTO contains comprehensive information about the payment, including its status, amounts, and related transactions.

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
**type** | [**PaymentType**](PaymentType.md) | The type of payment. | [optional] 
**payment_date_time** | **datetime** | The date and time when the payment was made. | [optional] 
**payment_reference** | **str** | The unique reference number for the payment. | [optional] 
**remittance_information** | **str** | Additional remittance information associated with the payment. | [optional] 
**amount** | **float** | The amount of the payment. | [optional] 
**company_bank_account_id** | **str** | The unique identifier of the company bank account. | [optional] 
**debtor** | [**DebtorDTO**](DebtorDTO.md) | Information about the debtor associated with this payment. | [optional] 
**customer_bank_account_iban** | **str** | The IBAN of the customer&#39;s bank account. | [optional] 
**is_manual** | **bool** | Indicates whether this payment was manually entered. | [optional] 
**payment_entity_references** | [**List[PaymentEntityReferenceDTO]**](PaymentEntityReferenceDTO.md) | List of entity references associated with this payment. | [optional] 
**is_reversed** | **bool** | Indicates whether this payment has been reversed. | [optional] 
**reversal_details** | [**PaymentReversalDetailsDTO**](PaymentReversalDetailsDTO.md) | Details about the payment reversal, if applicable. | [optional] 
**outgoing_mutation_id** | **str** | The ID of the associated outgoing mutation. | [optional] 
**outgoing_banking_transaction_id** | **str** | The ID of the associated outgoing banking transaction. | [optional] 
**outgoing_banking_transaction_identification** | **str** | The identification of the associated outgoing banking transaction. | [optional] 
**is_confirmed_by_bank** | **bool** | Indicates whether this payment has been confirmed by the bank. | [optional] 
**incoming_banking_transaction_id** | **str** | The ID of the associated incoming banking transaction. | [optional] 
**incoming_banking_transaction_identification** | **str** | The identification of the associated incoming banking transaction. | [optional] 
**incoming_mutation_id** | **str** | The ID of the associated incoming mutation. | [optional] 
**canonical_search** | **str** | A canonical search string for this payment. | [optional] 

## Example

```python
from billing_client.models.payment_dto import PaymentDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentDTO from a JSON string
payment_dto_instance = PaymentDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentDTO.to_json())

# convert the object into a dict
payment_dto_dict = payment_dto_instance.to_dict()
# create an instance of PaymentDTO from a dict
payment_dto_from_dict = PaymentDTO.from_dict(payment_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


