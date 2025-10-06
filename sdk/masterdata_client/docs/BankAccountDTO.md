# BankAccountDTO

Represents a bank account associated with a customer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**iban** | **str** | International Bank Account Number (IBAN) | [optional] 
**is_default** | **bool** | Indicates whether this is the default bank account | [optional] 

## Example

```python
from masterdata_client.models.bank_account_dto import BankAccountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BankAccountDTO from a JSON string
bank_account_dto_instance = BankAccountDTO.from_json(json)
# print the JSON string representation of the object
print(BankAccountDTO.to_json())

# convert the object into a dict
bank_account_dto_dict = bank_account_dto_instance.to_dict()
# create an instance of BankAccountDTO from a dict
bank_account_dto_from_dict = BankAccountDTO.from_dict(bank_account_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


