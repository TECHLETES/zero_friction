# GetEntityAttachmentQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**customer_id** | **str** |  | [optional] 
**contract_id** | **str** |  | [optional] 
**viewed** | **bool** |  | [optional] 
**visibilities** | **List[str]** |  | [optional] 
**created_start_date_time** | **datetime** |  | [optional] 
**created_end_date_time** | **datetime** |  | [optional] 

## Example

```python
from attachments_client.models.get_entity_attachment_query_params import GetEntityAttachmentQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetEntityAttachmentQueryParams from a JSON string
get_entity_attachment_query_params_instance = GetEntityAttachmentQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetEntityAttachmentQueryParams.to_json())

# convert the object into a dict
get_entity_attachment_query_params_dict = get_entity_attachment_query_params_instance.to_dict()
# create an instance of GetEntityAttachmentQueryParams from a dict
get_entity_attachment_query_params_from_dict = GetEntityAttachmentQueryParams.from_dict(get_entity_attachment_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


