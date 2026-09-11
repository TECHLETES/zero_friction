# DataImportDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional]
**custom_file_format_id** | **str** |  | [optional]
**metering_format_type** | [**DataImportMeteringFormatType**](DataImportMeteringFormatType.md) |  | [optional]
**parameters** | [**DataImportParametersDTO**](DataImportParametersDTO.md) |  | [optional]
**automatic_processing** | **bool** |  | [optional]
**disabled** | **bool** |  | [optional]
**deleted** | **bool** |  | [optional]
**organisation_id** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.data_import_dto import DataImportDTO

# TODO update the JSON string below
json = "{}"
# create an instance of DataImportDTO from a JSON string
data_import_dto_instance = DataImportDTO.from_json(json)
# print the JSON string representation of the object
print(DataImportDTO.to_json())

# convert the object into a dict
data_import_dto_dict = data_import_dto_instance.to_dict()
# create an instance of DataImportDTO from a dict
data_import_dto_from_dict = DataImportDTO.from_dict(data_import_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
