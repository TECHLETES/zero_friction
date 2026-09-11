# PaymentPlanInstallmentDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional]
**amount** | **float** |  | [optional]
**remaining_amount** | **float** |  | [optional]
**due_date** | **datetime** |  | [optional]
**status** | [**PaymentPlanInstallmentStatus**](PaymentPlanInstallmentStatus.md) |  | [optional]
**last_payment_date** | **datetime** |  | [optional]
**payment_transaction_id** | **str** |  | [optional]
**payment_intent** | [**PaymentIntentStateDTO**](PaymentIntentStateDTO.md) |  | [optional]
**psp_instrument** | [**PspInstrumentSnapshotDTO**](PspInstrumentSnapshotDTO.md) |  | [optional]
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional]
**collection_details** | [**PaymentCollectionDetailsDTO**](PaymentCollectionDetailsDTO.md) |  | [optional]
**collection_initiated_date** | **datetime** |  | [optional]
**collection_transaction_id** | **str** |  | [optional]
**outgoing_banking_transaction_id** | **str** |  | [optional]
**outgoing_banking_transaction_identification** | **str** |  | [optional]
**outgoing_mutation_id** | **str** |  | [optional]
**outgoing_banking_transaction_collection_date** | **datetime** |  | [optional]
**last_reminder_sent** | **datetime** |  | [optional]
**reminder_count** | **int** |  | [optional]
**reminder_dispatch_requested_at** | **datetime** |  | [optional]
**is_fully_paid** | **bool** |  | [optional]
**is_partially_paid** | **bool** |  | [optional]
**paid_amount** | **float** |  | [optional]

## Example

```python
from billing_client.models.payment_plan_installment_dto import PaymentPlanInstallmentDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentPlanInstallmentDTO from a JSON string
payment_plan_installment_dto_instance = PaymentPlanInstallmentDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentPlanInstallmentDTO.to_json())

# convert the object into a dict
payment_plan_installment_dto_dict = payment_plan_installment_dto_instance.to_dict()
# create an instance of PaymentPlanInstallmentDTO from a dict
payment_plan_installment_dto_from_dict = PaymentPlanInstallmentDTO.from_dict(payment_plan_installment_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
