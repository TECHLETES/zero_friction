# UpdatePropertyGroupMeteringConfigurationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**output_channels** | [**List[PropertyGroupMeteringConfigurationOutputChannelRequest]**](PropertyGroupMeteringConfigurationOutputChannelRequest.md) |  | [optional] 

## Example

```python
from metering_client.models.update_property_group_metering_configuration_request import UpdatePropertyGroupMeteringConfigurationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePropertyGroupMeteringConfigurationRequest from a JSON string
update_property_group_metering_configuration_request_instance = UpdatePropertyGroupMeteringConfigurationRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePropertyGroupMeteringConfigurationRequest.to_json())

# convert the object into a dict
update_property_group_metering_configuration_request_dict = update_property_group_metering_configuration_request_instance.to_dict()
# create an instance of UpdatePropertyGroupMeteringConfigurationRequest from a dict
update_property_group_metering_configuration_request_from_dict = UpdatePropertyGroupMeteringConfigurationRequest.from_dict(update_property_group_metering_configuration_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


