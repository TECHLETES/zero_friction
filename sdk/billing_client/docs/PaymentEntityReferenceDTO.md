# PaymentEntityReferenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_id** | **str** |  | [optional] 
**reference_id** | **str** |  | [optional] 
**reference_type** | [**TransactionReferenceType**](TransactionReferenceType.md) |  | [optional] 

## Example

```python
from billing_client.models.payment_entity_reference_dto import PaymentEntityReferenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentEntityReferenceDTO from a JSON string
payment_entity_reference_dto_instance = PaymentEntityReferenceDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentEntityReferenceDTO.to_json())

# convert the object into a dict
payment_entity_reference_dto_dict = payment_entity_reference_dto_instance.to_dict()
# create an instance of PaymentEntityReferenceDTO from a dict
payment_entity_reference_dto_from_dict = PaymentEntityReferenceDTO.from_dict(payment_entity_reference_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


