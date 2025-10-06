# ResetTranslationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**update_all_scenarios** | **bool** |  | [optional] 
**entity_subject_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**entity_subject_sub_type** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.reset_translation_request import ResetTranslationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ResetTranslationRequest from a JSON string
reset_translation_request_instance = ResetTranslationRequest.from_json(json)
# print the JSON string representation of the object
print(ResetTranslationRequest.to_json())

# convert the object into a dict
reset_translation_request_dict = reset_translation_request_instance.to_dict()
# create an instance of ResetTranslationRequest from a dict
reset_translation_request_from_dict = ResetTranslationRequest.from_dict(reset_translation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


