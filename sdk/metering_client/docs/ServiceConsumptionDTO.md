# ServiceConsumptionDTO

Represents consumption data for a service location over a specific time period

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_channel_identifier** | **str** | External identifier for the channel | [optional] 
**service_location_id** | **str** | Unique identifier of the service location | [optional] 
**formula_stream_name** | **str** | Name of the formula stream that generated this consumption | [optional] 
**production_day** | **int** | Day number for which the consumption is calculated | [optional] 
**time_zone** | **str** | Time zone identifier for the consumption data | [optional] 
**production_day_start_utc** | **datetime** | Start of the production day in UTC | [optional] 
**production_day_end_utc** | **datetime** | End of the production day in UTC | [optional] 
**values** | [**List[ServiceConsumptionValueDTO]**](ServiceConsumptionValueDTO.md) | List of consumption values with their time periods | [optional] 
**data_frequency** | [**DataFrequency**](DataFrequency.md) | Frequency of the consumption data points | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) | Type of metering used for the consumption data | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) | Type of utility being measured | [optional] 
**direction** | [**Direction**](Direction.md) | Direction of the consumption flow | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) | Unit of measure for the consumption values | [optional] 
**time_of_use** | **str** | Time of use classification for the consumption | [optional] 
**total** | **float** | Total consumption value for the period | [optional] 

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


