# CalculateOutputChannelForPropertyGroupMeteringConfigurationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**simulation_only** | **bool** |  | [optional] 

## Example

```python
from metering_client.models.calculate_output_channel_for_property_group_metering_configuration_request import CalculateOutputChannelForPropertyGroupMeteringConfigurationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CalculateOutputChannelForPropertyGroupMeteringConfigurationRequest from a JSON string
calculate_output_channel_for_property_group_metering_configuration_request_instance = CalculateOutputChannelForPropertyGroupMeteringConfigurationRequest.from_json(json)
# print the JSON string representation of the object
print(CalculateOutputChannelForPropertyGroupMeteringConfigurationRequest.to_json())

# convert the object into a dict
calculate_output_channel_for_property_group_metering_configuration_request_dict = calculate_output_channel_for_property_group_metering_configuration_request_instance.to_dict()
# create an instance of CalculateOutputChannelForPropertyGroupMeteringConfigurationRequest from a dict
calculate_output_channel_for_property_group_metering_configuration_request_from_dict = CalculateOutputChannelForPropertyGroupMeteringConfigurationRequest.from_dict(calculate_output_channel_for_property_group_metering_configuration_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


