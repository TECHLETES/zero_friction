# EnumSymbolTranslationsDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**EnumSymbolTranslationsDTO**](EnumSymbolTranslationsDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.enum_symbol_translations_dto_api_response_dto import EnumSymbolTranslationsDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EnumSymbolTranslationsDTOApiResponseDTO from a JSON string
enum_symbol_translations_dto_api_response_dto_instance = EnumSymbolTranslationsDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(EnumSymbolTranslationsDTOApiResponseDTO.to_json())

# convert the object into a dict
enum_symbol_translations_dto_api_response_dto_dict = enum_symbol_translations_dto_api_response_dto_instance.to_dict()
# create an instance of EnumSymbolTranslationsDTOApiResponseDTO from a dict
enum_symbol_translations_dto_api_response_dto_from_dict = EnumSymbolTranslationsDTOApiResponseDTO.from_dict(enum_symbol_translations_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


