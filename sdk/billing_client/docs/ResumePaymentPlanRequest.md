# ResumePaymentPlanRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recalculate_installments** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.resume_payment_plan_request import ResumePaymentPlanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ResumePaymentPlanRequest from a JSON string
resume_payment_plan_request_instance = ResumePaymentPlanRequest.from_json(json)
# print the JSON string representation of the object
print(ResumePaymentPlanRequest.to_json())

# convert the object into a dict
resume_payment_plan_request_dict = resume_payment_plan_request_instance.to_dict()
# create an instance of ResumePaymentPlanRequest from a dict
resume_payment_plan_request_from_dict = ResumePaymentPlanRequest.from_dict(resume_payment_plan_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


