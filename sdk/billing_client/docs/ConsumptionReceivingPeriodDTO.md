# ConsumptionReceivingPeriodDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**earliest_measurement** | [**ReceivingPeriodMeasurementDetailsDTO**](ReceivingPeriodMeasurementDetailsDTO.md) |  | [optional]
**latest_measurement** | [**ReceivingPeriodMeasurementDetailsDTO**](ReceivingPeriodMeasurementDetailsDTO.md) |  | [optional]
**consumption_value** | **float** |  | [optional]
**meter_serial_number** | **str** |  | [optional]
**external_channel_identifier** | **str** |  | [optional]
**install_date_time** | **datetime** |  | [optional]
**uninstall_date_time** | **datetime** |  | [optional]
**consumption_origin** | [**ConsumptionOrigin**](ConsumptionOrigin.md) |  | [optional]
**time_of_use** | **str** |  | [optional]
**start_date_time** | **datetime** |  | [optional]
**end_date_time** | **datetime** |  | [optional]
**receiving_period_type** | **int** |  | [optional]

## Example

```python
from billing_client.models.consumption_receiving_period_dto import ConsumptionReceivingPeriodDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumptionReceivingPeriodDTO from a JSON string
consumption_receiving_period_dto_instance = ConsumptionReceivingPeriodDTO.from_json(json)
# print the JSON string representation of the object
print(ConsumptionReceivingPeriodDTO.to_json())

# convert the object into a dict
consumption_receiving_period_dto_dict = consumption_receiving_period_dto_instance.to_dict()
# create an instance of ConsumptionReceivingPeriodDTO from a dict
consumption_receiving_period_dto_from_dict = ConsumptionReceivingPeriodDTO.from_dict(consumption_receiving_period_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
