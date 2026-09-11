# PaymentDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**PaymentType**](PaymentType.md) |  | [optional] 
**payment_date_time** | **datetime** |  | [optional] 
**payment_reference** | **str** |  | [optional] 
**remittance_information** | **str** |  | [optional] 
**amount** | **float** |  | [optional] 
**company_bank_account_id** | **str** |  | [optional] 
**debtor** | [**DebtorDTO**](DebtorDTO.md) |  | [optional] 
**source** | [**PaymentSourceDTO**](PaymentSourceDTO.md) |  | [optional] 
**customer_bank_account_iban** | **str** |  | [optional] 
**is_manual** | **bool** |  | [optional] 
**payment_entity_references** | [**List[PaymentEntityReferenceDTO]**](PaymentEntityReferenceDTO.md) |  | [optional] 
**is_reversed** | **bool** |  | [optional] 
**reversal_details** | [**PaymentReversalDetailsDTO**](PaymentReversalDetailsDTO.md) |  | [optional] 
**outgoing_mutation_id** | **str** |  | [optional] 
**outgoing_banking_transaction_id** | **str** |  | [optional] 
**outgoing_banking_transaction_identification** | **str** |  | [optional] 
**is_confirmed_by_bank** | **bool** |  | [optional] 
**incoming_banking_transaction_id** | **str** |  | [optional] 
**incoming_banking_transaction_identification** | **str** |  | [optional] 
**incoming_mutation_id** | **str** |  | [optional] 
**canonical_search** | **str** |  | [optional] 
**prepayment_account_id** | **str** |  | [optional] 
**psp** | [**PaymentPspSourceDTO**](PaymentPspSourceDTO.md) |  | [optional] 
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


