# CustomerPortalPropertiesDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**application_user_id** | **str** |  | [optional]
**confirm_account_token** | **str** |  | [optional]
**reset_password_token** | **str** |  | [optional]
**email** | **str** |  | [optional]
**email_confirmed** | **bool** |  | [optional]

## Example

```python
from masterdata_client.models.customer_portal_properties_dto import CustomerPortalPropertiesDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CustomerPortalPropertiesDTO from a JSON string
customer_portal_properties_dto_instance = CustomerPortalPropertiesDTO.from_json(json)
# print the JSON string representation of the object
print(CustomerPortalPropertiesDTO.to_json())

# convert the object into a dict
customer_portal_properties_dto_dict = customer_portal_properties_dto_instance.to_dict()
# create an instance of CustomerPortalPropertiesDTO from a dict
customer_portal_properties_dto_from_dict = CustomerPortalPropertiesDTO.from_dict(customer_portal_properties_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
