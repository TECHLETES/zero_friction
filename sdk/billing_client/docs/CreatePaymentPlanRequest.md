# CreatePaymentPlanRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_plan_number** | **str** |  | [optional] 
**customer_id** | **str** |  | 
**total_amount** | **float** |  | [optional] 
**payment_frequency** | [**PaymentFrequency**](PaymentFrequency.md) |  | 
**payment_configuration_type** | [**PaymentConfigurationType**](PaymentConfigurationType.md) |  | 
**amount_per_installment** | **float** |  | 
**duration** | **int** |  | 
**start_date** | **datetime** |  | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**transaction_ids** | **List[str]** |  | [optional] 
**collection_case_ids** | **List[str]** |  | [optional] 
**enable_reminders_communication** | **bool** |  | [optional] 
**preferred_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**overdue_tolerance_days** | **int** |  | [optional] 
**overdue_days** | **int** |  | [optional] 
**minimum_final_installment_amount** | **float** |  | [optional] 
**paid_amount** | **float** |  | [optional] 
**initial_status** | [**PaymentPlanStatus**](PaymentPlanStatus.md) |  | 
**skip_activation_communication** | **bool** |  | [optional] 
**payment_reference** | **str** |  | [optional] 
**last_payment_date** | **datetime** |  | [optional] 

## Example

```python
from billing_client.models.create_payment_plan_request import CreatePaymentPlanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreatePaymentPlanRequest from a JSON string
create_payment_plan_request_instance = CreatePaymentPlanRequest.from_json(json)
# print the JSON string representation of the object
print(CreatePaymentPlanRequest.to_json())

# convert the object into a dict
create_payment_plan_request_dict = create_payment_plan_request_instance.to_dict()
# create an instance of CreatePaymentPlanRequest from a dict
create_payment_plan_request_from_dict = CreatePaymentPlanRequest.from_dict(create_payment_plan_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


