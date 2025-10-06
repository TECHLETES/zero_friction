# UpdateInvoiceAddressRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**invoice_address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.update_invoice_address_request import UpdateInvoiceAddressRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateInvoiceAddressRequest from a JSON string
update_invoice_address_request_instance = UpdateInvoiceAddressRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateInvoiceAddressRequest.to_json())

# convert the object into a dict
update_invoice_address_request_dict = update_invoice_address_request_instance.to_dict()
# create an instance of UpdateInvoiceAddressRequest from a dict
update_invoice_address_request_from_dict = UpdateInvoiceAddressRequest.from_dict(update_invoice_address_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


