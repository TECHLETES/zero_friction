# OutgoingMutationDTO

Represents an outgoing mutation in the banking system.  This DTO contains comprehensive information about the mutation, including its status, amount, and related transactions.

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
**outgoing_banking_transaction_id** | **str** | The unique identifier of the associated outgoing banking transaction. | [optional] 
**type** | [**OutgoingBankingTransactionType**](OutgoingBankingTransactionType.md) | The type of outgoing banking transaction. | [optional] 
**amount** | **float** | The amount of the mutation. | [optional] 
**description** | **str** | A description of the mutation. | [optional] 
**reference_details** | [**OutgoingMutationReferenceDetailsDTO**](OutgoingMutationReferenceDetailsDTO.md) | Reference details associated with this mutation. | [optional] 
**customer_bank_account** | [**OutgoingMutationCustomerBankAccountDTO**](OutgoingMutationCustomerBankAccountDTO.md) | Information about the customer&#39;s bank account. | [optional] 
**status** | [**OutgoingMutationStatus**](OutgoingMutationStatus.md) | The current status of the outgoing mutation. | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) | List of localized errors associated with this mutation. | [optional] 
**confirming_incoming_banking_transaction_id** | **str** | The ID of the incoming banking transaction that confirms this mutation. | [optional] 
**confirming_incoming_banking_transaction_identification** | **str** | The identification of the incoming banking transaction that confirms this mutation. | [optional] 
**confirming_incoming_mutation_id** | **str** | The ID of the incoming mutation that confirms this mutation. | [optional] 
**reverting_incoming_banking_transaction_id** | **str** | The ID of the incoming banking transaction that reverts this mutation. | [optional] 
**reverting_incoming_banking_transaction_identification** | **str** | The identification of the incoming banking transaction that reverts this mutation. | [optional] 
**reverting_incoming_mutation_id** | **str** | The ID of the incoming mutation that reverts this mutation. | [optional] 

## Example

```python
from billing_client.models.outgoing_mutation_dto import OutgoingMutationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingMutationDTO from a JSON string
outgoing_mutation_dto_instance = OutgoingMutationDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingMutationDTO.to_json())

# convert the object into a dict
outgoing_mutation_dto_dict = outgoing_mutation_dto_instance.to_dict()
# create an instance of OutgoingMutationDTO from a dict
outgoing_mutation_dto_from_dict = OutgoingMutationDTO.from_dict(outgoing_mutation_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


