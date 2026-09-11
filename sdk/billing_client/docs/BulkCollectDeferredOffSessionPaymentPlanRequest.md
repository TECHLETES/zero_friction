# BulkCollectDeferredOffSessionPaymentPlanRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**PaymentPlanQueryParams**](PaymentPlanQueryParams.md) |  |
**quick_filter** | **str** |  | [optional]

## Example

```python
from billing_client.models.bulk_collect_deferred_off_session_payment_plan_request import BulkCollectDeferredOffSessionPaymentPlanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkCollectDeferredOffSessionPaymentPlanRequest from a JSON string
bulk_collect_deferred_off_session_payment_plan_request_instance = BulkCollectDeferredOffSessionPaymentPlanRequest.from_json(json)
# print the JSON string representation of the object
print(BulkCollectDeferredOffSessionPaymentPlanRequest.to_json())

# convert the object into a dict
bulk_collect_deferred_off_session_payment_plan_request_dict = bulk_collect_deferred_off_session_payment_plan_request_instance.to_dict()
# create an instance of BulkCollectDeferredOffSessionPaymentPlanRequest from a dict
bulk_collect_deferred_off_session_payment_plan_request_from_dict = BulkCollectDeferredOffSessionPaymentPlanRequest.from_dict(bulk_collect_deferred_off_session_payment_plan_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
