# UpdateCustomerBankAccountActiveMandateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **str** |  | [optional]
**type** | [**MandateType**](MandateType.md) |  |
**signed_date_time** | **datetime** |  | [optional]
**company_bank_account_id** | **str** |  | [optional]

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
