# BulkReopenCancelledPaymentPlanRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**PaymentPlanQueryParams**](PaymentPlanQueryParams.md) |  | 
**quick_filter** | **str** |  | [optional] 
**recalculate_remaining_installment_dates** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.bulk_reopen_cancelled_payment_plan_request import BulkReopenCancelledPaymentPlanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkReopenCancelledPaymentPlanRequest from a JSON string
bulk_reopen_cancelled_payment_plan_request_instance = BulkReopenCancelledPaymentPlanRequest.from_json(json)
# print the JSON string representation of the object
print(BulkReopenCancelledPaymentPlanRequest.to_json())

# convert the object into a dict
bulk_reopen_cancelled_payment_plan_request_dict = bulk_reopen_cancelled_payment_plan_request_instance.to_dict()
# create an instance of BulkReopenCancelledPaymentPlanRequest from a dict
bulk_reopen_cancelled_payment_plan_request_from_dict = BulkReopenCancelledPaymentPlanRequest.from_dict(bulk_reopen_cancelled_payment_plan_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


