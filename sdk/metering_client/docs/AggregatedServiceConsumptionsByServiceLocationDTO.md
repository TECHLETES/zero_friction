# AggregatedServiceConsumptionsByServiceLocationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_location** | **str** |  | [optional] 
**service_location_address** | [**AddressDTO**](AddressDTO.md) |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**time_of_use** | **str** |  | [optional] 
**period_start_date** | **datetime** |  | [optional] 
**period_end_date** | **datetime** |  | [optional] 
**total** | **float** |  | [optional] 

## Example

```python
from metering_client.models.aggregated_service_consumptions_by_service_location_dto import AggregatedServiceConsumptionsByServiceLocationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AggregatedServiceConsumptionsByServiceLocationDTO from a JSON string
aggregated_service_consumptions_by_service_location_dto_instance = AggregatedServiceConsumptionsByServiceLocationDTO.from_json(json)
# print the JSON string representation of the object
print(AggregatedServiceConsumptionsByServiceLocationDTO.to_json())

# convert the object into a dict
aggregated_service_consumptions_by_service_location_dto_dict = aggregated_service_consumptions_by_service_location_dto_instance.to_dict()
# create an instance of AggregatedServiceConsumptionsByServiceLocationDTO from a dict
aggregated_service_consumptions_by_service_location_dto_from_dict = AggregatedServiceConsumptionsByServiceLocationDTO.from_dict(aggregated_service_consumptions_by_service_location_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


