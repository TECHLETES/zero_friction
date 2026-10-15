# ConfirmCustomerPortalAccountRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**confirm_account_token** | **str** |  | 

## Example

```python
from masterdata_client.models.confirm_customer_portal_account_request import ConfirmCustomerPortalAccountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ConfirmCustomerPortalAccountRequest from a JSON string
confirm_customer_portal_account_request_instance = ConfirmCustomerPortalAccountRequest.from_json(json)
# print the JSON string representation of the object
print(ConfirmCustomerPortalAccountRequest.to_json())

# convert the object into a dict
confirm_customer_portal_account_request_dict = confirm_customer_portal_account_request_instance.to_dict()
# create an instance of ConfirmCustomerPortalAccountRequest from a dict
confirm_customer_portal_account_request_from_dict = ConfirmCustomerPortalAccountRequest.from_dict(confirm_customer_portal_account_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


