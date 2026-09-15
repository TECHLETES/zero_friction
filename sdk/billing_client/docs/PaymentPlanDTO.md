# PaymentPlanDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_plan_number** | **str** |  | [optional] 
**sequence_num** | **int** |  | [optional] 
**status** | [**PaymentPlanStatus**](PaymentPlanStatus.md) |  | [optional] 
**total_amount** | **float** |  | [optional] 
**remaining_amount** | **float** |  | [optional] 
**payment_reference** | **str** |  | [optional] 
**debtor** | [**DebtorDTO**](DebtorDTO.md) |  | [optional] 
**property_groups** | [**List[PropertyGroupReferenceDTO]**](PropertyGroupReferenceDTO.md) |  | [optional] 
**number_of_installments** | **int** |  | [optional] 
**amount_per_installment** | **float** |  | [optional] 
**final_installment_amount** | **float** |  | [optional] 
**payment_frequency** | [**PaymentFrequency**](PaymentFrequency.md) |  | [optional] 
**start_date** | **datetime** |  | [optional] 
**end_date** | **datetime** |  | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**collection_details** | [**PaymentCollectionDetailsDTO**](PaymentCollectionDetailsDTO.md) |  | [optional] 
**company_bank_account_id** | **str** |  | [optional] 
**next_installment_due** | **datetime** |  | [optional] 
**overdue_days** | **int** |  | [optional] 
**enable_reminders_communication** | **bool** |  | [optional] 
**preferred_communication_type** | [**CommunicationType**](CommunicationType.md) |  | [optional] 
**has_communication_problems** | **bool** |  | [optional] 
**latest_communication_problem** | [**CommunicationProblemInfoDTO**](CommunicationProblemInfoDTO.md) |  | [optional] 
**pause_reason** | **str** |  | [optional] 
**cancellation_date** | **datetime** |  | [optional] 
**cancellation_reason** | **str** |  | [optional] 
**installments** | [**List[PaymentPlanInstallmentDTO]**](PaymentPlanInstallmentDTO.md) |  | [optional] 
**transaction_ids** | **List[str]** |  | [optional] 
**collection_case_ids** | **List[str]** |  | [optional] 
**custom_properties** | [**List[CustomEntityPropertyDTO]**](CustomEntityPropertyDTO.md) |  | [optional] 
**is_ready_for_collection** | **bool** |  | [optional] 
**is_overdue** | **bool** |  | [optional] 
**days_overdue** | **int** |  | [optional] 
**paid_installments_count** | **int** |  | [optional] 
**pending_installments_count** | **int** |  | [optional] 
**overdue_installments_count** | **int** |  | [optional] 
**paid_amount** | **float** |  | [optional] 
**pending_amount** | **float** |  | [optional] 
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
from billing_client.models.payment_plan_dto import PaymentPlanDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentPlanDTO from a JSON string
payment_plan_dto_instance = PaymentPlanDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentPlanDTO.to_json())

# convert the object into a dict
payment_plan_dto_dict = payment_plan_dto_instance.to_dict()
# create an instance of PaymentPlanDTO from a dict
payment_plan_dto_from_dict = PaymentPlanDTO.from_dict(payment_plan_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


