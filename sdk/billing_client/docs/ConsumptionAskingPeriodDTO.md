# ConsumptionAskingPeriodDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requires_measurement_on_start** | **bool** |  | [optional] 
**requires_measurement_on_end** | **bool** |  | [optional] 
**allow_deviating_end** | **bool** |  | [optional] 
**max_end_date_time** | **datetime** |  | [optional] 
**min_end_date_time** | **datetime** |  | [optional] 
**time_of_use** | **str** |  | [optional] 
**found_meter** | [**ConsumptionAskingPeriodMeterDTO**](ConsumptionAskingPeriodMeterDTO.md) |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**complete** | **bool** |  | [optional] 
**input_missing_reason** | [**InputMissingReason**](InputMissingReason.md) |  | [optional] 
**validation_errors** | [**List[RequiredQuantityValidationErrorDTO]**](RequiredQuantityValidationErrorDTO.md) |  | [optional] 

## Example

```python
from billing_client.models.consumption_asking_period_dto import ConsumptionAskingPeriodDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumptionAskingPeriodDTO from a JSON string
consumption_asking_period_dto_instance = ConsumptionAskingPeriodDTO.from_json(json)
# print the JSON string representation of the object
print(ConsumptionAskingPeriodDTO.to_json())

# convert the object into a dict
consumption_asking_period_dto_dict = consumption_asking_period_dto_instance.to_dict()
# create an instance of ConsumptionAskingPeriodDTO from a dict
consumption_asking_period_dto_from_dict = ConsumptionAskingPeriodDTO.from_dict(consumption_asking_period_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


