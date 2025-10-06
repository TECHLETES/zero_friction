# MeteringImportIssuesCountDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**MeteringImportIssuesCountDTO**](MeteringImportIssuesCountDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from metering_client.models.metering_import_issues_count_dto_api_response_dto import MeteringImportIssuesCountDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringImportIssuesCountDTOApiResponseDTO from a JSON string
metering_import_issues_count_dto_api_response_dto_instance = MeteringImportIssuesCountDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringImportIssuesCountDTOApiResponseDTO.to_json())

# convert the object into a dict
metering_import_issues_count_dto_api_response_dto_dict = metering_import_issues_count_dto_api_response_dto_instance.to_dict()
# create an instance of MeteringImportIssuesCountDTOApiResponseDTO from a dict
metering_import_issues_count_dto_api_response_dto_from_dict = MeteringImportIssuesCountDTOApiResponseDTO.from_dict(metering_import_issues_count_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


