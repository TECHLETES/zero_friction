# OutgoingMutationReferenceParametersDTOOutgoingMutationPaymentPlanReferenceParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**customer_id** | **str** |  | [optional]
**payment_plan_number** | **str** |  | [optional]
**total_amount** | **float** |  | [optional]
**remaining_amount** | **float** |  | [optional]
**status** | [**PaymentPlanStatus**](PaymentPlanStatus.md) |  | [optional]
**payment_frequency** | [**PaymentFrequency**](PaymentFrequency.md) |  | [optional]
**start_date** | **datetime** |  | [optional]
**end_date** | **datetime** |  | [optional]
**eligible_installments_count** | **int** |  | [optional]
**eligible_installments_amount** | **float** |  | [optional]
**eligible_installment_ids** | **List[str]** |  | [optional]

## Example

```python
from billing_client.models.outgoing_mutation_reference_parameters_dto_outgoing_mutation_payment_plan_reference_parameters_dto import OutgoingMutationReferenceParametersDTOOutgoingMutationPaymentPlanReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of OutgoingMutationReferenceParametersDTOOutgoingMutationPaymentPlanReferenceParametersDTO from a JSON string
outgoing_mutation_reference_parameters_dto_outgoing_mutation_payment_plan_reference_parameters_dto_instance = OutgoingMutationReferenceParametersDTOOutgoingMutationPaymentPlanReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(OutgoingMutationReferenceParametersDTOOutgoingMutationPaymentPlanReferenceParametersDTO.to_json())

# convert the object into a dict
outgoing_mutation_reference_parameters_dto_outgoing_mutation_payment_plan_reference_parameters_dto_dict = outgoing_mutation_reference_parameters_dto_outgoing_mutation_payment_plan_reference_parameters_dto_instance.to_dict()
# create an instance of OutgoingMutationReferenceParametersDTOOutgoingMutationPaymentPlanReferenceParametersDTO from a dict
outgoing_mutation_reference_parameters_dto_outgoing_mutation_payment_plan_reference_parameters_dto_from_dict = OutgoingMutationReferenceParametersDTOOutgoingMutationPaymentPlanReferenceParametersDTO.from_dict(outgoing_mutation_reference_parameters_dto_outgoing_mutation_payment_plan_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
