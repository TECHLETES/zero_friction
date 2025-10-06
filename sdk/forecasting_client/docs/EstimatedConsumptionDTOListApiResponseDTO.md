# EstimatedConsumptionDTOListApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**List[EstimatedConsumptionDTO]**](EstimatedConsumptionDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from forecasting_client.models.estimated_consumption_dto_list_api_response_dto import EstimatedConsumptionDTOListApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EstimatedConsumptionDTOListApiResponseDTO from a JSON string
estimated_consumption_dto_list_api_response_dto_instance = EstimatedConsumptionDTOListApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(EstimatedConsumptionDTOListApiResponseDTO.to_json())

# convert the object into a dict
estimated_consumption_dto_list_api_response_dto_dict = estimated_consumption_dto_list_api_response_dto_instance.to_dict()
# create an instance of EstimatedConsumptionDTOListApiResponseDTO from a dict
estimated_consumption_dto_list_api_response_dto_from_dict = EstimatedConsumptionDTOListApiResponseDTO.from_dict(estimated_consumption_dto_list_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


