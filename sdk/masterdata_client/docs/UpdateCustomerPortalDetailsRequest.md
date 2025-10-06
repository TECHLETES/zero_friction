# UpdateCustomerPortalDetailsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**application_user_id** | **str** |  | [optional] 
**reset_password_token** | **str** |  | [optional] 
**confirm_account_token** | **str** |  | [optional] 
**email** | **str** |  | [optional] 
**send_communication** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.update_customer_portal_details_request import UpdateCustomerPortalDetailsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCustomerPortalDetailsRequest from a JSON string
update_customer_portal_details_request_instance = UpdateCustomerPortalDetailsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateCustomerPortalDetailsRequest.to_json())

# convert the object into a dict
update_customer_portal_details_request_dict = update_customer_portal_details_request_instance.to_dict()
# create an instance of UpdateCustomerPortalDetailsRequest from a dict
update_customer_portal_details_request_from_dict = UpdateCustomerPortalDetailsRequest.from_dict(update_customer_portal_details_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


