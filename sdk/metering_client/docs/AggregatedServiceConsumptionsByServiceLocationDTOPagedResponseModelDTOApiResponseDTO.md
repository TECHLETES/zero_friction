# AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTO**](AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from metering_client.models.aggregated_service_consumptions_by_service_location_dto_paged_response_model_dto_api_response_dto import AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTOApiResponseDTO from a JSON string
aggregated_service_consumptions_by_service_location_dto_paged_response_model_dto_api_response_dto_instance = AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
aggregated_service_consumptions_by_service_location_dto_paged_response_model_dto_api_response_dto_dict = aggregated_service_consumptions_by_service_location_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTOApiResponseDTO from a dict
aggregated_service_consumptions_by_service_location_dto_paged_response_model_dto_api_response_dto_from_dict = AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTOApiResponseDTO.from_dict(aggregated_service_consumptions_by_service_location_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


