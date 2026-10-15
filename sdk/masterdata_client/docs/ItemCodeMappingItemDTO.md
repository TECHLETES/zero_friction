# ItemCodeMappingItemDTO


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
from masterdata_client.models.item_code_mapping_item_dto import ItemCodeMappingItemDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ItemCodeMappingItemDTO from a JSON string
item_code_mapping_item_dto_instance = ItemCodeMappingItemDTO.from_json(json)
# print the JSON string representation of the object
print(ItemCodeMappingItemDTO.to_json())

# convert the object into a dict
item_code_mapping_item_dto_dict = item_code_mapping_item_dto_instance.to_dict()
# create an instance of ItemCodeMappingItemDTO from a dict
item_code_mapping_item_dto_from_dict = ItemCodeMappingItemDTO.from_dict(item_code_mapping_item_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


