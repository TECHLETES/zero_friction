# DataExportFileFormatDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[DataExportFileFormatDTO]**](DataExportFileFormatDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.data_export_file_format_dto_paged_response_model_dto import DataExportFileFormatDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of DataExportFileFormatDTOPagedResponseModelDTO from a JSON string
data_export_file_format_dto_paged_response_model_dto_instance = DataExportFileFormatDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(DataExportFileFormatDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
data_export_file_format_dto_paged_response_model_dto_dict = data_export_file_format_dto_paged_response_model_dto_instance.to_dict()
# create an instance of DataExportFileFormatDTOPagedResponseModelDTO from a dict
data_export_file_format_dto_paged_response_model_dto_from_dict = DataExportFileFormatDTOPagedResponseModelDTO.from_dict(data_export_file_format_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


