# UpdateCustomerGroupSettingsAutomaticSettlementRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automatic_settlement** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.update_customer_group_settings_automatic_settlement_request import UpdateCustomerGroupSettingsAutomaticSettlementRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCustomerGroupSettingsAutomaticSettlementRequest from a JSON string
update_customer_group_settings_automatic_settlement_request_instance = UpdateCustomerGroupSettingsAutomaticSettlementRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateCustomerGroupSettingsAutomaticSettlementRequest.to_json())

# convert the object into a dict
update_customer_group_settings_automatic_settlement_request_dict = update_customer_group_settings_automatic_settlement_request_instance.to_dict()
# create an instance of UpdateCustomerGroupSettingsAutomaticSettlementRequest from a dict
update_customer_group_settings_automatic_settlement_request_from_dict = UpdateCustomerGroupSettingsAutomaticSettlementRequest.from_dict(update_customer_group_settings_automatic_settlement_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


