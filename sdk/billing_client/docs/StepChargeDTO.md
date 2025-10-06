# StepChargeDTO

Represents charges associated with a collection step.  This DTO contains information about the amount charged and the associated transaction.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**step_charge_amount_incl_vat** | **float** | The charge amount including VAT. | [optional] 
**step_vat_amount** | **float** | The VAT amount for this charge. | [optional] 
**transaction_id** | **str** | The unique identifier of the transaction associated with this charge. | [optional] 

## Example

```python
from billing_client.models.step_charge_dto import StepChargeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of StepChargeDTO from a JSON string
step_charge_dto_instance = StepChargeDTO.from_json(json)
# print the JSON string representation of the object
print(StepChargeDTO.to_json())

# convert the object into a dict
step_charge_dto_dict = step_charge_dto_instance.to_dict()
# create an instance of StepChargeDTO from a dict
step_charge_dto_from_dict = StepChargeDTO.from_dict(step_charge_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


