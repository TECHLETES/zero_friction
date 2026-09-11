# DataExportDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional]
**parameters** | [**BaseDataExportParametersDTO**](BaseDataExportParametersDTO.md) |  | [optional]
**file_format_id** | **str** |  | [optional]
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
from configuration_client.models.data_export_dto import DataExportDTO

# TODO update the JSON string below
json = "{}"
# create an instance of DataExportDTO from a JSON string
data_export_dto_instance = DataExportDTO.from_json(json)
# print the JSON string representation of the object
print(DataExportDTO.to_json())

# convert the object into a dict
data_export_dto_dict = data_export_dto_instance.to_dict()
# create an instance of DataExportDTO from a dict
data_export_dto_from_dict = DataExportDTO.from_dict(data_export_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
