# ServiceConsumptionDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**ServiceConsumptionDTOPagedResponseModelDTO**](ServiceConsumptionDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from metering_client.models.service_consumption_dto_paged_response_model_dto_api_response_dto import ServiceConsumptionDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceConsumptionDTOPagedResponseModelDTOApiResponseDTO from a JSON string
service_consumption_dto_paged_response_model_dto_api_response_dto_instance = ServiceConsumptionDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceConsumptionDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
service_consumption_dto_paged_response_model_dto_api_response_dto_dict = service_consumption_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of ServiceConsumptionDTOPagedResponseModelDTOApiResponseDTO from a dict
service_consumption_dto_paged_response_model_dto_api_response_dto_from_dict = ServiceConsumptionDTOPagedResponseModelDTOApiResponseDTO.from_dict(service_consumption_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


