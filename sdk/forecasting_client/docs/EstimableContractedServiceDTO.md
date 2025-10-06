# EstimableContractedServiceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_location_id** | **str** |  | [optional] 
**property_group_id** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**external_identifier** | **str** |  | [optional] 
**consumer_group_id** | **str** |  | [optional] 
**supply_start_date_time** | **datetime** |  | [optional] 
**supply_end_date_time** | **datetime** |  | [optional] 
**supply_start_year** | **int** |  | [optional] 
**supply_end_year** | **int** |  | [optional] 
**estimated_annual_volumes** | [**List[EstimatedAnnualVolumeDTO]**](EstimatedAnnualVolumeDTO.md) |  | [optional] 

## Example

```python
from forecasting_client.models.estimable_contracted_service_dto import EstimableContractedServiceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EstimableContractedServiceDTO from a JSON string
estimable_contracted_service_dto_instance = EstimableContractedServiceDTO.from_json(json)
# print the JSON string representation of the object
print(EstimableContractedServiceDTO.to_json())

# convert the object into a dict
estimable_contracted_service_dto_dict = estimable_contracted_service_dto_instance.to_dict()
# create an instance of EstimableContractedServiceDTO from a dict
estimable_contracted_service_dto_from_dict = EstimableContractedServiceDTO.from_dict(estimable_contracted_service_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


