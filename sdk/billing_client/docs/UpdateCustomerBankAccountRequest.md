# UpdateCustomerBankAccountRequest

Represents a request to update an existing customer bank account.  This DTO is used to modify the details of a customer's bank account and its associated mandate information.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**iban** | **str** | The International Bank Account Number (IBAN) of the bank account. | [optional] 
**bic** | **str** | The Bank Identifier Code (BIC) of the bank. | [optional] 
**is_default** | **bool** | Indicates whether this bank account should be set as the default account for the customer. | [optional] 
**active_mandate** | [**UpdateCustomerBankAccountActiveMandateRequest**](UpdateCustomerBankAccountActiveMandateRequest.md) | Information about the active mandate associated with this bank account. | [optional] 

## Example

```python
from billing_client.models.update_customer_bank_account_request import UpdateCustomerBankAccountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCustomerBankAccountRequest from a JSON string
update_customer_bank_account_request_instance = UpdateCustomerBankAccountRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateCustomerBankAccountRequest.to_json())

# convert the object into a dict
update_customer_bank_account_request_dict = update_customer_bank_account_request_instance.to_dict()
# create an instance of UpdateCustomerBankAccountRequest from a dict
update_customer_bank_account_request_from_dict = UpdateCustomerBankAccountRequest.from_dict(update_customer_bank_account_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


