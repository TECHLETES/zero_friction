# configuration_client.ConsumptionUnitTypesApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_consumptionunittypes_consumptionunittypeuuid**](ConsumptionUnitTypesApi.md#delete_consumptionunittypes_consumptionunittypeuuid) | **DELETE** /ConsumptionUnitTypes/{consumptionunittypeuuid} | Deletes a consumption unit type by its identifier.
[**get_consumptionunittypes**](ConsumptionUnitTypesApi.md#get_consumptionunittypes) | **GET** /ConsumptionUnitTypes | Retrieves a paged list of consumption unit types with optional filtering and sorting.
[**get_consumptionunittypes_consumptionunittypeuuid**](ConsumptionUnitTypesApi.md#get_consumptionunittypes_consumptionunittypeuuid) | **GET** /ConsumptionUnitTypes/{consumptionunittypeuuid} | Retrieves a specific consumption unit type by its identifier.
[**post_consumptionunittypes**](ConsumptionUnitTypesApi.md#post_consumptionunittypes) | **POST** /ConsumptionUnitTypes | Creates a new consumption unit type.
[**post_consumptionunittypes_consumptionunittypeuuid**](ConsumptionUnitTypesApi.md#post_consumptionunittypes_consumptionunittypeuuid) | **POST** /ConsumptionUnitTypes/{consumptionunittypeuuid} | Updates an existing consumption unit type.
[**post_consumptionunittypes_entityid_translations**](ConsumptionUnitTypesApi.md#post_consumptionunittypes_entityid_translations) | **POST** /ConsumptionUnitTypes/{entityId}/translations | /ConsumptionUnitTypes/{entityId}/translations - POST


# **delete_consumptionunittypes_consumptionunittypeuuid**
> ApiResponseDTO delete_consumptionunittypes_consumptionunittypeuuid(consumptionunittypeuuid, zf_tuuid)

Deletes a consumption unit type by its identifier.

Deletes a consumption unit type by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.api_response_dto import ApiResponseDTO
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
    api_instance = configuration_client.ConsumptionUnitTypesApi(api_client)
    consumptionunittypeuuid = 'consumptionunittypeuuid_example' # str | The unique identifier of the consumption unit type to delete.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID

    try:
        # Deletes a consumption unit type by its identifier.
        api_response = api_instance.delete_consumptionunittypes_consumptionunittypeuuid(consumptionunittypeuuid, zf_tuuid)
        print("The response of ConsumptionUnitTypesApi->delete_consumptionunittypes_consumptionunittypeuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumptionUnitTypesApi->delete_consumptionunittypes_consumptionunittypeuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumptionunittypeuuid** | **str**| The unique identifier of the consumption unit type to delete. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

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

# **get_consumptionunittypes**
> ConsumptionUnitTypeDTOPagedResponseModelApiResponseDTO get_consumptionunittypes(zf_tuuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)

Retrieves a paged list of consumption unit types with optional filtering and sorting.

Retrieves a paged list of consumption unit types with optional filtering and sorting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.consumption_unit_type_dto_paged_response_model_api_response_dto import ConsumptionUnitTypeDTOPagedResponseModelApiResponseDTO
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
    api_instance = configuration_client.ConsumptionUnitTypesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    show_deleted = True # bool | When true, includes deleted consumption unit types in the results. (optional)
    flex_search = 'flex_search_example' # str | Search term to filter consumption unit types by various fields. (optional)
    order_by = 'order_by_example' # str | Sorting expression for the results. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of consumption unit types with optional filtering and sorting.
        api_response = api_instance.get_consumptionunittypes(zf_tuuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)
        print("The response of ConsumptionUnitTypesApi->get_consumptionunittypes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumptionUnitTypesApi->get_consumptionunittypes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **show_deleted** | **bool**| When true, includes deleted consumption unit types in the results. | [optional] 
 **flex_search** | **str**| Search term to filter consumption unit types by various fields. | [optional] 
 **order_by** | **str**| Sorting expression for the results. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**ConsumptionUnitTypeDTOPagedResponseModelApiResponseDTO**](ConsumptionUnitTypeDTOPagedResponseModelApiResponseDTO.md)

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

# **get_consumptionunittypes_consumptionunittypeuuid**
> ConsumptionUnitTypeDTOApiResponseDTO get_consumptionunittypes_consumptionunittypeuuid(consumptionunittypeuuid, zf_tuuid, zf_ouuid)

Retrieves a specific consumption unit type by its identifier.

Retrieves a specific consumption unit type by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.consumption_unit_type_dto_api_response_dto import ConsumptionUnitTypeDTOApiResponseDTO
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
    api_instance = configuration_client.ConsumptionUnitTypesApi(api_client)
    consumptionunittypeuuid = 'consumptionunittypeuuid_example' # str | The unique identifier of the consumption unit type.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific consumption unit type by its identifier.
        api_response = api_instance.get_consumptionunittypes_consumptionunittypeuuid(consumptionunittypeuuid, zf_tuuid, zf_ouuid)
        print("The response of ConsumptionUnitTypesApi->get_consumptionunittypes_consumptionunittypeuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumptionUnitTypesApi->get_consumptionunittypes_consumptionunittypeuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumptionunittypeuuid** | **str**| The unique identifier of the consumption unit type. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**ConsumptionUnitTypeDTOApiResponseDTO**](ConsumptionUnitTypeDTOApiResponseDTO.md)

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

# **post_consumptionunittypes**
> ConsumptionUnitTypeDTOApiResponseDTO post_consumptionunittypes(zf_tuuid, create_consumption_unit_type_request=create_consumption_unit_type_request)

Creates a new consumption unit type.

Creates a new consumption unit type.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.consumption_unit_type_dto_api_response_dto import ConsumptionUnitTypeDTOApiResponseDTO
from configuration_client.models.create_consumption_unit_type_request import CreateConsumptionUnitTypeRequest
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
    api_instance = configuration_client.ConsumptionUnitTypesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    create_consumption_unit_type_request = {"name":"string","description":"string","allowedEntitySubjectTypes":["none"]} # CreateConsumptionUnitTypeRequest | The details of the consumption unit type to create. (optional)

    try:
        # Creates a new consumption unit type.
        api_response = api_instance.post_consumptionunittypes(zf_tuuid, create_consumption_unit_type_request=create_consumption_unit_type_request)
        print("The response of ConsumptionUnitTypesApi->post_consumptionunittypes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumptionUnitTypesApi->post_consumptionunittypes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **create_consumption_unit_type_request** | [**CreateConsumptionUnitTypeRequest**](CreateConsumptionUnitTypeRequest.md)| The details of the consumption unit type to create. | [optional] 

### Return type

[**ConsumptionUnitTypeDTOApiResponseDTO**](ConsumptionUnitTypeDTOApiResponseDTO.md)

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

# **post_consumptionunittypes_consumptionunittypeuuid**
> ConsumptionUnitTypeDTOApiResponseDTO post_consumptionunittypes_consumptionunittypeuuid(consumptionunittypeuuid, zf_tuuid, update_consumption_unit_type_request=update_consumption_unit_type_request)

Updates an existing consumption unit type.

Updates an existing consumption unit type.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.consumption_unit_type_dto_api_response_dto import ConsumptionUnitTypeDTOApiResponseDTO
from configuration_client.models.update_consumption_unit_type_request import UpdateConsumptionUnitTypeRequest
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
    api_instance = configuration_client.ConsumptionUnitTypesApi(api_client)
    consumptionunittypeuuid = 'consumptionunittypeuuid_example' # str | The unique identifier of the consumption unit type to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    update_consumption_unit_type_request = {"name":"string","description":"string","allowedEntitySubjectTypes":["none"]} # UpdateConsumptionUnitTypeRequest | The updated consumption unit type details. (optional)

    try:
        # Updates an existing consumption unit type.
        api_response = api_instance.post_consumptionunittypes_consumptionunittypeuuid(consumptionunittypeuuid, zf_tuuid, update_consumption_unit_type_request=update_consumption_unit_type_request)
        print("The response of ConsumptionUnitTypesApi->post_consumptionunittypes_consumptionunittypeuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumptionUnitTypesApi->post_consumptionunittypes_consumptionunittypeuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumptionunittypeuuid** | **str**| The unique identifier of the consumption unit type to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **update_consumption_unit_type_request** | [**UpdateConsumptionUnitTypeRequest**](UpdateConsumptionUnitTypeRequest.md)| The updated consumption unit type details. | [optional] 

### Return type

[**ConsumptionUnitTypeDTOApiResponseDTO**](ConsumptionUnitTypeDTOApiResponseDTO.md)

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

# **post_consumptionunittypes_entityid_translations**
> ApiResponseDTO post_consumptionunittypes_entityid_translations(entity_id, zf_tuuid, zf_ouuid, update_entity_translation_request=update_entity_translation_request)

/ConsumptionUnitTypes/{entityId}/translations - POST

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
    api_instance = configuration_client.ConsumptionUnitTypesApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_entity_translation_request = {"translatedFields":{}} # UpdateEntityTranslationRequest |  (optional)

    try:
        # /ConsumptionUnitTypes/{entityId}/translations - POST
        api_response = api_instance.post_consumptionunittypes_entityid_translations(entity_id, zf_tuuid, zf_ouuid, update_entity_translation_request=update_entity_translation_request)
        print("The response of ConsumptionUnitTypesApi->post_consumptionunittypes_entityid_translations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumptionUnitTypesApi->post_consumptionunittypes_entityid_translations: %s\n" % e)
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

