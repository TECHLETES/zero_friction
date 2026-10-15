# BulkActivatePaymentPlanRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**PaymentPlanQueryParams**](PaymentPlanQueryParams.md) |  | 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from billing_client.models.bulk_activate_payment_plan_request import BulkActivatePaymentPlanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkActivatePaymentPlanRequest from a JSON string
bulk_activate_payment_plan_request_instance = BulkActivatePaymentPlanRequest.from_json(json)
# print the JSON string representation of the object
print(BulkActivatePaymentPlanRequest.to_json())

# convert the object into a dict
bulk_activate_payment_plan_request_dict = bulk_activate_payment_plan_request_instance.to_dict()
# create an instance of BulkActivatePaymentPlanRequest from a dict
bulk_activate_payment_plan_request_from_dict = BulkActivatePaymentPlanRequest.from_dict(bulk_activate_payment_plan_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


