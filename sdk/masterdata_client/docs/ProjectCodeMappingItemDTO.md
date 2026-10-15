# ProjectCodeMappingItemDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**accounting_code** | [**AccountingCodeLinkDTO**](AccountingCodeLinkDTO.md) |  | [optional] 
**accounting_status** | [**AccountingMappingStatus**](AccountingMappingStatus.md) |  | [optional] 
**service_location_ids** | **List[str]** |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.project_code_mapping_item_dto import ProjectCodeMappingItemDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProjectCodeMappingItemDTO from a JSON string
project_code_mapping_item_dto_instance = ProjectCodeMappingItemDTO.from_json(json)
# print the JSON string representation of the object
print(ProjectCodeMappingItemDTO.to_json())

# convert the object into a dict
project_code_mapping_item_dto_dict = project_code_mapping_item_dto_instance.to_dict()
# create an instance of ProjectCodeMappingItemDTO from a dict
project_code_mapping_item_dto_from_dict = ProjectCodeMappingItemDTO.from_dict(project_code_mapping_item_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


