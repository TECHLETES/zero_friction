# LocalisedSystemMessageDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | [**SystemMessageCode**](SystemMessageCode.md) |  | [optional] 
**message** | **str** |  | [optional] 
**message_values** | [**List[LocalisedSystemMessageDtoValue]**](LocalisedSystemMessageDtoValue.md) |  | [optional] 
**level** | [**SystemMessageLevel**](SystemMessageLevel.md) |  | [optional] 

## Example

```python
from billing_client.models.localised_system_message_dto import LocalisedSystemMessageDTO

# TODO update the JSON string below
json = "{}"
# create an instance of LocalisedSystemMessageDTO from a JSON string
localised_system_message_dto_instance = LocalisedSystemMessageDTO.from_json(json)
# print the JSON string representation of the object
print(LocalisedSystemMessageDTO.to_json())

# convert the object into a dict
localised_system_message_dto_dict = localised_system_message_dto_instance.to_dict()
# create an instance of LocalisedSystemMessageDTO from a dict
localised_system_message_dto_from_dict = LocalisedSystemMessageDTO.from_dict(localised_system_message_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


