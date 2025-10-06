# AggregatedServiceConsumptionsPerPeriodDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **float** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**period** | **int** |  | [optional] 

## Example

```python
from metering_client.models.aggregated_service_consumptions_per_period_dto import AggregatedServiceConsumptionsPerPeriodDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AggregatedServiceConsumptionsPerPeriodDTO from a JSON string
aggregated_service_consumptions_per_period_dto_instance = AggregatedServiceConsumptionsPerPeriodDTO.from_json(json)
# print the JSON string representation of the object
print(AggregatedServiceConsumptionsPerPeriodDTO.to_json())

# convert the object into a dict
aggregated_service_consumptions_per_period_dto_dict = aggregated_service_consumptions_per_period_dto_instance.to_dict()
# create an instance of AggregatedServiceConsumptionsPerPeriodDTO from a dict
aggregated_service_consumptions_per_period_dto_from_dict = AggregatedServiceConsumptionsPerPeriodDTO.from_dict(aggregated_service_consumptions_per_period_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


