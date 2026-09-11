# PaymentPlanDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_plan_id** | **str** |  | [optional]
**payment_plan_number** | **str** |  | [optional]
**closed** | **bool** |  | [optional]
**status** | [**PaymentPlanStatus**](PaymentPlanStatus.md) |  | [optional]
**total_amount** | **float** |  | [optional]
**remaining_amount** | **float** |  | [optional]
**number_of_installments** | **int** |  | [optional]
**paid_installments_count** | **int** |  | [optional]
**pending_installments_count** | **int** |  | [optional]
**overdue_installments_count** | **int** |  | [optional]
**next_installment_due** | **datetime** |  | [optional]
**start_date** | **datetime** |  | [optional]
**end_date** | **datetime** |  | [optional]
**payment_frequency** | [**PaymentFrequency**](PaymentFrequency.md) |  | [optional]
**amount_per_installment** | **float** |  | [optional]
**final_installment_amount** | **float** |  | [optional]
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional]
**payment_reference** | **str** |  | [optional]

## Example

```python
from billing_client.models.payment_plan_details_dto import PaymentPlanDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentPlanDetailsDTO from a JSON string
payment_plan_details_dto_instance = PaymentPlanDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentPlanDetailsDTO.to_json())

# convert the object into a dict
payment_plan_details_dto_dict = payment_plan_details_dto_instance.to_dict()
# create an instance of PaymentPlanDetailsDTO from a dict
payment_plan_details_dto_from_dict = PaymentPlanDetailsDTO.from_dict(payment_plan_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
