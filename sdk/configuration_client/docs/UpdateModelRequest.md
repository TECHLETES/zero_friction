# UpdateModelRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**brand_name** | **str** |  | [optional] 
**channel_templates** | [**List[ChannelTemplateRequest]**](ChannelTemplateRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.update_model_request import UpdateModelRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateModelRequest from a JSON string
update_model_request_instance = UpdateModelRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateModelRequest.to_json())

# convert the object into a dict
update_model_request_dict = update_model_request_instance.to_dict()
# create an instance of UpdateModelRequest from a dict
update_model_request_from_dict = UpdateModelRequest.from_dict(update_model_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


