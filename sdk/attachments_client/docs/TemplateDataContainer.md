# TemplateDataContainer


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_date_time** | **datetime** |  | [optional] 
**id** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**ttl** | **int** |  | [optional] 
**cid** | **str** |  | [optional] 
**ts** | **int** |  | [optional] 
**user_id** | **str** |  | [optional] 
**require_attention** | **bool** |  | [optional] [readonly] 
**has_errors** | **bool** |  | [optional] 
**has_warnings** | **bool** |  | [optional] 
**organisation_id** | **str** |  | [optional] 
**data_object** | [**TemplateDataObject**](TemplateDataObject.md) |  | [optional] 
**discriminator** | **str** |  | [optional] [readonly] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] [readonly] 

## Example

```python
from attachments_client.models.template_data_container import TemplateDataContainer

# TODO update the JSON string below
json = "{}"
# create an instance of TemplateDataContainer from a JSON string
template_data_container_instance = TemplateDataContainer.from_json(json)
# print the JSON string representation of the object
print(TemplateDataContainer.to_json())

# convert the object into a dict
template_data_container_dict = template_data_container_instance.to_dict()
# create an instance of TemplateDataContainer from a dict
template_data_container_from_dict = TemplateDataContainer.from_dict(template_data_container_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


