# configuration_client.ScenarioTranslationsApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_scenariotranslations_entitysubjecttype_entitysubjectsubtype_templateusec**](ScenarioTranslationsApi.md#get_scenariotranslations_entitysubjecttype_entitysubjectsubtype_templateusec) | **GET** /ScenarioTranslations/{entitySubjectType}/{entitySubjectSubType}/{templateUsecase} | Retrieves a list of scenario translations for a specific entity subject type, subtype, and template use case.
[**get_scenariotranslations_translationname_getscenarios**](ScenarioTranslationsApi.md#get_scenariotranslations_translationname_getscenarios) | **GET** /ScenarioTranslations/{translationName}/getscenarios | Retrieves scenarios associated with a specific translation.
[**post_scenariotranslations_translationname_reset**](ScenarioTranslationsApi.md#post_scenariotranslations_translationname_reset) | **POST** /ScenarioTranslations/{translationName}/reset | Resets a specific scenario translation to its default value.
[**post_scenariotranslations_translationname_update**](ScenarioTranslationsApi.md#post_scenariotranslations_translationname_update) | **POST** /ScenarioTranslations/{translationName}/update | Updates a specific scenario translation.


# **get_scenariotranslations_entitysubjecttype_entitysubjectsubtype_templateusec**
> ScenarioTranslationListDTOApiResponseDTO get_scenariotranslations_entitysubjecttype_entitysubjectsubtype_templateusec(entity_subject_type, entity_subject_sub_type, template_usecase, zf_tuuid, zf_ouuid, culture=culture, search_term=search_term)

Retrieves a list of scenario translations for a specific entity subject type, subtype, and template use case.

Retrieves a list of scenario translations for a specific entity subject type, subtype, and template use case.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.scenario_translation_list_dto_api_response_dto import ScenarioTranslationListDTOApiResponseDTO
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
    api_instance = configuration_client.ScenarioTranslationsApi(api_client)
    entity_subject_type = 'entity_subject_type_example' # str | The type of entity subject.
    entity_subject_sub_type = 'entity_subject_sub_type_example' # str | The subtype of entity subject.
    template_usecase = 'template_usecase_example' # str | The template use case.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    culture = 'culture_example' # str | The culture code for localization. (optional)
    search_term = 'search_term_example' # str | Optional search term to filter translations. (optional)

    try:
        # Retrieves a list of scenario translations for a specific entity subject type, subtype, and template use case.
        api_response = api_instance.get_scenariotranslations_entitysubjecttype_entitysubjectsubtype_templateusec(entity_subject_type, entity_subject_sub_type, template_usecase, zf_tuuid, zf_ouuid, culture=culture, search_term=search_term)
        print("The response of ScenarioTranslationsApi->get_scenariotranslations_entitysubjecttype_entitysubjectsubtype_templateusec:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScenarioTranslationsApi->get_scenariotranslations_entitysubjecttype_entitysubjectsubtype_templateusec: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_subject_type** | **str**| The type of entity subject. | 
 **entity_subject_sub_type** | **str**| The subtype of entity subject. | 
 **template_usecase** | **str**| The template use case. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **culture** | **str**| The culture code for localization. | [optional] 
 **search_term** | **str**| Optional search term to filter translations. | [optional] 

### Return type

[**ScenarioTranslationListDTOApiResponseDTO**](ScenarioTranslationListDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scenariotranslations_translationname_getscenarios**
> EntityTypePagedResponseModelDTO get_scenariotranslations_translationname_getscenarios(translation_name, zf_tuuid, zf_ouuid)

Retrieves scenarios associated with a specific translation.

Retrieves scenarios associated with a specific translation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.entity_type_paged_response_model_dto import EntityTypePagedResponseModelDTO
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
    api_instance = configuration_client.ScenarioTranslationsApi(api_client)
    translation_name = 'translation_name_example' # str | The name of the translation.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves scenarios associated with a specific translation.
        api_response = api_instance.get_scenariotranslations_translationname_getscenarios(translation_name, zf_tuuid, zf_ouuid)
        print("The response of ScenarioTranslationsApi->get_scenariotranslations_translationname_getscenarios:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScenarioTranslationsApi->get_scenariotranslations_translationname_getscenarios: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **translation_name** | **str**| The name of the translation. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**EntityTypePagedResponseModelDTO**](EntityTypePagedResponseModelDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_scenariotranslations_translationname_reset**
> ScenarioTranslationDTOApiResponseDTO post_scenariotranslations_translationname_reset(translation_name, zf_tuuid, zf_ouuid, reset_translation_request=reset_translation_request)

Resets a specific scenario translation to its default value.

Resets a specific scenario translation to its default value.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.reset_translation_request import ResetTranslationRequest
from configuration_client.models.scenario_translation_dto_api_response_dto import ScenarioTranslationDTOApiResponseDTO
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
    api_instance = configuration_client.ScenarioTranslationsApi(api_client)
    translation_name = 'translation_name_example' # str | The name of the translation to reset.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    reset_translation_request = {"updateAllScenarios":true,"entitySubjectType":{},"entitySubjectSubType":"string"} # ResetTranslationRequest | The reset translation request details. (optional)

    try:
        # Resets a specific scenario translation to its default value.
        api_response = api_instance.post_scenariotranslations_translationname_reset(translation_name, zf_tuuid, zf_ouuid, reset_translation_request=reset_translation_request)
        print("The response of ScenarioTranslationsApi->post_scenariotranslations_translationname_reset:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScenarioTranslationsApi->post_scenariotranslations_translationname_reset: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **translation_name** | **str**| The name of the translation to reset. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **reset_translation_request** | [**ResetTranslationRequest**](ResetTranslationRequest.md)| The reset translation request details. | [optional] 

### Return type

[**ScenarioTranslationDTOApiResponseDTO**](ScenarioTranslationDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_scenariotranslations_translationname_update**
> ScenarioTranslationDTOApiResponseDTO post_scenariotranslations_translationname_update(translation_name, zf_tuuid, zf_ouuid, update_translation_request=update_translation_request)

Updates a specific scenario translation.

Updates a specific scenario translation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.scenario_translation_dto_api_response_dto import ScenarioTranslationDTOApiResponseDTO
from configuration_client.models.update_translation_request import UpdateTranslationRequest
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
    api_instance = configuration_client.ScenarioTranslationsApi(api_client)
    translation_name = 'translation_name_example' # str | The name of the translation to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_translation_request = {"updateAllScenarios":true,"translations":{},"entitySubjectType":{},"entitySubjectSubType":"string"} # UpdateTranslationRequest | The updated translation details. (optional)

    try:
        # Updates a specific scenario translation.
        api_response = api_instance.post_scenariotranslations_translationname_update(translation_name, zf_tuuid, zf_ouuid, update_translation_request=update_translation_request)
        print("The response of ScenarioTranslationsApi->post_scenariotranslations_translationname_update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScenarioTranslationsApi->post_scenariotranslations_translationname_update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **translation_name** | **str**| The name of the translation to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_translation_request** | [**UpdateTranslationRequest**](UpdateTranslationRequest.md)| The updated translation details. | [optional] 

### Return type

[**ScenarioTranslationDTOApiResponseDTO**](ScenarioTranslationDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

