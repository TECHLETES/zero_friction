# FlatPagedConsumptionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_channel_identifier** | **str** |  | [optional] 
**complete** | **bool** |  | [optional] 
**user_id** | **str** |  | [optional] 
**production_day** | **int** |  | [optional] 
**production_day_start_utc** | **datetime** |  | [optional] 
**production_day_end_utc** | **datetime** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**value** | **float** |  | [optional] 

## Example

```python
from metering_client.models.flat_paged_consumption_dto import FlatPagedConsumptionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FlatPagedConsumptionDTO from a JSON string
flat_paged_consumption_dto_instance = FlatPagedConsumptionDTO.from_json(json)
# print the JSON string representation of the object
print(FlatPagedConsumptionDTO.to_json())

# convert the object into a dict
flat_paged_consumption_dto_dict = flat_paged_consumption_dto_instance.to_dict()
# create an instance of FlatPagedConsumptionDTO from a dict
flat_paged_consumption_dto_from_dict = FlatPagedConsumptionDTO.from_dict(flat_paged_consumption_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


