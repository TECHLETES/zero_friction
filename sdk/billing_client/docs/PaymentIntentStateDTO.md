# PaymentIntentStateDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | [**BillingPaymentIntentStatus**](BillingPaymentIntentStatus.md) |  | [optional]
**requested_rail** | [**PaymentRail**](PaymentRail.md) |  | [optional]
**hosted_checkout_available** | **bool** |  | [optional]
**continuation** | [**PaymentIntentCommunicationContinuationDTO**](PaymentIntentCommunicationContinuationDTO.md) |  | [optional]
**failure_reason_code** | **int** |  | [optional]

## Example

```python
from billing_client.models.payment_intent_state_dto import PaymentIntentStateDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentIntentStateDTO from a JSON string
payment_intent_state_dto_instance = PaymentIntentStateDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentIntentStateDTO.to_json())

# convert the object into a dict
payment_intent_state_dto_dict = payment_intent_state_dto_instance.to_dict()
# create an instance of PaymentIntentStateDTO from a dict
payment_intent_state_dto_from_dict = PaymentIntentStateDTO.from_dict(payment_intent_state_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
