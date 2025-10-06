# UpdatePaymentDelayRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_delay** | [**PaymentDelay**](PaymentDelay.md) |  | [optional] 
**value** | **int** |  | [optional] 

## Example

```python
from configuration_client.models.update_payment_delay_request import UpdatePaymentDelayRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePaymentDelayRequest from a JSON string
update_payment_delay_request_instance = UpdatePaymentDelayRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePaymentDelayRequest.to_json())

# convert the object into a dict
update_payment_delay_request_dict = update_payment_delay_request_instance.to_dict()
# create an instance of UpdatePaymentDelayRequest from a dict
update_payment_delay_request_from_dict = UpdatePaymentDelayRequest.from_dict(update_payment_delay_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


