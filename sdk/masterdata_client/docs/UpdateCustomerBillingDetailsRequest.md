# UpdateCustomerBillingDetailsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_terms_id** | **str** |  | [optional] 
**default_payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 

## Example

```python
from masterdata_client.models.update_customer_billing_details_request import UpdateCustomerBillingDetailsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateCustomerBillingDetailsRequest from a JSON string
update_customer_billing_details_request_instance = UpdateCustomerBillingDetailsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateCustomerBillingDetailsRequest.to_json())

# convert the object into a dict
update_customer_billing_details_request_dict = update_customer_billing_details_request_instance.to_dict()
# create an instance of UpdateCustomerBillingDetailsRequest from a dict
update_customer_billing_details_request_from_dict = UpdateCustomerBillingDetailsRequest.from_dict(update_customer_billing_details_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


