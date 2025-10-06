# ConsumptionCalculationInputDTO

Represents input data for consumption calculations

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_location_id** | **str** | Identifier of the service location | [optional] 
**external_channel_identifier** | **str** | External channel identifier | [optional] 
**meter_serial_number** | **str** | Serial number of the meter | [optional] 
**time_zone** | **str** | Time zone for the measurements | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) | Type of utility being measured | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) | Type of metering used | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) | Unit of measure for the measurements | [optional] 
**time_of_use** | **str** | Time of use identifier | [optional] 
**first_measurement** | [**ConsumptionCalculationMeasurementDTO**](ConsumptionCalculationMeasurementDTO.md) | First measurement in the period | [optional] 
**second_measurement** | [**ConsumptionCalculationMeasurementDTO**](ConsumptionCalculationMeasurementDTO.md) | Second measurement in the period | [optional] 
**consumption_value** | **float** | Calculated consumption value | [optional] 
**start_date_time** | **datetime** | Start date and time of the calculation period | [optional] 
**end_date_time** | **datetime** | End date and time of the calculation period | [optional] 

## Example

```python
from billing_client.models.consumption_calculation_input_dto import ConsumptionCalculationInputDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumptionCalculationInputDTO from a JSON string
consumption_calculation_input_dto_instance = ConsumptionCalculationInputDTO.from_json(json)
# print the JSON string representation of the object
print(ConsumptionCalculationInputDTO.to_json())

# convert the object into a dict
consumption_calculation_input_dto_dict = consumption_calculation_input_dto_instance.to_dict()
# create an instance of ConsumptionCalculationInputDTO from a dict
consumption_calculation_input_dto_from_dict = ConsumptionCalculationInputDTO.from_dict(consumption_calculation_input_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


