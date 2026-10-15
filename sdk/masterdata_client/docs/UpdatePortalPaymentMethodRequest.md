# UpdatePortalPaymentMethodRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | 
**accept_direct_debit** | **bool** |  | [optional] 
**queue_communication** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.update_portal_payment_method_request import UpdatePortalPaymentMethodRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePortalPaymentMethodRequest from a JSON string
update_portal_payment_method_request_instance = UpdatePortalPaymentMethodRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePortalPaymentMethodRequest.to_json())

# convert the object into a dict
update_portal_payment_method_request_dict = update_portal_payment_method_request_instance.to_dict()
# create an instance of UpdatePortalPaymentMethodRequest from a dict
update_portal_payment_method_request_from_dict = UpdatePortalPaymentMethodRequest.from_dict(update_portal_payment_method_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


