# ApiResponseDTOOfAdjacentMeasurementPairsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**AdjacentMeasurementPairsDTO**](AdjacentMeasurementPairsDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from metering_client.models.api_response_dtoof_adjacent_measurement_pairs_dto import ApiResponseDTOOfAdjacentMeasurementPairsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfAdjacentMeasurementPairsDTO from a JSON string
api_response_dtoof_adjacent_measurement_pairs_dto_instance = ApiResponseDTOOfAdjacentMeasurementPairsDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfAdjacentMeasurementPairsDTO.to_json())

# convert the object into a dict
api_response_dtoof_adjacent_measurement_pairs_dto_dict = api_response_dtoof_adjacent_measurement_pairs_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfAdjacentMeasurementPairsDTO from a dict
api_response_dtoof_adjacent_measurement_pairs_dto_from_dict = ApiResponseDTOOfAdjacentMeasurementPairsDTO.from_dict(api_response_dtoof_adjacent_measurement_pairs_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


