# ConsumptionAskingPeriodMeasurementDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**measurement_date_time** | **datetime** |  | [optional] 
**value** | **float** |  | [optional] 
**reading_origin** | [**MeasurementReadingOrigin**](MeasurementReadingOrigin.md) |  | [optional] 
**reading_method** | [**MeasurementReadingMethod**](MeasurementReadingMethod.md) |  | [optional] 

## Example

```python
from billing_client.models.consumption_asking_period_measurement_dto import ConsumptionAskingPeriodMeasurementDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumptionAskingPeriodMeasurementDTO from a JSON string
consumption_asking_period_measurement_dto_instance = ConsumptionAskingPeriodMeasurementDTO.from_json(json)
# print the JSON string representation of the object
print(ConsumptionAskingPeriodMeasurementDTO.to_json())

# convert the object into a dict
consumption_asking_period_measurement_dto_dict = consumption_asking_period_measurement_dto_instance.to_dict()
# create an instance of ConsumptionAskingPeriodMeasurementDTO from a dict
consumption_asking_period_measurement_dto_from_dict = ConsumptionAskingPeriodMeasurementDTO.from_dict(consumption_asking_period_measurement_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


