# ImportDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**import_type** | [**ImportType**](ImportType.md) |  | [optional]
**status** | [**ImportStatus**](ImportStatus.md) |  | [optional]
**locked** | **bool** |  | [optional]
**can_be_undone** | **bool** |  | [optional]
**file_path** | **str** |  | [optional]
**original_file_name** | **str** |  | [optional]
**finished_on** | **datetime** |  | [optional]
**import_line_errors** | [**List[ImportLineErrorDTO]**](ImportLineErrorDTO.md) |  | [optional]
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
from configuration_client.models.import_dto import ImportDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ImportDTO from a JSON string
import_dto_instance = ImportDTO.from_json(json)
# print the JSON string representation of the object
print(ImportDTO.to_json())

# convert the object into a dict
import_dto_dict = import_dto_instance.to_dict()
# create an instance of ImportDTO from a dict
import_dto_from_dict = ImportDTO.from_dict(import_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
