# DataImportDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**DataImportDTOPagedResponseModelDTO**](DataImportDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.data_import_dto_paged_response_model_dto_api_response_dto import DataImportDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of DataImportDTOPagedResponseModelDTOApiResponseDTO from a JSON string
data_import_dto_paged_response_model_dto_api_response_dto_instance = DataImportDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(DataImportDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
data_import_dto_paged_response_model_dto_api_response_dto_dict = data_import_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of DataImportDTOPagedResponseModelDTOApiResponseDTO from a dict
data_import_dto_paged_response_model_dto_api_response_dto_from_dict = DataImportDTOPagedResponseModelDTOApiResponseDTO.from_dict(data_import_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


