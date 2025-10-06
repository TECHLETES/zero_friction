# EnumSymbolTranslationsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enum_type** | **str** |  | [optional] 
**symbol** | **str** |  | [optional] 
**translations** | **Dict[str, Optional[str]]** |  | [optional] 
**translation_status** | [**TranslationStatus**](TranslationStatus.md) |  | [optional] 

## Example

```python
from configuration_client.models.enum_symbol_translations_dto import EnumSymbolTranslationsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EnumSymbolTranslationsDTO from a JSON string
enum_symbol_translations_dto_instance = EnumSymbolTranslationsDTO.from_json(json)
# print the JSON string representation of the object
print(EnumSymbolTranslationsDTO.to_json())

# convert the object into a dict
enum_symbol_translations_dto_dict = enum_symbol_translations_dto_instance.to_dict()
# create an instance of EnumSymbolTranslationsDTO from a dict
enum_symbol_translations_dto_from_dict = EnumSymbolTranslationsDTO.from_dict(enum_symbol_translations_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


