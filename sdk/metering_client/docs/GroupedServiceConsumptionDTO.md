# GroupedServiceConsumptionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_identifier** | **str** | This is NOT the externalchannel identifier! | [optional] 
**service_location_id** | **str** |  | [optional] 
**time_of_use** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**min_production_day_start_utc** | **datetime** |  | [optional] 
**max_production_day_end_utc** | **datetime** |  | [optional] 
**values** | [**List[FlatServiceConsumptionDTO]**](FlatServiceConsumptionDTO.md) |  | [optional] 

## Example

```python
from metering_client.models.grouped_service_consumption_dto import GroupedServiceConsumptionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of GroupedServiceConsumptionDTO from a JSON string
grouped_service_consumption_dto_instance = GroupedServiceConsumptionDTO.from_json(json)
# print the JSON string representation of the object
print(GroupedServiceConsumptionDTO.to_json())

# convert the object into a dict
grouped_service_consumption_dto_dict = grouped_service_consumption_dto_instance.to_dict()
# create an instance of GroupedServiceConsumptionDTO from a dict
grouped_service_consumption_dto_from_dict = GroupedServiceConsumptionDTO.from_dict(grouped_service_consumption_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


