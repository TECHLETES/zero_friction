# CollectionFlowDTO


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
**days_after_invoice_due** | **int** |  | [optional] 
**step_ids** | **List[str]** |  | [optional] 
**deleted** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.collection_flow_dto import CollectionFlowDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CollectionFlowDTO from a JSON string
collection_flow_dto_instance = CollectionFlowDTO.from_json(json)
# print the JSON string representation of the object
print(CollectionFlowDTO.to_json())

# convert the object into a dict
collection_flow_dto_dict = collection_flow_dto_instance.to_dict()
# create an instance of CollectionFlowDTO from a dict
collection_flow_dto_from_dict = CollectionFlowDTO.from_dict(collection_flow_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


