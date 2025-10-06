# ConsumptionCalculationMeasurementDTO

Represents a measurement used in consumption calculations

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **float** | Value of the measurement | [optional] 
**reading_date_time** | **datetime** | Date and time when the reading was taken | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) | Unit of measure for the reading | [optional] 

## Example

```python
from billing_client.models.consumption_calculation_measurement_dto import ConsumptionCalculationMeasurementDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumptionCalculationMeasurementDTO from a JSON string
consumption_calculation_measurement_dto_instance = ConsumptionCalculationMeasurementDTO.from_json(json)
# print the JSON string representation of the object
print(ConsumptionCalculationMeasurementDTO.to_json())

# convert the object into a dict
consumption_calculation_measurement_dto_dict = consumption_calculation_measurement_dto_instance.to_dict()
# create an instance of ConsumptionCalculationMeasurementDTO from a dict
consumption_calculation_measurement_dto_from_dict = ConsumptionCalculationMeasurementDTO.from_dict(consumption_calculation_measurement_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


