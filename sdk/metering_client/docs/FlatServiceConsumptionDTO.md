# FlatServiceConsumptionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**consumption_start_date_time** | **datetime** |  | [optional] 
**consumption_end_date_time** | **datetime** |  | [optional] 
**value** | **float** |  | [optional] 

## Example

```python
from metering_client.models.flat_service_consumption_dto import FlatServiceConsumptionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FlatServiceConsumptionDTO from a JSON string
flat_service_consumption_dto_instance = FlatServiceConsumptionDTO.from_json(json)
# print the JSON string representation of the object
print(FlatServiceConsumptionDTO.to_json())

# convert the object into a dict
flat_service_consumption_dto_dict = flat_service_consumption_dto_instance.to_dict()
# create an instance of FlatServiceConsumptionDTO from a dict
flat_service_consumption_dto_from_dict = FlatServiceConsumptionDTO.from_dict(flat_service_consumption_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


