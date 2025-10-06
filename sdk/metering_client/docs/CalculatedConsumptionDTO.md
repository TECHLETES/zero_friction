# CalculatedConsumptionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**output_channel_id** | **str** |  | [optional] 
**consumptions** | [**List[CalculatedConsumptionForOutputChannelDTO]**](CalculatedConsumptionForOutputChannelDTO.md) |  | [optional] 

## Example

```python
from metering_client.models.calculated_consumption_dto import CalculatedConsumptionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CalculatedConsumptionDTO from a JSON string
calculated_consumption_dto_instance = CalculatedConsumptionDTO.from_json(json)
# print the JSON string representation of the object
print(CalculatedConsumptionDTO.to_json())

# convert the object into a dict
calculated_consumption_dto_dict = calculated_consumption_dto_instance.to_dict()
# create an instance of CalculatedConsumptionDTO from a dict
calculated_consumption_dto_from_dict = CalculatedConsumptionDTO.from_dict(calculated_consumption_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


