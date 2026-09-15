# PaymentIntentCommunicationContinuationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**PaymentIntentCommunicationContinuationType**](PaymentIntentCommunicationContinuationType.md) |  | [optional] 
**bypass_idempotency** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.payment_intent_communication_continuation_dto import PaymentIntentCommunicationContinuationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentIntentCommunicationContinuationDTO from a JSON string
payment_intent_communication_continuation_dto_instance = PaymentIntentCommunicationContinuationDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentIntentCommunicationContinuationDTO.to_json())

# convert the object into a dict
payment_intent_communication_continuation_dto_dict = payment_intent_communication_continuation_dto_instance.to_dict()
# create an instance of PaymentIntentCommunicationContinuationDTO from a dict
payment_intent_communication_continuation_dto_from_dict = PaymentIntentCommunicationContinuationDTO.from_dict(payment_intent_communication_continuation_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


