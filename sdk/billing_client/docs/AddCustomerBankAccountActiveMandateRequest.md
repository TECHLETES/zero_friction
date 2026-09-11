# AddCustomerBankAccountActiveMandateRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**MandateType**](MandateType.md) |  |
**signed_date_time** | **datetime** |  | [optional]
**company_bank_account_id** | **str** |  | [optional]

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
