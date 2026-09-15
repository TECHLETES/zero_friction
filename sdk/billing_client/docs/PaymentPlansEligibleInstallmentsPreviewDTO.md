# PaymentPlansEligibleInstallmentsPreviewDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_amount** | **float** |  | [optional] 
**number_of_installments** | **int** |  | [optional] 
**number_of_payment_plans** | **int** |  | [optional] 

## Example

```python
from billing_client.models.payment_plans_eligible_installments_preview_dto import PaymentPlansEligibleInstallmentsPreviewDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentPlansEligibleInstallmentsPreviewDTO from a JSON string
payment_plans_eligible_installments_preview_dto_instance = PaymentPlansEligibleInstallmentsPreviewDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentPlansEligibleInstallmentsPreviewDTO.to_json())

# convert the object into a dict
payment_plans_eligible_installments_preview_dto_dict = payment_plans_eligible_installments_preview_dto_instance.to_dict()
# create an instance of PaymentPlansEligibleInstallmentsPreviewDTO from a dict
payment_plans_eligible_installments_preview_dto_from_dict = PaymentPlansEligibleInstallmentsPreviewDTO.from_dict(payment_plans_eligible_installments_preview_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


