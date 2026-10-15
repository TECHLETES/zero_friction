# GetEnumTranslationsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enum_type** | **str** |  | [optional] 
**translation_status** | **List[str]** |  | [optional] 
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**page_size** | **int** |  | [optional] 

## Example

```python
from configuration_client.models.get_enum_translations_query_params import GetEnumTranslationsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetEnumTranslationsQueryParams from a JSON string
get_enum_translations_query_params_instance = GetEnumTranslationsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetEnumTranslationsQueryParams.to_json())

# convert the object into a dict
get_enum_translations_query_params_dict = get_enum_translations_query_params_instance.to_dict()
# create an instance of GetEnumTranslationsQueryParams from a dict
get_enum_translations_query_params_from_dict = GetEnumTranslationsQueryParams.from_dict(get_enum_translations_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


