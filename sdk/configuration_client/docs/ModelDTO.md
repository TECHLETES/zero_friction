# ModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**brand_name** | **str** |  | [optional] 
**channel_templates** | [**List[ChannelTemplateDTO]**](ChannelTemplateDTO.md) |  | [optional] 
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
from configuration_client.models.model_dto import ModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ModelDTO from a JSON string
model_dto_instance = ModelDTO.from_json(json)
# print the JSON string representation of the object
print(ModelDTO.to_json())

# convert the object into a dict
model_dto_dict = model_dto_instance.to_dict()
# create an instance of ModelDTO from a dict
model_dto_from_dict = ModelDTO.from_dict(model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


