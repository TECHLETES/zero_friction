# UpdateEnumSymbolTranslationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**translations** | **Dict[str, Optional[str]]** |  | [optional] 

## Example

```python
from configuration_client.models.update_enum_symbol_translation_request import UpdateEnumSymbolTranslationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateEnumSymbolTranslationRequest from a JSON string
update_enum_symbol_translation_request_instance = UpdateEnumSymbolTranslationRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateEnumSymbolTranslationRequest.to_json())

# convert the object into a dict
update_enum_symbol_translation_request_dict = update_enum_symbol_translation_request_instance.to_dict()
# create an instance of UpdateEnumSymbolTranslationRequest from a dict
update_enum_symbol_translation_request_from_dict = UpdateEnumSymbolTranslationRequest.from_dict(update_enum_symbol_translation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


