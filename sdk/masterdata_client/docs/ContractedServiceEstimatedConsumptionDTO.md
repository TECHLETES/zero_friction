# ContractedServiceEstimatedConsumptionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**consumer_group_id** | **str** |  | [optional] 
**value** | **float** |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional] 
**is_manual_entry** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.contracted_service_estimated_consumption_dto import ContractedServiceEstimatedConsumptionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContractedServiceEstimatedConsumptionDTO from a JSON string
contracted_service_estimated_consumption_dto_instance = ContractedServiceEstimatedConsumptionDTO.from_json(json)
# print the JSON string representation of the object
print(ContractedServiceEstimatedConsumptionDTO.to_json())

# convert the object into a dict
contracted_service_estimated_consumption_dto_dict = contracted_service_estimated_consumption_dto_instance.to_dict()
# create an instance of ContractedServiceEstimatedConsumptionDTO from a dict
contracted_service_estimated_consumption_dto_from_dict = ContractedServiceEstimatedConsumptionDTO.from_dict(contracted_service_estimated_consumption_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


