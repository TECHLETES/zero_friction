# PaymentSourceDTOPaymentBankSourceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**customer_bank_account_iban** | **str** |  | [optional]
**incoming** | [**PaymentBankIncomingOriginDTO**](PaymentBankIncomingOriginDTO.md) |  | [optional]
**outgoing** | [**PaymentBankOutgoingOriginDTO**](PaymentBankOutgoingOriginDTO.md) |  | [optional]

## Example

```python
from billing_client.models.payment_source_dto_payment_bank_source_dto import PaymentSourceDTOPaymentBankSourceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentSourceDTOPaymentBankSourceDTO from a JSON string
payment_source_dto_payment_bank_source_dto_instance = PaymentSourceDTOPaymentBankSourceDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentSourceDTOPaymentBankSourceDTO.to_json())

# convert the object into a dict
payment_source_dto_payment_bank_source_dto_dict = payment_source_dto_payment_bank_source_dto_instance.to_dict()
# create an instance of PaymentSourceDTOPaymentBankSourceDTO from a dict
payment_source_dto_payment_bank_source_dto_from_dict = PaymentSourceDTOPaymentBankSourceDTO.from_dict(payment_source_dto_payment_bank_source_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
