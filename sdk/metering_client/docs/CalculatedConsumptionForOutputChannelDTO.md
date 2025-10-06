# CalculatedConsumptionForOutputChannelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**value** | **float** |  | [optional] 

## Example

```python
from metering_client.models.calculated_consumption_for_output_channel_dto import CalculatedConsumptionForOutputChannelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CalculatedConsumptionForOutputChannelDTO from a JSON string
calculated_consumption_for_output_channel_dto_instance = CalculatedConsumptionForOutputChannelDTO.from_json(json)
# print the JSON string representation of the object
print(CalculatedConsumptionForOutputChannelDTO.to_json())

# convert the object into a dict
calculated_consumption_for_output_channel_dto_dict = calculated_consumption_for_output_channel_dto_instance.to_dict()
# create an instance of CalculatedConsumptionForOutputChannelDTO from a dict
calculated_consumption_for_output_channel_dto_from_dict = CalculatedConsumptionForOutputChannelDTO.from_dict(calculated_consumption_for_output_channel_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


