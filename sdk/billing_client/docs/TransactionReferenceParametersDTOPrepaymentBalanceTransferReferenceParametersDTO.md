# TransactionReferenceParametersDTOPrepaymentBalanceTransferReferenceParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**ppa_correction_id** | **str** |  | [optional] 
**prepayment_account_id** | **str** |  | [optional] 
**prepayment_account_number** | **str** |  | [optional] 

## Example

```python
from billing_client.models.transaction_reference_parameters_dto_prepayment_balance_transfer_reference_parameters_dto import TransactionReferenceParametersDTOPrepaymentBalanceTransferReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TransactionReferenceParametersDTOPrepaymentBalanceTransferReferenceParametersDTO from a JSON string
transaction_reference_parameters_dto_prepayment_balance_transfer_reference_parameters_dto_instance = TransactionReferenceParametersDTOPrepaymentBalanceTransferReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(TransactionReferenceParametersDTOPrepaymentBalanceTransferReferenceParametersDTO.to_json())

# convert the object into a dict
transaction_reference_parameters_dto_prepayment_balance_transfer_reference_parameters_dto_dict = transaction_reference_parameters_dto_prepayment_balance_transfer_reference_parameters_dto_instance.to_dict()
# create an instance of TransactionReferenceParametersDTOPrepaymentBalanceTransferReferenceParametersDTO from a dict
transaction_reference_parameters_dto_prepayment_balance_transfer_reference_parameters_dto_from_dict = TransactionReferenceParametersDTOPrepaymentBalanceTransferReferenceParametersDTO.from_dict(transaction_reference_parameters_dto_prepayment_balance_transfer_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


