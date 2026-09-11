# ItemCodeDTO


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
from configuration_client.models.item_code_dto import ItemCodeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ItemCodeDTO from a JSON string
item_code_dto_instance = ItemCodeDTO.from_json(json)
# print the JSON string representation of the object
print(ItemCodeDTO.to_json())

# convert the object into a dict
item_code_dto_dict = item_code_dto_instance.to_dict()
# create an instance of ItemCodeDTO from a dict
item_code_dto_from_dict = ItemCodeDTO.from_dict(item_code_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
