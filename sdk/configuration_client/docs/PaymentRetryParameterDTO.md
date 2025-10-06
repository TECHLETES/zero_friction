# PaymentRetryParameterDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**retry_attempt** | **int** |  | [optional] 
**retry_action** | [**PaymentRetryAction**](PaymentRetryAction.md) |  | [optional] 
**value** | **int** |  | [optional] 

## Example

```python
from configuration_client.models.payment_retry_parameter_dto import PaymentRetryParameterDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentRetryParameterDTO from a JSON string
payment_retry_parameter_dto_instance = PaymentRetryParameterDTO.from_json(json)
# print the JSON string representation of the object
print(PaymentRetryParameterDTO.to_json())

# convert the object into a dict
payment_retry_parameter_dto_dict = payment_retry_parameter_dto_instance.to_dict()
# create an instance of PaymentRetryParameterDTO from a dict
payment_retry_parameter_dto_from_dict = PaymentRetryParameterDTO.from_dict(payment_retry_parameter_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


