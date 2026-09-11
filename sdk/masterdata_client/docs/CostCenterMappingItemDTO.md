# CostCenterMappingItemDTO


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
from masterdata_client.models.cost_center_mapping_item_dto import CostCenterMappingItemDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CostCenterMappingItemDTO from a JSON string
cost_center_mapping_item_dto_instance = CostCenterMappingItemDTO.from_json(json)
# print the JSON string representation of the object
print(CostCenterMappingItemDTO.to_json())

# convert the object into a dict
cost_center_mapping_item_dto_dict = cost_center_mapping_item_dto_instance.to_dict()
# create an instance of CostCenterMappingItemDTO from a dict
cost_center_mapping_item_dto_from_dict = CostCenterMappingItemDTO.from_dict(cost_center_mapping_item_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
