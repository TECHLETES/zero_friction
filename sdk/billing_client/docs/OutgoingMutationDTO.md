# OutgoingMutationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**outgoing_banking_transaction_id** | **str** |  | [optional] 
**type** | [**OutgoingBankingTransactionType**](OutgoingBankingTransactionType.md) |  | [optional] 
**amount** | **float** |  | [optional] 
**description** | **str** |  | [optional] 
**reference_details** | [**OutgoingMutationReferenceDetailsDTO**](OutgoingMutationReferenceDetailsDTO.md) |  | [optional] 
**customer_bank_account** | [**OutgoingMutationCustomerBankAccountDTO**](OutgoingMutationCustomerBankAccountDTO.md) |  | [optional] 
**status** | [**OutgoingMutationStatus**](OutgoingMutationStatus.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**confirming_incoming_banking_transaction_id** | **str** |  | [optional] 
**confirming_incoming_banking_transaction_identification** | **str** |  | [optional] 
**confirming_incoming_mutation_id** | **str** |  | [optional] 
**reverting_incoming_banking_transaction_id** | **str** |  | [optional] 
**reverting_incoming_banking_transaction_identification** | **str** |  | [optional] 
**reverting_incoming_mutation_id** | **str** |  | [optional] 
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


