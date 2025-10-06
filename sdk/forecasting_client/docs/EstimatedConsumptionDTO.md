# EstimatedConsumptionDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**origin** | [**EstimatedAnnualVolumeOrigin**](EstimatedAnnualVolumeOrigin.md) |  | [optional] 
**last_recalculated** | **datetime** |  | [optional] 
**consumer_group_id** | **str** |  | [optional] 
**contract_id** | **str** |  | [optional] 
**value** | **float** |  | [optional] 

## Example

```python
from forecasting_client.models.estimated_consumption_dto import EstimatedConsumptionDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EstimatedConsumptionDTO from a JSON string
estimated_consumption_dto_instance = EstimatedConsumptionDTO.from_json(json)
# print the JSON string representation of the object
print(EstimatedConsumptionDTO.to_json())

# convert the object into a dict
estimated_consumption_dto_dict = estimated_consumption_dto_instance.to_dict()
# create an instance of EstimatedConsumptionDTO from a dict
estimated_consumption_dto_from_dict = EstimatedConsumptionDTO.from_dict(estimated_consumption_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


