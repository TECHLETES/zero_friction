# TransactionReferenceParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**payment_reference** | **str** |  | [optional] 
**remittance_information** | **str** |  | [optional] 
**payment_date_time** | **datetime** |  | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**payment_type** | [**PaymentType**](PaymentType.md) |  | [optional] 
**is_manual** | **bool** |  | [optional] 
**invoice_num** | **str** |  | [optional] 
**period_start_date_time** | **datetime** |  | [optional] 
**period_end_date_time** | **datetime** |  | [optional] 
**invoice_type** | [**InvoiceType**](InvoiceType.md) |  | [optional] 
**collection_case_id** | **str** |  | [optional] 
**workflow_id** | **str** |  | [optional] 
**workflow_name** | **str** |  | [optional] 
**step_id** | **str** |  | [optional] 
**step_name** | **str** |  | [optional] 
**incoming_banking_transaction_id** | **str** |  | [optional] 
**incoming_mutation_id** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**prepayment_cost_id** | **str** |  | [optional] 
**prepayment_account_id** | **str** |  | [optional] 
**prepayment_account_number** | **str** |  | [optional] 
**production_day** | **int** |  | [optional] 
**production_day_start_utc** | **datetime** |  | [optional] 
**production_day_end_utc** | **datetime** |  | [optional] 
**is_psp_refund** | **bool** |  | [optional] 
**ppa_correction_id** | **str** |  | [optional] 

## Example

```python
from billing_client.models.transaction_reference_parameters_dto import TransactionReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TransactionReferenceParametersDTO from a JSON string
transaction_reference_parameters_dto_instance = TransactionReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(TransactionReferenceParametersDTO.to_json())

# convert the object into a dict
transaction_reference_parameters_dto_dict = transaction_reference_parameters_dto_instance.to_dict()
# create an instance of TransactionReferenceParametersDTO from a dict
transaction_reference_parameters_dto_from_dict = TransactionReferenceParametersDTO.from_dict(transaction_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


