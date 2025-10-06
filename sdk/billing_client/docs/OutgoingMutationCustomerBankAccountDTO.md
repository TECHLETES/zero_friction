# OutgoingMutationCustomerBankAccountDTO

Contains information about a customer's bank account for an outgoing mutation.  This DTO includes details about the account and associated mandate information.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**iban** | **str** | The International Bank Account Number (IBAN) of the customer&#39;s account. | [optional] 
**account_holder** | **str** | The name of the account holder. | [optional] 
**mandate_number** | **str** | The mandate number associated with this account. | [optional] 
**mandate_signed_date** | **datetime** | The date when the mandate was signed. | [optional] 

## Example

```python
from billing_client.models.outgoing_mutation_customer_bank_account_dto import OutgoingMutationCustomerBankAccountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingMutationCustomerBankAccountDTO from a JSON string
outgoing_mutation_customer_bank_account_dto_instance = OutgoingMutationCustomerBankAccountDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingMutationCustomerBankAccountDTO.to_json())

# convert the object into a dict
outgoing_mutation_customer_bank_account_dto_dict = outgoing_mutation_customer_bank_account_dto_instance.to_dict()
# create an instance of OutgoingMutationCustomerBankAccountDTO from a dict
outgoing_mutation_customer_bank_account_dto_from_dict = OutgoingMutationCustomerBankAccountDTO.from_dict(outgoing_mutation_customer_bank_account_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


