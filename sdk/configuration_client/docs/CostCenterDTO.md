# CostCenterDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **str** |  | [optional] 
**code** | **str** |  | 
**external_accounting_metadata** | [**ExternalAccountingMetadataDTO**](ExternalAccountingMetadataDTO.md) |  | 
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
from configuration_client.models.cost_center_dto import CostCenterDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CostCenterDTO from a JSON string
cost_center_dto_instance = CostCenterDTO.from_json(json)
# print the JSON string representation of the object
print(CostCenterDTO.to_json())

# convert the object into a dict
cost_center_dto_dict = cost_center_dto_instance.to_dict()
# create an instance of CostCenterDTO from a dict
cost_center_dto_from_dict = CostCenterDTO.from_dict(cost_center_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


