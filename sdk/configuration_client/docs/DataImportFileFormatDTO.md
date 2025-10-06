# DataImportFileFormatDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**deleted** | **bool** |  | [optional] 
**is_built_in** | **bool** |  | [optional] 
**settings** | **object** |  | [optional] 

## Example

```python
from configuration_client.models.data_import_file_format_dto import DataImportFileFormatDTO

# TODO update the JSON string below
json = "{}"
# create an instance of DataImportFileFormatDTO from a JSON string
data_import_file_format_dto_instance = DataImportFileFormatDTO.from_json(json)
# print the JSON string representation of the object
print(DataImportFileFormatDTO.to_json())

# convert the object into a dict
data_import_file_format_dto_dict = data_import_file_format_dto_instance.to_dict()
# create an instance of DataImportFileFormatDTO from a dict
data_import_file_format_dto_from_dict = DataImportFileFormatDTO.from_dict(data_import_file_format_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


