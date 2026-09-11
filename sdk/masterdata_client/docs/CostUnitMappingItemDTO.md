# CostUnitMappingItemDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional]
**accounting_code** | [**AccountingCodeLinkDTO**](AccountingCodeLinkDTO.md) |  | [optional]
**accounting_status** | [**AccountingMappingStatus**](AccountingMappingStatus.md) |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from masterdata_client.models.cost_unit_mapping_item_dto import CostUnitMappingItemDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CostUnitMappingItemDTO from a JSON string
cost_unit_mapping_item_dto_instance = CostUnitMappingItemDTO.from_json(json)
# print the JSON string representation of the object
print(CostUnitMappingItemDTO.to_json())

# convert the object into a dict
cost_unit_mapping_item_dto_dict = cost_unit_mapping_item_dto_instance.to_dict()
# create an instance of CostUnitMappingItemDTO from a dict
cost_unit_mapping_item_dto_from_dict = CostUnitMappingItemDTO.from_dict(cost_unit_mapping_item_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
