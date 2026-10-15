# PaymentBankOutgoingOriginDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**outgoing_mutation_id** | **str** |  | [optional] 
**outgoing_banking_transaction_id** | **str** |  | [optional] 
**outgoing_banking_transaction_identification** | **str** |  | [optional] 
**is_confirmed_by_bank** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.payment_bank_outgoing_origin_dto import PaymentBankOutgoingOriginDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentBankOutgoingOriginDTO from a JSON string
payment_bank_outgoing_origin_dto_instance = PaymentBankOutgoingOriginDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentBankOutgoingOriginDTO.to_json())

# convert the object into a dict
payment_bank_outgoing_origin_dto_dict = payment_bank_outgoing_origin_dto_instance.to_dict()
# create an instance of PaymentBankOutgoingOriginDTO from a dict
payment_bank_outgoing_origin_dto_from_dict = PaymentBankOutgoingOriginDTO.from_dict(payment_bank_outgoing_origin_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


