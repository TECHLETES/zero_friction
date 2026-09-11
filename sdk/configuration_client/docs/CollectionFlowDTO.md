# CollectionFlowDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional]
**days_after_invoice_due** | **int** |  | [optional]
**step_ids** | **List[str]** |  | [optional]
**deleted** | **bool** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

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
