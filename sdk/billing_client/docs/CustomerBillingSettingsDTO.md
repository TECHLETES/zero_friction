# CustomerBillingSettingsDTO

Represents the billing settings for a customer.  This DTO contains configuration options that affect how billing is handled for the customer.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automatic_settlement_setting** | [**CustomerBillingSettingsAutomaticSettlementDTO**](CustomerBillingSettingsAutomaticSettlementDTO.md) | Settings related to automatic settlement of transactions. | [optional] 

## Example

```python
from billing_client.models.customer_billing_settings_dto import CustomerBillingSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerBillingSettingsDTO from a JSON string
customer_billing_settings_dto_instance = CustomerBillingSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerBillingSettingsDTO.to_json())

# convert the object into a dict
customer_billing_settings_dto_dict = customer_billing_settings_dto_instance.to_dict()
# create an instance of CustomerBillingSettingsDTO from a dict
customer_billing_settings_dto_from_dict = CustomerBillingSettingsDTO.from_dict(customer_billing_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


