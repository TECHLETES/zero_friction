# BulkDeletePaymentPlanRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**PaymentPlanQueryParams**](PaymentPlanQueryParams.md) |  |
**quick_filter** | **str** |  | [optional]

## Example

```python
from billing_client.models.bulk_delete_payment_plan_request import BulkDeletePaymentPlanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkDeletePaymentPlanRequest from a JSON string
bulk_delete_payment_plan_request_instance = BulkDeletePaymentPlanRequest.from_json(json)
# print the JSON string representation of the object
print(BulkDeletePaymentPlanRequest.to_json())

# convert the object into a dict
bulk_delete_payment_plan_request_dict = bulk_delete_payment_plan_request_instance.to_dict()
# create an instance of BulkDeletePaymentPlanRequest from a dict
bulk_delete_payment_plan_request_from_dict = BulkDeletePaymentPlanRequest.from_dict(bulk_delete_payment_plan_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
