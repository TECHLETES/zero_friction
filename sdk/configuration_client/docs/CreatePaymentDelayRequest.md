# CreatePaymentDelayRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_type** | [**InvoiceType**](InvoiceType.md) |  | [optional] 
**payment_delay** | [**PaymentDelay**](PaymentDelay.md) |  | [optional] 
**value** | **int** |  | [optional] 

## Example

```python
from configuration_client.models.create_payment_delay_request import CreatePaymentDelayRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreatePaymentDelayRequest from a JSON string
create_payment_delay_request_instance = CreatePaymentDelayRequest.from_json(json)
# print the JSON string representation of the object
print(CreatePaymentDelayRequest.to_json())

# convert the object into a dict
create_payment_delay_request_dict = create_payment_delay_request_instance.to_dict()
# create an instance of CreatePaymentDelayRequest from a dict
create_payment_delay_request_from_dict = CreatePaymentDelayRequest.from_dict(create_payment_delay_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


