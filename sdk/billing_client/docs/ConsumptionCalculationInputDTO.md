# ConsumptionCalculationInputDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_location_id** | **str** |  | [optional] 
**external_channel_identifier** | **str** |  | [optional] 
**meter_serial_number** | **str** |  | [optional] 
**time_zone** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**time_of_use** | **str** |  | [optional] 
**first_measurement** | [**ConsumptionCalculationMeasurementDTO**](ConsumptionCalculationMeasurementDTO.md) |  | [optional] 
**second_measurement** | [**ConsumptionCalculationMeasurementDTO**](ConsumptionCalculationMeasurementDTO.md) |  | [optional] 
**consumption_value** | **float** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 

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


