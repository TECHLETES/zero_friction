# ReceivingPeriodMeasurementDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meter_serial_number** | **str** |  | [optional] 
**value** | **float** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**time_of_use** | **str** |  | [optional] 

## Example

```python
from billing_client.models.receiving_period_measurement_details_dto import ReceivingPeriodMeasurementDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ReceivingPeriodMeasurementDetailsDTO from a JSON string
receiving_period_measurement_details_dto_instance = ReceivingPeriodMeasurementDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(ReceivingPeriodMeasurementDetailsDTO.to_json())

# convert the object into a dict
receiving_period_measurement_details_dto_dict = receiving_period_measurement_details_dto_instance.to_dict()
# create an instance of ReceivingPeriodMeasurementDetailsDTO from a dict
receiving_period_measurement_details_dto_from_dict = ReceivingPeriodMeasurementDetailsDTO.from_dict(receiving_period_measurement_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


