# PaymentEntityReferenceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_id** | **str** |  |
**reference_id** | **str** |  |
**reference_type** | [**TransactionReferenceType**](TransactionReferenceType.md) |  |

## Example

```python
from billing_client.models.payment_entity_reference_request import PaymentEntityReferenceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentEntityReferenceRequest from a JSON string
payment_entity_reference_request_instance = PaymentEntityReferenceRequest.from_json(json)
# print the JSON string representation of the object
print(PaymentEntityReferenceRequest.to_json())

# convert the object into a dict
payment_entity_reference_request_dict = payment_entity_reference_request_instance.to_dict()
# create an instance of PaymentEntityReferenceRequest from a dict
payment_entity_reference_request_from_dict = PaymentEntityReferenceRequest.from_dict(payment_entity_reference_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
