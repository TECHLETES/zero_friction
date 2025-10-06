# UpdateServiceLocationAddressRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.update_service_location_address_request import UpdateServiceLocationAddressRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateServiceLocationAddressRequest from a JSON string
update_service_location_address_request_instance = UpdateServiceLocationAddressRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateServiceLocationAddressRequest.to_json())

# convert the object into a dict
update_service_location_address_request_dict = update_service_location_address_request_instance.to_dict()
# create an instance of UpdateServiceLocationAddressRequest from a dict
update_service_location_address_request_from_dict = UpdateServiceLocationAddressRequest.from_dict(update_service_location_address_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


