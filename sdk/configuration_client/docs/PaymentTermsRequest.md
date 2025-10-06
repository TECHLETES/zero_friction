# PaymentTermsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**amount** | **int** |  | [optional] 
**payment_terms_frequency** | [**PaymentTermsFrequency**](PaymentTermsFrequency.md) |  | [optional] 

## Example

```python
from configuration_client.models.payment_terms_request import PaymentTermsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentTermsRequest from a JSON string
payment_terms_request_instance = PaymentTermsRequest.from_json(json)
# print the JSON string representation of the object
print(PaymentTermsRequest.to_json())

# convert the object into a dict
payment_terms_request_dict = payment_terms_request_instance.to_dict()
# create an instance of PaymentTermsRequest from a dict
payment_terms_request_from_dict = PaymentTermsRequest.from_dict(payment_terms_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


