# TransactionReferenceParametersDTOPrepaymentCostReferenceParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**prepayment_cost_id** | **str** |  | [optional]
**prepayment_account_id** | **str** |  | [optional]
**prepayment_account_number** | **str** |  | [optional]
**production_day** | **int** |  | [optional]
**production_day_start_utc** | **datetime** |  | [optional]
**production_day_end_utc** | **datetime** |  | [optional]

## Example

```python
from billing_client.models.transaction_reference_parameters_dto_prepayment_cost_reference_parameters_dto import TransactionReferenceParametersDTOPrepaymentCostReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TransactionReferenceParametersDTOPrepaymentCostReferenceParametersDTO from a JSON string
transaction_reference_parameters_dto_prepayment_cost_reference_parameters_dto_instance = TransactionReferenceParametersDTOPrepaymentCostReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(TransactionReferenceParametersDTOPrepaymentCostReferenceParametersDTO.to_json())

# convert the object into a dict
transaction_reference_parameters_dto_prepayment_cost_reference_parameters_dto_dict = transaction_reference_parameters_dto_prepayment_cost_reference_parameters_dto_instance.to_dict()
# create an instance of TransactionReferenceParametersDTOPrepaymentCostReferenceParametersDTO from a dict
transaction_reference_parameters_dto_prepayment_cost_reference_parameters_dto_from_dict = TransactionReferenceParametersDTOPrepaymentCostReferenceParametersDTO.from_dict(transaction_reference_parameters_dto_prepayment_cost_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
