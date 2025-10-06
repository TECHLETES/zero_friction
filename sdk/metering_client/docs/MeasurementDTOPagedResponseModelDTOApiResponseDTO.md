# MeasurementDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**MeasurementDTOPagedResponseModelDTO**](MeasurementDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from metering_client.models.measurement_dto_paged_response_model_dto_api_response_dto import MeasurementDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeasurementDTOPagedResponseModelDTOApiResponseDTO from a JSON string
measurement_dto_paged_response_model_dto_api_response_dto_instance = MeasurementDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(MeasurementDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
measurement_dto_paged_response_model_dto_api_response_dto_dict = measurement_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of MeasurementDTOPagedResponseModelDTOApiResponseDTO from a dict
measurement_dto_paged_response_model_dto_api_response_dto_from_dict = MeasurementDTOPagedResponseModelDTOApiResponseDTO.from_dict(measurement_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


