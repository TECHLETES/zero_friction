# TransactionReferenceParametersDTOIgnoredIncomingBankingMutationReferenceParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**incoming_banking_transaction_id** | **str** |  | [optional]
**incoming_mutation_id** | **str** |  | [optional]
**description** | **str** |  | [optional]

## Example

```python
from billing_client.models.transaction_reference_parameters_dto_ignored_incoming_banking_mutation_reference_parameters_dto import TransactionReferenceParametersDTOIgnoredIncomingBankingMutationReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TransactionReferenceParametersDTOIgnoredIncomingBankingMutationReferenceParametersDTO from a JSON string
transaction_reference_parameters_dto_ignored_incoming_banking_mutation_reference_parameters_dto_instance = TransactionReferenceParametersDTOIgnoredIncomingBankingMutationReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(TransactionReferenceParametersDTOIgnoredIncomingBankingMutationReferenceParametersDTO.to_json())

# convert the object into a dict
transaction_reference_parameters_dto_ignored_incoming_banking_mutation_reference_parameters_dto_dict = transaction_reference_parameters_dto_ignored_incoming_banking_mutation_reference_parameters_dto_instance.to_dict()
# create an instance of TransactionReferenceParametersDTOIgnoredIncomingBankingMutationReferenceParametersDTO from a dict
transaction_reference_parameters_dto_ignored_incoming_banking_mutation_reference_parameters_dto_from_dict = TransactionReferenceParametersDTOIgnoredIncomingBankingMutationReferenceParametersDTO.from_dict(transaction_reference_parameters_dto_ignored_incoming_banking_mutation_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
