# UnitOfMeasureListApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**List[UnitOfMeasure]**](UnitOfMeasure.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.unit_of_measure_list_api_response_dto import UnitOfMeasureListApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of UnitOfMeasureListApiResponseDTO from a JSON string
unit_of_measure_list_api_response_dto_instance = UnitOfMeasureListApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(UnitOfMeasureListApiResponseDTO.to_json())

# convert the object into a dict
unit_of_measure_list_api_response_dto_dict = unit_of_measure_list_api_response_dto_instance.to_dict()
# create an instance of UnitOfMeasureListApiResponseDTO from a dict
unit_of_measure_list_api_response_dto_from_dict = UnitOfMeasureListApiResponseDTO.from_dict(unit_of_measure_list_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


