# configuration_client.IncomingInvoiceComponentsApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_incominginvoicecomponents_incominginvoicecomponentuuid**](IncomingInvoiceComponentsApi.md#delete_incominginvoicecomponents_incominginvoicecomponentuuid) | **DELETE** /IncomingInvoiceComponents/{incomingInvoiceComponentUuid} | Deletes an incoming invoice component by its identifier.
[**get_incominginvoicecomponents**](IncomingInvoiceComponentsApi.md#get_incominginvoicecomponents) | **GET** /IncomingInvoiceComponents | Retrieves a paged list of incoming invoice components with optional filtering and sorting.
[**get_incominginvoicecomponents_incominginvoicecomponentuuid**](IncomingInvoiceComponentsApi.md#get_incominginvoicecomponents_incominginvoicecomponentuuid) | **GET** /IncomingInvoiceComponents/{incomingInvoiceComponentUuid} | Retrieves a specific incoming invoice component by its identifier.
[**post_incominginvoicecomponents**](IncomingInvoiceComponentsApi.md#post_incominginvoicecomponents) | **POST** /IncomingInvoiceComponents | Creates a new incoming invoice component.
[**post_incominginvoicecomponents_entityid_translations**](IncomingInvoiceComponentsApi.md#post_incominginvoicecomponents_entityid_translations) | **POST** /IncomingInvoiceComponents/{entityId}/translations | /IncomingInvoiceComponents/{entityId}/translations - POST
[**post_incominginvoicecomponents_incominginvoicecomponentuuid**](IncomingInvoiceComponentsApi.md#post_incominginvoicecomponents_incominginvoicecomponentuuid) | **POST** /IncomingInvoiceComponents/{incomingInvoiceComponentUuid} | Updates an existing incoming invoice component.


# **delete_incominginvoicecomponents_incominginvoicecomponentuuid**
> BooleanApiResponseDTO delete_incominginvoicecomponents_incominginvoicecomponentuuid(incoming_invoice_component_uuid, zf_tuuid, zf_ouuid)

Deletes an incoming invoice component by its identifier.

Deletes an incoming invoice component by its identifier.

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
    api_instance = configuration_client.IncomingInvoiceComponentsApi(api_client)
    incoming_invoice_component_uuid = 'incoming_invoice_component_uuid_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes an incoming invoice component by its identifier.
        api_response = api_instance.delete_incominginvoicecomponents_incominginvoicecomponentuuid(incoming_invoice_component_uuid, zf_tuuid, zf_ouuid)
        print("The response of IncomingInvoiceComponentsApi->delete_incominginvoicecomponents_incominginvoicecomponentuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingInvoiceComponentsApi->delete_incominginvoicecomponents_incominginvoicecomponentuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_invoice_component_uuid** | **str**|  | 
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

# **get_incominginvoicecomponents**
> IncomingInvoiceComponentDTOPagedResponseModelDTOApiResponseDTO get_incominginvoicecomponents(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)

Retrieves a paged list of incoming invoice components with optional filtering and sorting.

Retrieves a paged list of incoming invoice components with optional filtering and sorting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.incoming_invoice_component_dto_paged_response_model_dto_api_response_dto import IncomingInvoiceComponentDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = configuration_client.IncomingInvoiceComponentsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    show_deleted = True # bool | Controls whether deleted components should be included in the results. (optional)
    flex_search = 'flex_search_example' # str | Search term to filter components. (optional)
    order_by = 'order_by_example' # str | Field to order the components by. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of incoming invoice components with optional filtering and sorting.
        api_response = api_instance.get_incominginvoicecomponents(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)
        print("The response of IncomingInvoiceComponentsApi->get_incominginvoicecomponents:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingInvoiceComponentsApi->get_incominginvoicecomponents: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **show_deleted** | **bool**| Controls whether deleted components should be included in the results. | [optional] 
 **flex_search** | **str**| Search term to filter components. | [optional] 
 **order_by** | **str**| Field to order the components by. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**IncomingInvoiceComponentDTOPagedResponseModelDTOApiResponseDTO**](IncomingInvoiceComponentDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_incominginvoicecomponents_incominginvoicecomponentuuid**
> IncomingInvoiceComponentDTOApiResponseDTO get_incominginvoicecomponents_incominginvoicecomponentuuid(incoming_invoice_component_uuid, zf_tuuid, zf_ouuid)

Retrieves a specific incoming invoice component by its identifier.

Retrieves a specific incoming invoice component by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.incoming_invoice_component_dto_api_response_dto import IncomingInvoiceComponentDTOApiResponseDTO
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
    api_instance = configuration_client.IncomingInvoiceComponentsApi(api_client)
    incoming_invoice_component_uuid = 'incoming_invoice_component_uuid_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific incoming invoice component by its identifier.
        api_response = api_instance.get_incominginvoicecomponents_incominginvoicecomponentuuid(incoming_invoice_component_uuid, zf_tuuid, zf_ouuid)
        print("The response of IncomingInvoiceComponentsApi->get_incominginvoicecomponents_incominginvoicecomponentuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingInvoiceComponentsApi->get_incominginvoicecomponents_incominginvoicecomponentuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_invoice_component_uuid** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**IncomingInvoiceComponentDTOApiResponseDTO**](IncomingInvoiceComponentDTOApiResponseDTO.md)

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

# **post_incominginvoicecomponents**
> IncomingInvoiceComponentDTOApiResponseDTO post_incominginvoicecomponents(zf_tuuid, zf_ouuid, create_incoming_invoice_component_request=create_incoming_invoice_component_request)

Creates a new incoming invoice component.

Creates a new incoming invoice component.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.create_incoming_invoice_component_request import CreateIncomingInvoiceComponentRequest
from configuration_client.models.incoming_invoice_component_dto_api_response_dto import IncomingInvoiceComponentDTOApiResponseDTO
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
    api_instance = configuration_client.IncomingInvoiceComponentsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_incoming_invoice_component_request = {"name":"string","description":"string"} # CreateIncomingInvoiceComponentRequest | The details of the incoming invoice component to create. (optional)

    try:
        # Creates a new incoming invoice component.
        api_response = api_instance.post_incominginvoicecomponents(zf_tuuid, zf_ouuid, create_incoming_invoice_component_request=create_incoming_invoice_component_request)
        print("The response of IncomingInvoiceComponentsApi->post_incominginvoicecomponents:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingInvoiceComponentsApi->post_incominginvoicecomponents: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_incoming_invoice_component_request** | [**CreateIncomingInvoiceComponentRequest**](CreateIncomingInvoiceComponentRequest.md)| The details of the incoming invoice component to create. | [optional] 

### Return type

[**IncomingInvoiceComponentDTOApiResponseDTO**](IncomingInvoiceComponentDTOApiResponseDTO.md)

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

# **post_incominginvoicecomponents_entityid_translations**
> ApiResponseDTO post_incominginvoicecomponents_entityid_translations(entity_id, zf_tuuid, zf_ouuid, update_entity_translation_request=update_entity_translation_request)

/IncomingInvoiceComponents/{entityId}/translations - POST

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
    api_instance = configuration_client.IncomingInvoiceComponentsApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_entity_translation_request = {"translatedFields":{}} # UpdateEntityTranslationRequest |  (optional)

    try:
        # /IncomingInvoiceComponents/{entityId}/translations - POST
        api_response = api_instance.post_incominginvoicecomponents_entityid_translations(entity_id, zf_tuuid, zf_ouuid, update_entity_translation_request=update_entity_translation_request)
        print("The response of IncomingInvoiceComponentsApi->post_incominginvoicecomponents_entityid_translations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingInvoiceComponentsApi->post_incominginvoicecomponents_entityid_translations: %s\n" % e)
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

# **post_incominginvoicecomponents_incominginvoicecomponentuuid**
> IncomingInvoiceComponentDTOApiResponseDTO post_incominginvoicecomponents_incominginvoicecomponentuuid(incoming_invoice_component_uuid, zf_tuuid, zf_ouuid, update_incoming_invoice_component_request=update_incoming_invoice_component_request)

Updates an existing incoming invoice component.

Updates an existing incoming invoice component.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.incoming_invoice_component_dto_api_response_dto import IncomingInvoiceComponentDTOApiResponseDTO
from configuration_client.models.update_incoming_invoice_component_request import UpdateIncomingInvoiceComponentRequest
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
    api_instance = configuration_client.IncomingInvoiceComponentsApi(api_client)
    incoming_invoice_component_uuid = 'incoming_invoice_component_uuid_example' # str | The unique identifier of the incoming invoice component to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_incoming_invoice_component_request = {"name":"string","description":"string"} # UpdateIncomingInvoiceComponentRequest | The updated incoming invoice component details. (optional)

    try:
        # Updates an existing incoming invoice component.
        api_response = api_instance.post_incominginvoicecomponents_incominginvoicecomponentuuid(incoming_invoice_component_uuid, zf_tuuid, zf_ouuid, update_incoming_invoice_component_request=update_incoming_invoice_component_request)
        print("The response of IncomingInvoiceComponentsApi->post_incominginvoicecomponents_incominginvoicecomponentuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingInvoiceComponentsApi->post_incominginvoicecomponents_incominginvoicecomponentuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_invoice_component_uuid** | **str**| The unique identifier of the incoming invoice component to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_incoming_invoice_component_request** | [**UpdateIncomingInvoiceComponentRequest**](UpdateIncomingInvoiceComponentRequest.md)| The updated incoming invoice component details. | [optional] 

### Return type

[**IncomingInvoiceComponentDTOApiResponseDTO**](IncomingInvoiceComponentDTOApiResponseDTO.md)

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

