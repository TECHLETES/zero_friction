# FlatConsumptionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_channel_identifier** | **str** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**value** | **float** |  | [optional] 

## Example

```python
from metering_client.models.flat_consumption_dto import FlatConsumptionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FlatConsumptionDTO from a JSON string
flat_consumption_dto_instance = FlatConsumptionDTO.from_json(json)
# print the JSON string representation of the object
print(FlatConsumptionDTO.to_json())

# convert the object into a dict
flat_consumption_dto_dict = flat_consumption_dto_instance.to_dict()
# create an instance of FlatConsumptionDTO from a dict
flat_consumption_dto_from_dict = FlatConsumptionDTO.from_dict(flat_consumption_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


