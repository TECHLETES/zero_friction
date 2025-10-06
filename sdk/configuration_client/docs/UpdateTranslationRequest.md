# UpdateTranslationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**update_all_scenarios** | **bool** |  | [optional] 
**translations** | **Dict[str, Optional[str]]** |  | [optional] 
**entity_subject_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**entity_subject_sub_type** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.update_translation_request import UpdateTranslationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateTranslationRequest from a JSON string
update_translation_request_instance = UpdateTranslationRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateTranslationRequest.to_json())

# convert the object into a dict
update_translation_request_dict = update_translation_request_instance.to_dict()
# create an instance of UpdateTranslationRequest from a dict
update_translation_request_from_dict = UpdateTranslationRequest.from_dict(update_translation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


