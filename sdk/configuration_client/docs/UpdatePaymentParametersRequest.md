# UpdatePaymentParametersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**retry_parameters** | [**List[PaymentRetryParameterRequest]**](PaymentRetryParameterRequest.md) |  | [optional] 
**refund_payment_delay_in_days** | **int** |  | [optional] 
**payment_terms_id** | **str** |  | [optional] 
**default_collection_flow_id** | **str** |  | [optional] 
**only_use_invoice_number_in_payment_references** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.update_payment_parameters_request import UpdatePaymentParametersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePaymentParametersRequest from a JSON string
update_payment_parameters_request_instance = UpdatePaymentParametersRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePaymentParametersRequest.to_json())

# convert the object into a dict
update_payment_parameters_request_dict = update_payment_parameters_request_instance.to_dict()
# create an instance of UpdatePaymentParametersRequest from a dict
update_payment_parameters_request_from_dict = UpdatePaymentParametersRequest.from_dict(update_payment_parameters_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


