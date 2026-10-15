# UpdatePaymentPlanParametersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**require_approval** | **bool** |  | [optional] 
**auto_cancellation** | **bool** |  | [optional] 
**enable_auto_recalculation** | **bool** |  | [optional] 
**send_recalculation_communication** | **bool** |  | [optional] 
**minimum_amount** | **float** |  | [optional] 
**maximum_period_in_months** | **int** |  | [optional] 
**default_overdue_days** | **int** |  | [optional] 
**minimum_final_installment_amount** | **float** |  | [optional] 
**fallback_default_duration** | **int** |  | [optional] 
**sdd_collection_days_before_due** | **int** |  | [optional] 
**reminder_days_after_due** | **int** |  | [optional] 

## Example

```python
from configuration_client.models.update_payment_plan_parameters_request import UpdatePaymentPlanParametersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePaymentPlanParametersRequest from a JSON string
update_payment_plan_parameters_request_instance = UpdatePaymentPlanParametersRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePaymentPlanParametersRequest.to_json())

# convert the object into a dict
update_payment_plan_parameters_request_dict = update_payment_plan_parameters_request_instance.to_dict()
# create an instance of UpdatePaymentPlanParametersRequest from a dict
update_payment_plan_parameters_request_from_dict = UpdatePaymentPlanParametersRequest.from_dict(update_payment_plan_parameters_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


