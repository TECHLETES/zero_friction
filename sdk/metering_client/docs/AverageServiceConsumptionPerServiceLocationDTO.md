# AverageServiceConsumptionPerServiceLocationDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **float** |  | [optional] 
**amount_of_days** | **int** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**service_location_id** | **str** |  | [optional] 
**average_per_year** | **float** |  | [optional] 
**period** | **int** |  | [optional] 

## Example

```python
from metering_client.models.average_service_consumption_per_service_location_dto import AverageServiceConsumptionPerServiceLocationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AverageServiceConsumptionPerServiceLocationDTO from a JSON string
average_service_consumption_per_service_location_dto_instance = AverageServiceConsumptionPerServiceLocationDTO.from_json(json)
# print the JSON string representation of the object
print(AverageServiceConsumptionPerServiceLocationDTO.to_json())

# convert the object into a dict
average_service_consumption_per_service_location_dto_dict = average_service_consumption_per_service_location_dto_instance.to_dict()
# create an instance of AverageServiceConsumptionPerServiceLocationDTO from a dict
average_service_consumption_per_service_location_dto_from_dict = AverageServiceConsumptionPerServiceLocationDTO.from_dict(average_service_consumption_per_service_location_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


