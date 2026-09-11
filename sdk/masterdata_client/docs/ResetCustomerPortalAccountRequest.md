# ResetCustomerPortalAccountRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**communication_email** | **str** |  |
**send_communication** | **bool** |  | [optional]

## Example

```python
from masterdata_client.models.reset_customer_portal_account_request import ResetCustomerPortalAccountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ResetCustomerPortalAccountRequest from a JSON string
reset_customer_portal_account_request_instance = ResetCustomerPortalAccountRequest.from_json(json)
# print the JSON string representation of the object
print(ResetCustomerPortalAccountRequest.to_json())

# convert the object into a dict
reset_customer_portal_account_request_dict = reset_customer_portal_account_request_instance.to_dict()
# create an instance of ResetCustomerPortalAccountRequest from a dict
reset_customer_portal_account_request_from_dict = ResetCustomerPortalAccountRequest.from_dict(reset_customer_portal_account_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
