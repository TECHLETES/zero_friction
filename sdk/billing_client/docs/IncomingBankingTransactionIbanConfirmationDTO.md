# IncomingBankingTransactionIbanConfirmationDTO

Represents an IBAN confirmation associated with an incoming banking transaction.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_id** | **str** | The unique identifier of the customer. | [optional] 
**iban** | **str** | The International Bank Account Number (IBAN) being confirmed. | [optional] 

## Example

```python
from billing_client.models.incoming_banking_transaction_iban_confirmation_dto import IncomingBankingTransactionIbanConfirmationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingBankingTransactionIbanConfirmationDTO from a JSON string
incoming_banking_transaction_iban_confirmation_dto_instance = IncomingBankingTransactionIbanConfirmationDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingBankingTransactionIbanConfirmationDTO.to_json())

# convert the object into a dict
incoming_banking_transaction_iban_confirmation_dto_dict = incoming_banking_transaction_iban_confirmation_dto_instance.to_dict()
# create an instance of IncomingBankingTransactionIbanConfirmationDTO from a dict
incoming_banking_transaction_iban_confirmation_dto_from_dict = IncomingBankingTransactionIbanConfirmationDTO.from_dict(incoming_banking_transaction_iban_confirmation_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


