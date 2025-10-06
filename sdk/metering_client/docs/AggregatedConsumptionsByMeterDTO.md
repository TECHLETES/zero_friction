# AggregatedConsumptionsByMeterDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meter_serial_number** | **str** |  | [optional] 
**meter_tag** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**time_of_use** | **str** |  | [optional] 
**period_start_date** | **datetime** |  | [optional] 
**period_end_date** | **datetime** |  | [optional] 
**property_group_id** | **str** |  | [optional] 
**property_group_name** | **str** |  | [optional] 
**total** | **float** |  | [optional] 

## Example

```python
from metering_client.models.aggregated_consumptions_by_meter_dto import AggregatedConsumptionsByMeterDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AggregatedConsumptionsByMeterDTO from a JSON string
aggregated_consumptions_by_meter_dto_instance = AggregatedConsumptionsByMeterDTO.from_json(json)
# print the JSON string representation of the object
print(AggregatedConsumptionsByMeterDTO.to_json())

# convert the object into a dict
aggregated_consumptions_by_meter_dto_dict = aggregated_consumptions_by_meter_dto_instance.to_dict()
# create an instance of AggregatedConsumptionsByMeterDTO from a dict
aggregated_consumptions_by_meter_dto_from_dict = AggregatedConsumptionsByMeterDTO.from_dict(aggregated_consumptions_by_meter_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


