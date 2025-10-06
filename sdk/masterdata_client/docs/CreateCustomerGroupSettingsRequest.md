# CreateCustomerGroupSettingsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automatic_settlement** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.create_customer_group_settings_request import CreateCustomerGroupSettingsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateCustomerGroupSettingsRequest from a JSON string
create_customer_group_settings_request_instance = CreateCustomerGroupSettingsRequest.from_json(json)
# print the JSON string representation of the object
print(CreateCustomerGroupSettingsRequest.to_json())

# convert the object into a dict
create_customer_group_settings_request_dict = create_customer_group_settings_request_instance.to_dict()
# create an instance of CreateCustomerGroupSettingsRequest from a dict
create_customer_group_settings_request_from_dict = CreateCustomerGroupSettingsRequest.from_dict(create_customer_group_settings_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


