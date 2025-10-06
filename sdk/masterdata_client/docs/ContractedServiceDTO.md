# ContractedServiceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**external_identifier** | **str** |  | [optional] 
**is_consumption_based** | **bool** |  | [optional] 
**estimated_consumptions** | [**List[ContractedServiceEstimatedConsumptionDTO]**](ContractedServiceEstimatedConsumptionDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.contracted_service_dto import ContractedServiceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContractedServiceDTO from a JSON string
contracted_service_dto_instance = ContractedServiceDTO.from_json(json)
# print the JSON string representation of the object
print(ContractedServiceDTO.to_json())

# convert the object into a dict
contracted_service_dto_dict = contracted_service_dto_instance.to_dict()
# create an instance of ContractedServiceDTO from a dict
contracted_service_dto_from_dict = ContractedServiceDTO.from_dict(contracted_service_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


