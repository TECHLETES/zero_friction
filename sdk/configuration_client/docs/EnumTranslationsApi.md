# configuration_client.EnumTranslationsApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_enumtranslations**](EnumTranslationsApi.md#get_enumtranslations) | **GET** /EnumTranslations | Retrieves a paged list of enumeration symbol translations with optional filtering.
[**post_enumtranslations_enumtype_symbols_symbol_reset**](EnumTranslationsApi.md#post_enumtranslations_enumtype_symbols_symbol_reset) | **POST** /EnumTranslations/{enumType}/symbols/{symbol}/reset | Resets the translation for a specific enumeration symbol to its default value.
[**put_enumtranslations_enumtype_symbols_symbol**](EnumTranslationsApi.md#put_enumtranslations_enumtype_symbols_symbol) | **PUT** /EnumTranslations/{enumType}/symbols/{symbol} | Updates the translation for a specific enumeration symbol.


# **get_enumtranslations**
> EnumSymbolTranslationsDTOPagedResponseModelDTOApiResponseDTO get_enumtranslations(zf_tuuid, zf_ouuid, enum_type=enum_type, translation_status=translation_status, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Retrieves a paged list of enumeration symbol translations with optional filtering.

Retrieves a paged list of enumeration symbol translations with optional filtering.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.enum_symbol_translations_dto_paged_response_model_dto_api_response_dto import EnumSymbolTranslationsDTOPagedResponseModelDTOApiResponseDTO
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.EnumTranslationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    enum_type = 'enum_type_example' # str |  (optional)
    translation_status = ['translation_status_example'] # List[str] |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Retrieves a paged list of enumeration symbol translations with optional filtering.
        api_response = api_instance.get_enumtranslations(zf_tuuid, zf_ouuid, enum_type=enum_type, translation_status=translation_status, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of EnumTranslationsApi->get_enumtranslations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EnumTranslationsApi->get_enumtranslations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **enum_type** | **str**|  | [optional] 
 **translation_status** | [**List[str]**](str.md)|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**EnumSymbolTranslationsDTOPagedResponseModelDTOApiResponseDTO**](EnumSymbolTranslationsDTOPagedResponseModelDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_enumtranslations_enumtype_symbols_symbol_reset**
> EnumSymbolTranslationsDTOApiResponseDTO post_enumtranslations_enumtype_symbols_symbol_reset(enum_type, symbol, zf_tuuid, zf_ouuid)

Resets the translation for a specific enumeration symbol to its default value.

Resets the translation for a specific enumeration symbol to its default value.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.enum_symbol_translations_dto_api_response_dto import EnumSymbolTranslationsDTOApiResponseDTO
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.EnumTranslationsApi(api_client)
    enum_type = 'enum_type_example' # str | The name of the enumeration type.
    symbol = 'symbol_example' # str | The symbol within the enumeration type to reset.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Resets the translation for a specific enumeration symbol to its default value.
        api_response = api_instance.post_enumtranslations_enumtype_symbols_symbol_reset(enum_type, symbol, zf_tuuid, zf_ouuid)
        print("The response of EnumTranslationsApi->post_enumtranslations_enumtype_symbols_symbol_reset:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EnumTranslationsApi->post_enumtranslations_enumtype_symbols_symbol_reset: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enum_type** | **str**| The name of the enumeration type. | 
 **symbol** | **str**| The symbol within the enumeration type to reset. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**EnumSymbolTranslationsDTOApiResponseDTO**](EnumSymbolTranslationsDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_enumtranslations_enumtype_symbols_symbol**
> EnumSymbolTranslationsDTOApiResponseDTO put_enumtranslations_enumtype_symbols_symbol(enum_type, symbol, zf_tuuid, zf_ouuid, update_enum_symbol_translation_request=update_enum_symbol_translation_request)

Updates the translation for a specific enumeration symbol.

Updates the translation for a specific enumeration symbol.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.enum_symbol_translations_dto_api_response_dto import EnumSymbolTranslationsDTOApiResponseDTO
from configuration_client.models.update_enum_symbol_translation_request import UpdateEnumSymbolTranslationRequest
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: apiKeyQuery
configuration.api_key['apiKeyQuery'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyQuery'] = 'Bearer'

# Configure API key authorization: apiKeyHeader
configuration.api_key['apiKeyHeader'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['apiKeyHeader'] = 'Bearer'

# Enter a context with an instance of the API client
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.EnumTranslationsApi(api_client)
    enum_type = 'enum_type_example' # str | The name of the enumeration type.
    symbol = 'symbol_example' # str | The symbol within the enumeration type to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_enum_symbol_translation_request = {"translations":{}} # UpdateEnumSymbolTranslationRequest | The updated translation details. (optional)

    try:
        # Updates the translation for a specific enumeration symbol.
        api_response = api_instance.put_enumtranslations_enumtype_symbols_symbol(enum_type, symbol, zf_tuuid, zf_ouuid, update_enum_symbol_translation_request=update_enum_symbol_translation_request)
        print("The response of EnumTranslationsApi->put_enumtranslations_enumtype_symbols_symbol:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EnumTranslationsApi->put_enumtranslations_enumtype_symbols_symbol: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enum_type** | **str**| The name of the enumeration type. | 
 **symbol** | **str**| The symbol within the enumeration type to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_enum_symbol_translation_request** | [**UpdateEnumSymbolTranslationRequest**](UpdateEnumSymbolTranslationRequest.md)| The updated translation details. | [optional] 

### Return type

[**EnumSymbolTranslationsDTOApiResponseDTO**](EnumSymbolTranslationsDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

