# EstimatedAnnualVolumeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**year** | **int** |  | [optional] 
**value** | **float** |  | [optional] 
**origin** | [**EstimatedAnnualVolumeOrigin**](EstimatedAnnualVolumeOrigin.md) |  | [optional] 
**last_recalculated** | **datetime** |  | [optional] 

## Example

```python
from forecasting_client.models.estimated_annual_volume_dto import EstimatedAnnualVolumeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EstimatedAnnualVolumeDTO from a JSON string
estimated_annual_volume_dto_instance = EstimatedAnnualVolumeDTO.from_json(json)
# print the JSON string representation of the object
print(EstimatedAnnualVolumeDTO.to_json())

# convert the object into a dict
estimated_annual_volume_dto_dict = estimated_annual_volume_dto_instance.to_dict()
# create an instance of EstimatedAnnualVolumeDTO from a dict
estimated_annual_volume_dto_from_dict = EstimatedAnnualVolumeDTO.from_dict(estimated_annual_volume_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


