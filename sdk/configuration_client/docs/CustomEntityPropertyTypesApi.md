# configuration_client.CustomEntityPropertyTypesApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_customentitypropertytypes_customentitypropertytypeuuid**](CustomEntityPropertyTypesApi.md#delete_customentitypropertytypes_customentitypropertytypeuuid) | **DELETE** /CustomEntityPropertyTypes/{customentitypropertytypeuuid} | Deletes a custom entity property type by its identifier.
[**get_customentitypropertytypes**](CustomEntityPropertyTypesApi.md#get_customentitypropertytypes) | **GET** /CustomEntityPropertyTypes | Retrieves a paged list of custom entity property types with optional filtering and sorting.
[**get_customentitypropertytypes_customentitypropertytypeuuid**](CustomEntityPropertyTypesApi.md#get_customentitypropertytypes_customentitypropertytypeuuid) | **GET** /CustomEntityPropertyTypes/{customentitypropertytypeuuid} | Retrieves a specific custom entity property type by its identifier.
[**post_customentitypropertytypes**](CustomEntityPropertyTypesApi.md#post_customentitypropertytypes) | **POST** /CustomEntityPropertyTypes | Creates a new custom entity property type.
[**post_customentitypropertytypes_customentitypropertytypeuuid**](CustomEntityPropertyTypesApi.md#post_customentitypropertytypes_customentitypropertytypeuuid) | **POST** /CustomEntityPropertyTypes/{customentitypropertytypeuuid} | Updates an existing custom entity property type.
[**post_customentitypropertytypes_customentitypropertytypeuuid_options**](CustomEntityPropertyTypesApi.md#post_customentitypropertytypes_customentitypropertytypeuuid_options) | **POST** /CustomEntityPropertyTypes/{customentitypropertytypeuuid}/options | Updates the dropdown options for a custom entity property type.
[**post_customentitypropertytypes_entityid_translations**](CustomEntityPropertyTypesApi.md#post_customentitypropertytypes_entityid_translations) | **POST** /CustomEntityPropertyTypes/{entityId}/translations | /CustomEntityPropertyTypes/{entityId}/translations - POST


# **delete_customentitypropertytypes_customentitypropertytypeuuid**
> BooleanApiResponseDTO delete_customentitypropertytypes_customentitypropertytypeuuid(customentitypropertytypeuuid, zf_tuuid, zf_ouuid)

Deletes a custom entity property type by its identifier.

Deletes a custom entity property type by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.boolean_api_response_dto import BooleanApiResponseDTO
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
    api_instance = configuration_client.CustomEntityPropertyTypesApi(api_client)
    customentitypropertytypeuuid = 'customentitypropertytypeuuid_example' # str | The unique identifier of the custom entity property type to delete.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes a custom entity property type by its identifier.
        api_response = api_instance.delete_customentitypropertytypes_customentitypropertytypeuuid(customentitypropertytypeuuid, zf_tuuid, zf_ouuid)
        print("The response of CustomEntityPropertyTypesApi->delete_customentitypropertytypes_customentitypropertytypeuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomEntityPropertyTypesApi->delete_customentitypropertytypes_customentitypropertytypeuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customentitypropertytypeuuid** | **str**| The unique identifier of the custom entity property type to delete. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**BooleanApiResponseDTO**](BooleanApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | No Content |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_customentitypropertytypes**
> CustomEntityPropertyTypeDTOPagedResponseModelDTOApiResponseDTO get_customentitypropertytypes(zf_tuuid, zf_ouuid, subject_types=subject_types, excluded_subject_types=excluded_subject_types, value_types=value_types, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)

Retrieves a paged list of custom entity property types with optional filtering and sorting.

Retrieves a paged list of custom entity property types with optional filtering and sorting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.custom_entity_property_type_dto_paged_response_model_dto_api_response_dto import CustomEntityPropertyTypeDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = configuration_client.CustomEntityPropertyTypesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    subject_types = ['subject_types_example'] # List[str] | Filter by specific subject types. (optional)
    excluded_subject_types = ['excluded_subject_types_example'] # List[str] | Exclude specific subject types from the results. (optional)
    value_types = ['value_types_example'] # List[str] | Filter by specific value types. (optional)
    show_deleted = True # bool | When true, includes deleted custom entity property types in the results. (optional)
    flex_search = 'flex_search_example' # str | Search term to filter custom entity property types by various fields. (optional)
    order_by = 'order_by_example' # str | Sorting expression for the results. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of custom entity property types with optional filtering and sorting.
        api_response = api_instance.get_customentitypropertytypes(zf_tuuid, zf_ouuid, subject_types=subject_types, excluded_subject_types=excluded_subject_types, value_types=value_types, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)
        print("The response of CustomEntityPropertyTypesApi->get_customentitypropertytypes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomEntityPropertyTypesApi->get_customentitypropertytypes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **subject_types** | [**List[str]**](str.md)| Filter by specific subject types. | [optional] 
 **excluded_subject_types** | [**List[str]**](str.md)| Exclude specific subject types from the results. | [optional] 
 **value_types** | [**List[str]**](str.md)| Filter by specific value types. | [optional] 
 **show_deleted** | **bool**| When true, includes deleted custom entity property types in the results. | [optional] 
 **flex_search** | **str**| Search term to filter custom entity property types by various fields. | [optional] 
 **order_by** | **str**| Sorting expression for the results. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**CustomEntityPropertyTypeDTOPagedResponseModelDTOApiResponseDTO**](CustomEntityPropertyTypeDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_customentitypropertytypes_customentitypropertytypeuuid**
> CustomEntityPropertyTypeDTOApiResponseDTO get_customentitypropertytypes_customentitypropertytypeuuid(customentitypropertytypeuuid, zf_tuuid, zf_ouuid, show_deleted=show_deleted)

Retrieves a specific custom entity property type by its identifier.

Retrieves a specific custom entity property type by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.custom_entity_property_type_dto_api_response_dto import CustomEntityPropertyTypeDTOApiResponseDTO
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
    api_instance = configuration_client.CustomEntityPropertyTypesApi(api_client)
    customentitypropertytypeuuid = 'customentitypropertytypeuuid_example' # str | The unique identifier of the custom entity property type.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    show_deleted = True # bool | When true, allows retrieving deleted custom entity property types. (optional)

    try:
        # Retrieves a specific custom entity property type by its identifier.
        api_response = api_instance.get_customentitypropertytypes_customentitypropertytypeuuid(customentitypropertytypeuuid, zf_tuuid, zf_ouuid, show_deleted=show_deleted)
        print("The response of CustomEntityPropertyTypesApi->get_customentitypropertytypes_customentitypropertytypeuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomEntityPropertyTypesApi->get_customentitypropertytypes_customentitypropertytypeuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customentitypropertytypeuuid** | **str**| The unique identifier of the custom entity property type. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **show_deleted** | **bool**| When true, allows retrieving deleted custom entity property types. | [optional] 

### Return type

[**CustomEntityPropertyTypeDTOApiResponseDTO**](CustomEntityPropertyTypeDTOApiResponseDTO.md)

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

# **post_customentitypropertytypes**
> CustomEntityPropertyTypeDTOApiResponseDTO post_customentitypropertytypes(zf_tuuid, zf_ouuid, create_custom_entity_property_type_request=create_custom_entity_property_type_request)

Creates a new custom entity property type.

Creates a new custom entity property type.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.create_custom_entity_property_type_request import CreateCustomEntityPropertyTypeRequest
from configuration_client.models.custom_entity_property_type_dto_api_response_dto import CustomEntityPropertyTypeDTOApiResponseDTO
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
    api_instance = configuration_client.CustomEntityPropertyTypesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_custom_entity_property_type_request = {"name":"string","description":"string","showInHeader":true,"tagColor":{},"entitySubjectType":{},"valueType":{}} # CreateCustomEntityPropertyTypeRequest | The details of the custom entity property type to create. (optional)

    try:
        # Creates a new custom entity property type.
        api_response = api_instance.post_customentitypropertytypes(zf_tuuid, zf_ouuid, create_custom_entity_property_type_request=create_custom_entity_property_type_request)
        print("The response of CustomEntityPropertyTypesApi->post_customentitypropertytypes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomEntityPropertyTypesApi->post_customentitypropertytypes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_custom_entity_property_type_request** | [**CreateCustomEntityPropertyTypeRequest**](CreateCustomEntityPropertyTypeRequest.md)| The details of the custom entity property type to create. | [optional] 

### Return type

[**CustomEntityPropertyTypeDTOApiResponseDTO**](CustomEntityPropertyTypeDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_customentitypropertytypes_customentitypropertytypeuuid**
> CustomEntityPropertyTypeDTOApiResponseDTO post_customentitypropertytypes_customentitypropertytypeuuid(customentitypropertytypeuuid, zf_tuuid, zf_ouuid, update_custom_entity_property_type_request=update_custom_entity_property_type_request)

Updates an existing custom entity property type.

Updates an existing custom entity property type.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.custom_entity_property_type_dto_api_response_dto import CustomEntityPropertyTypeDTOApiResponseDTO
from configuration_client.models.update_custom_entity_property_type_request import UpdateCustomEntityPropertyTypeRequest
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
    api_instance = configuration_client.CustomEntityPropertyTypesApi(api_client)
    customentitypropertytypeuuid = 'customentitypropertytypeuuid_example' # str | The unique identifier of the custom entity property type to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_custom_entity_property_type_request = {"name":"string","description":"string","showInHeader":true,"tagColor":{}} # UpdateCustomEntityPropertyTypeRequest | The updated custom entity property type details. (optional)

    try:
        # Updates an existing custom entity property type.
        api_response = api_instance.post_customentitypropertytypes_customentitypropertytypeuuid(customentitypropertytypeuuid, zf_tuuid, zf_ouuid, update_custom_entity_property_type_request=update_custom_entity_property_type_request)
        print("The response of CustomEntityPropertyTypesApi->post_customentitypropertytypes_customentitypropertytypeuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomEntityPropertyTypesApi->post_customentitypropertytypes_customentitypropertytypeuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customentitypropertytypeuuid** | **str**| The unique identifier of the custom entity property type to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_custom_entity_property_type_request** | [**UpdateCustomEntityPropertyTypeRequest**](UpdateCustomEntityPropertyTypeRequest.md)| The updated custom entity property type details. | [optional] 

### Return type

[**CustomEntityPropertyTypeDTOApiResponseDTO**](CustomEntityPropertyTypeDTOApiResponseDTO.md)

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

# **post_customentitypropertytypes_customentitypropertytypeuuid_options**
> BooleanApiResponseDTO post_customentitypropertytypes_customentitypropertytypeuuid_options(customentitypropertytypeuuid, zf_tuuid, zf_ouuid, update_custom_entity_property_dropdown_options_request=update_custom_entity_property_dropdown_options_request)

Updates the dropdown options for a custom entity property type.

Updates the dropdown options for a custom entity property type.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from configuration_client.models.update_custom_entity_property_dropdown_options_request import UpdateCustomEntityPropertyDropdownOptionsRequest
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
    api_instance = configuration_client.CustomEntityPropertyTypesApi(api_client)
    customentitypropertytypeuuid = 'customentitypropertytypeuuid_example' # str | The unique identifier of the custom entity property type.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_custom_entity_property_dropdown_options_request = {"customEntityPropertyTypeId":"string","options":[{"id":"string","option":"string","deleted":true}]} # UpdateCustomEntityPropertyDropdownOptionsRequest | The updated dropdown options for the custom entity property type. (optional)

    try:
        # Updates the dropdown options for a custom entity property type.
        api_response = api_instance.post_customentitypropertytypes_customentitypropertytypeuuid_options(customentitypropertytypeuuid, zf_tuuid, zf_ouuid, update_custom_entity_property_dropdown_options_request=update_custom_entity_property_dropdown_options_request)
        print("The response of CustomEntityPropertyTypesApi->post_customentitypropertytypes_customentitypropertytypeuuid_options:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomEntityPropertyTypesApi->post_customentitypropertytypes_customentitypropertytypeuuid_options: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customentitypropertytypeuuid** | **str**| The unique identifier of the custom entity property type. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_custom_entity_property_dropdown_options_request** | [**UpdateCustomEntityPropertyDropdownOptionsRequest**](UpdateCustomEntityPropertyDropdownOptionsRequest.md)| The updated dropdown options for the custom entity property type. | [optional] 

### Return type

[**BooleanApiResponseDTO**](BooleanApiResponseDTO.md)

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

# **post_customentitypropertytypes_entityid_translations**
> ApiResponseDTO post_customentitypropertytypes_entityid_translations(entity_id, zf_tuuid, zf_ouuid, update_entity_translation_request=update_entity_translation_request)

/CustomEntityPropertyTypes/{entityId}/translations - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.api_response_dto import ApiResponseDTO
from configuration_client.models.update_entity_translation_request import UpdateEntityTranslationRequest
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
    api_instance = configuration_client.CustomEntityPropertyTypesApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_entity_translation_request = {"translatedFields":{}} # UpdateEntityTranslationRequest |  (optional)

    try:
        # /CustomEntityPropertyTypes/{entityId}/translations - POST
        api_response = api_instance.post_customentitypropertytypes_entityid_translations(entity_id, zf_tuuid, zf_ouuid, update_entity_translation_request=update_entity_translation_request)
        print("The response of CustomEntityPropertyTypesApi->post_customentitypropertytypes_entityid_translations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomEntityPropertyTypesApi->post_customentitypropertytypes_entityid_translations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_entity_translation_request** | [**UpdateEntityTranslationRequest**](UpdateEntityTranslationRequest.md)|  | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

