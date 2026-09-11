# TransactionReferenceParametersDTOPaymentReferenceParametersDTO


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

## Example

```python
from billing_client.models.transaction_reference_parameters_dto_payment_reference_parameters_dto import TransactionReferenceParametersDTOPaymentReferenceParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TransactionReferenceParametersDTOPaymentReferenceParametersDTO from a JSON string
transaction_reference_parameters_dto_payment_reference_parameters_dto_instance = TransactionReferenceParametersDTOPaymentReferenceParametersDTO.from_json(json)
# print the JSON string representation of the object
print(TransactionReferenceParametersDTOPaymentReferenceParametersDTO.to_json())

# convert the object into a dict
transaction_reference_parameters_dto_payment_reference_parameters_dto_dict = transaction_reference_parameters_dto_payment_reference_parameters_dto_instance.to_dict()
# create an instance of TransactionReferenceParametersDTOPaymentReferenceParametersDTO from a dict
transaction_reference_parameters_dto_payment_reference_parameters_dto_from_dict = TransactionReferenceParametersDTOPaymentReferenceParametersDTO.from_dict(transaction_reference_parameters_dto_payment_reference_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
