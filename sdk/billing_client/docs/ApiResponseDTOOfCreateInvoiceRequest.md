# ApiResponseDTOOfCreateInvoiceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**CreateInvoiceRequest**](CreateInvoiceRequest.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.api_response_dtoof_create_invoice_request import ApiResponseDTOOfCreateInvoiceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfCreateInvoiceRequest from a JSON string
api_response_dtoof_create_invoice_request_instance = ApiResponseDTOOfCreateInvoiceRequest.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfCreateInvoiceRequest.to_json())

# convert the object into a dict
api_response_dtoof_create_invoice_request_dict = api_response_dtoof_create_invoice_request_instance.to_dict()
# create an instance of ApiResponseDTOOfCreateInvoiceRequest from a dict
api_response_dtoof_create_invoice_request_from_dict = ApiResponseDTOOfCreateInvoiceRequest.from_dict(api_response_dtoof_create_invoice_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


