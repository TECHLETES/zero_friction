# CustomerBillingSettingsAutomaticSettlementDTO

Represents automatic settlement settings for a customer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automatic_settlement** | **bool** | Indicates whether automatic settlement is enabled | [optional] 
**originator_type** | [**EntitySubjectType**](EntitySubjectType.md) | Type of entity that initiated the automatic settlement | [optional] 
**originator_id** | **str** | Identifier of the entity that initiated the automatic settlement | [optional] 

## Example

```python
from masterdata_client.models.customer_billing_settings_automatic_settlement_dto import CustomerBillingSettingsAutomaticSettlementDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerBillingSettingsAutomaticSettlementDTO from a JSON string
customer_billing_settings_automatic_settlement_dto_instance = CustomerBillingSettingsAutomaticSettlementDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerBillingSettingsAutomaticSettlementDTO.to_json())

# convert the object into a dict
customer_billing_settings_automatic_settlement_dto_dict = customer_billing_settings_automatic_settlement_dto_instance.to_dict()
# create an instance of CustomerBillingSettingsAutomaticSettlementDTO from a dict
customer_billing_settings_automatic_settlement_dto_from_dict = CustomerBillingSettingsAutomaticSettlementDTO.from_dict(customer_billing_settings_automatic_settlement_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


