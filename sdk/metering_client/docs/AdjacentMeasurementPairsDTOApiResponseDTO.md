# AdjacentMeasurementPairsDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**AdjacentMeasurementPairsDTO**](AdjacentMeasurementPairsDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from metering_client.models.adjacent_measurement_pairs_dto_api_response_dto import AdjacentMeasurementPairsDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AdjacentMeasurementPairsDTOApiResponseDTO from a JSON string
adjacent_measurement_pairs_dto_api_response_dto_instance = AdjacentMeasurementPairsDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(AdjacentMeasurementPairsDTOApiResponseDTO.to_json())

# convert the object into a dict
adjacent_measurement_pairs_dto_api_response_dto_dict = adjacent_measurement_pairs_dto_api_response_dto_instance.to_dict()
# create an instance of AdjacentMeasurementPairsDTOApiResponseDTO from a dict
adjacent_measurement_pairs_dto_api_response_dto_from_dict = AdjacentMeasurementPairsDTOApiResponseDTO.from_dict(adjacent_measurement_pairs_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


