# PaymentBankIncomingOriginDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**incoming_mutation_id** | **str** |  | [optional]
**incoming_banking_transaction_id** | **str** |  | [optional]
**incoming_banking_transaction_identification** | **str** |  | [optional]

## Example

```python
from billing_client.models.payment_bank_incoming_origin_dto import PaymentBankIncomingOriginDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentBankIncomingOriginDTO from a JSON string
payment_bank_incoming_origin_dto_instance = PaymentBankIncomingOriginDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentBankIncomingOriginDTO.to_json())

# convert the object into a dict
payment_bank_incoming_origin_dto_dict = payment_bank_incoming_origin_dto_instance.to_dict()
# create an instance of PaymentBankIncomingOriginDTO from a dict
payment_bank_incoming_origin_dto_from_dict = PaymentBankIncomingOriginDTO.from_dict(payment_bank_incoming_origin_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
