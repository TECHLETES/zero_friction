# TransactionReferenceParametersDTOPrepaymentCorrectionReferenceParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**payment_reference** | **str** |  | [optional] 
**remittance_information** | **str** |  | [optional] 
**payment_date_time** | **datetime** |  | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**payment_type** | [**PaymentType**](PaymentType.md) |  | [optional] 
**is_manual** | **bool** |  | [optional] 
**prepayment_account_id** | **str** |  | [optional] 
**is_psp_refund** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.transaction_reference_parameters_dto_prepayment_correction_reference_parameters_dto import TransactionReferenceParametersDTOPrepaymentCorrectionReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TransactionReferenceParametersDTOPrepaymentCorrectionReferenceParametersDTO from a JSON string
transaction_reference_parameters_dto_prepayment_correction_reference_parameters_dto_instance = TransactionReferenceParametersDTOPrepaymentCorrectionReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(TransactionReferenceParametersDTOPrepaymentCorrectionReferenceParametersDTO.to_json())

# convert the object into a dict
transaction_reference_parameters_dto_prepayment_correction_reference_parameters_dto_dict = transaction_reference_parameters_dto_prepayment_correction_reference_parameters_dto_instance.to_dict()
# create an instance of TransactionReferenceParametersDTOPrepaymentCorrectionReferenceParametersDTO from a dict
transaction_reference_parameters_dto_prepayment_correction_reference_parameters_dto_from_dict = TransactionReferenceParametersDTOPrepaymentCorrectionReferenceParametersDTO.from_dict(transaction_reference_parameters_dto_prepayment_correction_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


