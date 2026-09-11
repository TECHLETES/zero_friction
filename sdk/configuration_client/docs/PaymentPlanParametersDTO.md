# PaymentPlanParametersDTO


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
**organisation_id** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.payment_plan_parameters_dto import PaymentPlanParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentPlanParametersDTO from a JSON string
payment_plan_parameters_dto_instance = PaymentPlanParametersDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentPlanParametersDTO.to_json())

# convert the object into a dict
payment_plan_parameters_dto_dict = payment_plan_parameters_dto_instance.to_dict()
# create an instance of PaymentPlanParametersDTO from a dict
payment_plan_parameters_dto_from_dict = PaymentPlanParametersDTO.from_dict(payment_plan_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
