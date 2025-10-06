# CustomerGroupSettingsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**automatic_settlement** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.customer_group_settings_dto import CustomerGroupSettingsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerGroupSettingsDTO from a JSON string
customer_group_settings_dto_instance = CustomerGroupSettingsDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerGroupSettingsDTO.to_json())

# convert the object into a dict
customer_group_settings_dto_dict = customer_group_settings_dto_instance.to_dict()
# create an instance of CustomerGroupSettingsDTO from a dict
customer_group_settings_dto_from_dict = CustomerGroupSettingsDTO.from_dict(customer_group_settings_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


