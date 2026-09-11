# ServiceConsumptionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_channel_identifier** | **str** |  | [optional]
**service_location_id** | **str** |  | [optional]
**formula_stream_name** | **str** |  | [optional]
**production_day** | **int** |  | [optional]
**time_zone** | **str** |  | [optional]
**production_day_start_utc** | **datetime** |  | [optional]
**production_day_end_utc** | **datetime** |  | [optional]
**values** | [**List[ServiceConsumptionValueDTO]**](ServiceConsumptionValueDTO.md) |  | [optional]
**data_frequency** | [**DataFrequency**](DataFrequency.md) |  | [optional]
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional]
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional]
**direction** | [**Direction**](Direction.md) |  | [optional]
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional]
**time_of_use** | **str** |  | [optional]
**total** | **float** |  | [optional]

## Example

```python
from metering_client.models.service_consumption_dto import ServiceConsumptionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceConsumptionDTO from a JSON string
service_consumption_dto_instance = ServiceConsumptionDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceConsumptionDTO.to_json())

# convert the object into a dict
service_consumption_dto_dict = service_consumption_dto_instance.to_dict()
# create an instance of ServiceConsumptionDTO from a dict
service_consumption_dto_from_dict = ServiceConsumptionDTO.from_dict(service_consumption_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
