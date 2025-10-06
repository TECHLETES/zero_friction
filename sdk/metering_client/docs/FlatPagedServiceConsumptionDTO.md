# FlatPagedServiceConsumptionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_location_id** | **str** |  | [optional] 
**external_channel_identifier** | **str** |  | [optional] 
**utility_type** | **str** |  | [optional] 
**unit_of_measure** | **str** |  | [optional] 
**direction** | **str** |  | [optional] 
**production_day** | **int** |  | [optional] 
**time_zone** | **str** |  | [optional] 
**production_day_start_utc** | **datetime** |  | [optional] 
**production_day_end_utc** | **datetime** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**value** | **float** |  | [optional] 

## Example

```python
from metering_client.models.flat_paged_service_consumption_dto import FlatPagedServiceConsumptionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FlatPagedServiceConsumptionDTO from a JSON string
flat_paged_service_consumption_dto_instance = FlatPagedServiceConsumptionDTO.from_json(json)
# print the JSON string representation of the object
print(FlatPagedServiceConsumptionDTO.to_json())

# convert the object into a dict
flat_paged_service_consumption_dto_dict = flat_paged_service_consumption_dto_instance.to_dict()
# create an instance of FlatPagedServiceConsumptionDTO from a dict
flat_paged_service_consumption_dto_from_dict = FlatPagedServiceConsumptionDTO.from_dict(flat_paged_service_consumption_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


