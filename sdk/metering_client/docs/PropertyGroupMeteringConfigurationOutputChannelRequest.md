# PropertyGroupMeteringConfigurationOutputChannelRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional] 
**formula** | [**MeteringFormulaDTO**](MeteringFormulaDTO.md) |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 

## Example

```python
from metering_client.models.property_group_metering_configuration_output_channel_request import PropertyGroupMeteringConfigurationOutputChannelRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PropertyGroupMeteringConfigurationOutputChannelRequest from a JSON string
property_group_metering_configuration_output_channel_request_instance = PropertyGroupMeteringConfigurationOutputChannelRequest.from_json(json)
# print the JSON string representation of the object
print(PropertyGroupMeteringConfigurationOutputChannelRequest.to_json())

# convert the object into a dict
property_group_metering_configuration_output_channel_request_dict = property_group_metering_configuration_output_channel_request_instance.to_dict()
# create an instance of PropertyGroupMeteringConfigurationOutputChannelRequest from a dict
property_group_metering_configuration_output_channel_request_from_dict = PropertyGroupMeteringConfigurationOutputChannelRequest.from_dict(property_group_metering_configuration_output_channel_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


