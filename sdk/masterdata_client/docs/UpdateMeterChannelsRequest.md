# UpdateMeterChannelsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mutation_date_time** | **datetime** |  | [optional] 
**channel_templates** | [**List[ExternalChannelRequest]**](ExternalChannelRequest.md) |  | [optional] 

## Example

```python
from masterdata_client.models.update_meter_channels_request import UpdateMeterChannelsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateMeterChannelsRequest from a JSON string
update_meter_channels_request_instance = UpdateMeterChannelsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateMeterChannelsRequest.to_json())

# convert the object into a dict
update_meter_channels_request_dict = update_meter_channels_request_instance.to_dict()
# create an instance of UpdateMeterChannelsRequest from a dict
update_meter_channels_request_from_dict = UpdateMeterChannelsRequest.from_dict(update_meter_channels_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


