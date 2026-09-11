# AddCustomerBankAccountRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_default** | **bool** |  | [optional]
**active_mandate** | [**AddCustomerBankAccountActiveMandateRequest**](AddCustomerBankAccountActiveMandateRequest.md) |  | [optional]
**iban** | **str** |  | [optional]
**bic** | **str** |  | [optional]

## Example

```python
from billing_client.models.add_customer_bank_account_request import AddCustomerBankAccountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AddCustomerBankAccountRequest from a JSON string
add_customer_bank_account_request_instance = AddCustomerBankAccountRequest.from_json(json)
# print the JSON string representation of the object
print(AddCustomerBankAccountRequest.to_json())

# convert the object into a dict
add_customer_bank_account_request_dict = add_customer_bank_account_request_instance.to_dict()
# create an instance of AddCustomerBankAccountRequest from a dict
add_customer_bank_account_request_from_dict = AddCustomerBankAccountRequest.from_dict(add_customer_bank_account_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
