# UpdateEntityTranslationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**translated_fields** | **Dict[str, Optional[Dict[str, str]]]** |  | [optional] 

## Example

```python
from configuration_client.models.update_entity_translation_request import UpdateEntityTranslationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateEntityTranslationRequest from a JSON string
update_entity_translation_request_instance = UpdateEntityTranslationRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateEntityTranslationRequest.to_json())

# convert the object into a dict
update_entity_translation_request_dict = update_entity_translation_request_instance.to_dict()
# create an instance of UpdateEntityTranslationRequest from a dict
update_entity_translation_request_from_dict = UpdateEntityTranslationRequest.from_dict(update_entity_translation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


