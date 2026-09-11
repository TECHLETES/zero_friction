# BulkCancelPaymentPlanRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**PaymentPlanQueryParams**](PaymentPlanQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]
**reason** | **str** |  | [optional]

## Example

```python
from billing_client.models.bulk_cancel_payment_plan_request import BulkCancelPaymentPlanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkCancelPaymentPlanRequest from a JSON string
bulk_cancel_payment_plan_request_instance = BulkCancelPaymentPlanRequest.from_json(json)
# print the JSON string representation of the object
print(BulkCancelPaymentPlanRequest.to_json())

# convert the object into a dict
bulk_cancel_payment_plan_request_dict = bulk_cancel_payment_plan_request_instance.to_dict()
# create an instance of BulkCancelPaymentPlanRequest from a dict
bulk_cancel_payment_plan_request_from_dict = BulkCancelPaymentPlanRequest.from_dict(bulk_cancel_payment_plan_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
