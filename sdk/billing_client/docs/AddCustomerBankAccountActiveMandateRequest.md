# AddCustomerBankAccountActiveMandateRequest

Represents the mandate information for a customer's bank account.  This DTO contains details about the mandate that authorizes direct debit transactions.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**MandateType**](MandateType.md) | The type of mandate (e.g., CORE, B2B).  Currently only CORE mandates are supported. | [optional] 
**signed_date_time** | **datetime** | The date and time when the mandate was signed by the customer. | [optional] 

## Example

```python
from billing_client.models.add_customer_bank_account_active_mandate_request import AddCustomerBankAccountActiveMandateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AddCustomerBankAccountActiveMandateRequest from a JSON string
add_customer_bank_account_active_mandate_request_instance = AddCustomerBankAccountActiveMandateRequest.from_json(json)
# print the JSON string representation of the object
print(AddCustomerBankAccountActiveMandateRequest.to_json())

# convert the object into a dict
add_customer_bank_account_active_mandate_request_dict = add_customer_bank_account_active_mandate_request_instance.to_dict()
# create an instance of AddCustomerBankAccountActiveMandateRequest from a dict
add_customer_bank_account_active_mandate_request_from_dict = AddCustomerBankAccountActiveMandateRequest.from_dict(add_customer_bank_account_active_mandate_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


