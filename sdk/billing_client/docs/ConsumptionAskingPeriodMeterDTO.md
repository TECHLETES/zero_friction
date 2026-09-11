# ConsumptionAskingPeriodMeterDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meter_serial_number** | **str** |  | [optional]
**meter_id** | **str** |  | [optional]
**external_channel_identifier** | **str** |  | [optional]
**install_date_time** | **datetime** |  | [optional]
**uninstall_date_time** | **datetime** |  | [optional]
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional]
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional]
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional]
**time_of_use** | **str** |  | [optional]
**found_start_measurement** | [**ConsumptionAskingPeriodMeasurementDTO**](ConsumptionAskingPeriodMeasurementDTO.md) |  | [optional]
**found_end_measurement** | [**ConsumptionAskingPeriodMeasurementDTO**](ConsumptionAskingPeriodMeasurementDTO.md) |  | [optional]
**consumption_gaps** | [**List[DateRange]**](DateRange.md) |  | [optional]

## Example

```python
from billing_client.models.consumption_asking_period_meter_dto import ConsumptionAskingPeriodMeterDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumptionAskingPeriodMeterDTO from a JSON string
consumption_asking_period_meter_dto_instance = ConsumptionAskingPeriodMeterDTO.from_json(json)
# print the JSON string representation of the object
print(ConsumptionAskingPeriodMeterDTO.to_json())

# convert the object into a dict
consumption_asking_period_meter_dto_dict = consumption_asking_period_meter_dto_instance.to_dict()
# create an instance of ConsumptionAskingPeriodMeterDTO from a dict
consumption_asking_period_meter_dto_from_dict = ConsumptionAskingPeriodMeterDTO.from_dict(consumption_asking_period_meter_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
