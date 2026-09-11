# ApiResponseDTOOfDataExportFileFormatDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**DataExportFileFormatDTO**](DataExportFileFormatDTO.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.api_response_dtoof_data_export_file_format_dto import ApiResponseDTOOfDataExportFileFormatDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfDataExportFileFormatDTO from a JSON string
api_response_dtoof_data_export_file_format_dto_instance = ApiResponseDTOOfDataExportFileFormatDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfDataExportFileFormatDTO.to_json())

# convert the object into a dict
api_response_dtoof_data_export_file_format_dto_dict = api_response_dtoof_data_export_file_format_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfDataExportFileFormatDTO from a dict
api_response_dtoof_data_export_file_format_dto_from_dict = ApiResponseDTOOfDataExportFileFormatDTO.from_dict(api_response_dtoof_data_export_file_format_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
