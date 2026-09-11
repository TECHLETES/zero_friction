# ProjectCodeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional]
**code** | **str** |  | [optional]
**description** | **str** |  | [optional]
**external_accounting_metadata** | [**ExternalAccountingMetadataDTO**](ExternalAccountingMetadataDTO.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**modified_date_time** | **datetime** |  | [optional]

## Example

```python
from configuration_client.models.project_code_dto import ProjectCodeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectCodeDTO from a JSON string
project_code_dto_instance = ProjectCodeDTO.from_json(json)
# print the JSON string representation of the object
print(ProjectCodeDTO.to_json())

# convert the object into a dict
project_code_dto_dict = project_code_dto_instance.to_dict()
# create an instance of ProjectCodeDTO from a dict
project_code_dto_from_dict = ProjectCodeDTO.from_dict(project_code_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
