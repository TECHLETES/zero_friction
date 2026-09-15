# UpdatePaymentPlanRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_amount** | **float** |  | [optional] 
**status** | [**PaymentPlanStatus**](PaymentPlanStatus.md) |  | [optional] 
**payment_frequency** | [**PaymentFrequency**](PaymentFrequency.md) |  | 
**payment_configuration_type** | [**PaymentConfigurationType**](PaymentConfigurationType.md) |  | 
**amount_per_installment** | **float** |  | 
**duration** | **int** |  | 
**start_date** | **datetime** |  | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | 
**enable_reminders_communication** | **bool** |  | [optional] 
**preferred_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**overdue_days** | **int** |  | [optional] 
**send_configuration_update_communication** | **bool** |  | [optional] 
**minimum_final_installment_amount** | **float** |  | [optional] 

## Example

```python
from billing_client.models.update_payment_plan_request import UpdatePaymentPlanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePaymentPlanRequest from a JSON string
update_payment_plan_request_instance = UpdatePaymentPlanRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePaymentPlanRequest.to_json())

# convert the object into a dict
update_payment_plan_request_dict = update_payment_plan_request_instance.to_dict()
# create an instance of UpdatePaymentPlanRequest from a dict
update_payment_plan_request_from_dict = UpdatePaymentPlanRequest.from_dict(update_payment_plan_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


