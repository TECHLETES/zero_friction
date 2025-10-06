# UpdateCustomerBankAccountActiveMandateRequest

Represents the updated mandate information for a customer's bank account.  This DTO contains details about the mandate that authorizes direct debit transactions.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **str** | The unique mandate number assigned to this mandate. | [optional] 
**type** | [**MandateType**](MandateType.md) | The type of mandate (e.g., CORE, B2B).  Currently only CORE mandates are supported. | [optional] 
**signed_date_time** | **datetime** | The date and time when the mandate was signed by the customer. | [optional] 

## Example

```python
from billing_client.models.update_customer_bank_account_active_mandate_request import UpdateCustomerBankAccountActiveMandateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCustomerBankAccountActiveMandateRequest from a JSON string
update_customer_bank_account_active_mandate_request_instance = UpdateCustomerBankAccountActiveMandateRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateCustomerBankAccountActiveMandateRequest.to_json())

# convert the object into a dict
update_customer_bank_account_active_mandate_request_dict = update_customer_bank_account_active_mandate_request_instance.to_dict()
# create an instance of UpdateCustomerBankAccountActiveMandateRequest from a dict
update_customer_bank_account_active_mandate_request_from_dict = UpdateCustomerBankAccountActiveMandateRequest.from_dict(update_customer_bank_account_active_mandate_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


