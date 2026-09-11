# OutgoingMutationCustomerBankAccountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**iban** | **str** |  | [optional]
**account_holder** | **str** |  | [optional]
**mandate_number** | **str** |  | [optional]
**mandate_signed_date** | **datetime** |  | [optional]
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional]

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
