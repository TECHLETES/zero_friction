# BulkResumePaymentPlanRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**PaymentPlanQueryParams**](PaymentPlanQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**recalculate_installments** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.bulk_resume_payment_plan_request import BulkResumePaymentPlanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkResumePaymentPlanRequest from a JSON string
bulk_resume_payment_plan_request_instance = BulkResumePaymentPlanRequest.from_json(json)
# print the JSON string representation of the object
print(BulkResumePaymentPlanRequest.to_json())

# convert the object into a dict
bulk_resume_payment_plan_request_dict = bulk_resume_payment_plan_request_instance.to_dict()
# create an instance of BulkResumePaymentPlanRequest from a dict
bulk_resume_payment_plan_request_from_dict = BulkResumePaymentPlanRequest.from_dict(bulk_resume_payment_plan_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


