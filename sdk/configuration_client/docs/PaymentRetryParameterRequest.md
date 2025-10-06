# PaymentRetryParameterRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**retry_attempt** | **int** |  | [optional] 
**retry_action** | [**PaymentRetryAction**](PaymentRetryAction.md) |  | [optional] 
**value** | **int** |  | [optional] 

## Example

```python
from configuration_client.models.payment_retry_parameter_request import PaymentRetryParameterRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentRetryParameterRequest from a JSON string
payment_retry_parameter_request_instance = PaymentRetryParameterRequest.from_json(json)
# print the JSON string representation of the object
print(PaymentRetryParameterRequest.to_json())

# convert the object into a dict
payment_retry_parameter_request_dict = payment_retry_parameter_request_instance.to_dict()
# create an instance of PaymentRetryParameterRequest from a dict
payment_retry_parameter_request_from_dict = PaymentRetryParameterRequest.from_dict(payment_retry_parameter_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


