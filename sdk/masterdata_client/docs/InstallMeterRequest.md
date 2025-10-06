# InstallMeterRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mutation_date_time** | **datetime** |  | [optional] 
**service_location_id** | **str** |  | [optional] 
**property_group_id** | **str** |  | [optional] 
**address_installed** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**channel_templates** | [**List[ExternalChannelRequest]**](ExternalChannelRequest.md) |  | [optional] 
**next_expected_reading_date** | **datetime** |  | [optional] 
**reading_frequency** | [**MeterReadingFrequency**](MeterReadingFrequency.md) |  | [optional] 

## Example

```python
from masterdata_client.models.install_meter_request import InstallMeterRequest

# TODO update the JSON string below
json = "{}"
# create an instance of InstallMeterRequest from a JSON string
install_meter_request_instance = InstallMeterRequest.from_json(json)
# print the JSON string representation of the object
print(InstallMeterRequest.to_json())

# convert the object into a dict
install_meter_request_dict = install_meter_request_instance.to_dict()
# create an instance of InstallMeterRequest from a dict
install_meter_request_from_dict = InstallMeterRequest.from_dict(install_meter_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


