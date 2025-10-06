# FormulaConsumptionDTO

Represents consumption data calculated by a formula for a specific output channel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**output_channel_id** | **str** | Unique identifier of the output channel | [optional] 
**production_day** | **int** | Day number for which the consumption is calculated | [optional] 
**time_zone** | **str** | Time zone identifier for the consumption data | [optional] 
**production_day_start_utc** | **datetime** | Start of the production day in UTC | [optional] 
**production_day_end_utc** | **datetime** | End of the production day in UTC | [optional] 
**values** | [**List[FormulaConsumptionValueDTO]**](FormulaConsumptionValueDTO.md) | List of consumption values with their time periods | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) | Type of metering used for the consumption data | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) | Type of utility being measured | [optional] 
**direction** | [**Direction**](Direction.md) | Direction of the consumption flow | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) | Unit of measure for the consumption values | [optional] 
**data_frequency** | [**DataFrequency**](DataFrequency.md) | Frequency of the consumption data points | [optional] 
**property_group** | [**PropertyGroupReferenceDTO**](PropertyGroupReferenceDTO.md) | Reference to the property group associated with this consumption | [optional] 
**time_of_use** | **str** | Time of use classification for the consumption | [optional] 
**external_channel_identifier** | **str** | External identifier for the channel | [optional] 
**service_location_id** | **str** | Unique identifier of the service location | [optional] 
**formula_stream_name** | **str** | Name of the formula stream that generated this consumption | [optional] 

## Example

```python
from metering_client.models.formula_consumption_dto import FormulaConsumptionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FormulaConsumptionDTO from a JSON string
formula_consumption_dto_instance = FormulaConsumptionDTO.from_json(json)
# print the JSON string representation of the object
print(FormulaConsumptionDTO.to_json())

# convert the object into a dict
formula_consumption_dto_dict = formula_consumption_dto_instance.to_dict()
# create an instance of FormulaConsumptionDTO from a dict
formula_consumption_dto_from_dict = FormulaConsumptionDTO.from_dict(formula_consumption_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


