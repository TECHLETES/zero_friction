# EnumSymbolTranslationsDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[EnumSymbolTranslationsDTO]**](EnumSymbolTranslationsDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.enum_symbol_translations_dto_paged_response_model_dto import EnumSymbolTranslationsDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EnumSymbolTranslationsDTOPagedResponseModelDTO from a JSON string
enum_symbol_translations_dto_paged_response_model_dto_instance = EnumSymbolTranslationsDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(EnumSymbolTranslationsDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
enum_symbol_translations_dto_paged_response_model_dto_dict = enum_symbol_translations_dto_paged_response_model_dto_instance.to_dict()
# create an instance of EnumSymbolTranslationsDTOPagedResponseModelDTO from a dict
enum_symbol_translations_dto_paged_response_model_dto_from_dict = EnumSymbolTranslationsDTOPagedResponseModelDTO.from_dict(enum_symbol_translations_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


