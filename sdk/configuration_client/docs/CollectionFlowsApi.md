# configuration_client.CollectionFlowsApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_collectionflows_id**](CollectionFlowsApi.md#delete_collectionflows_id) | **DELETE** /CollectionFlows/{id} | Deletes a collection flow by its identifier.
[**get_collectionflows**](CollectionFlowsApi.md#get_collectionflows) | **GET** /CollectionFlows | Retrieves a paged list of collection flows with optional filtering and sorting.
[**get_collectionflows_id**](CollectionFlowsApi.md#get_collectionflows_id) | **GET** /CollectionFlows/{id} | Retrieves a specific collection flow by its identifier.
[**post_collectionflows**](CollectionFlowsApi.md#post_collectionflows) | **POST** /CollectionFlows | Creates a new collection flow.
[**post_collectionflows_id**](CollectionFlowsApi.md#post_collectionflows_id) | **POST** /CollectionFlows/{id} | Updates an existing collection flow.


# **delete_collectionflows_id**
> BooleanApiResponseDTO delete_collectionflows_id(id, zf_tuuid)

Deletes a collection flow by its identifier.

Deletes a collection flow by its identifier.

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
    api_instance = configuration_client.CollectionFlowsApi(api_client)
    id = 'id_example' # str | The unique identifier of the collection flow to delete.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID

    try:
        # Deletes a collection flow by its identifier.
        api_response = api_instance.delete_collectionflows_id(id, zf_tuuid)
        print("The response of CollectionFlowsApi->delete_collectionflows_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionFlowsApi->delete_collectionflows_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the collection flow to delete. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 

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
**404** | Not Found |  -  |
**204** | No Content |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_collectionflows**
> CollectionFlowDTOPagedResponseModelDTOApiResponseDTO get_collectionflows(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)

Retrieves a paged list of collection flows with optional filtering and sorting.

Retrieves a paged list of collection flows with optional filtering and sorting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.collection_flow_dto_paged_response_model_dto_api_response_dto import CollectionFlowDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = configuration_client.CollectionFlowsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    show_deleted = True # bool | When true, includes deleted collection flows in the results. (optional)
    flex_search = 'flex_search_example' # str | Search term to filter collection flows by various fields. (optional)
    order_by = 'order_by_example' # str | Sorting expression for the results. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of collection flows with optional filtering and sorting.
        api_response = api_instance.get_collectionflows(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)
        print("The response of CollectionFlowsApi->get_collectionflows:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionFlowsApi->get_collectionflows: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **show_deleted** | **bool**| When true, includes deleted collection flows in the results. | [optional] 
 **flex_search** | **str**| Search term to filter collection flows by various fields. | [optional] 
 **order_by** | **str**| Sorting expression for the results. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**CollectionFlowDTOPagedResponseModelDTOApiResponseDTO**](CollectionFlowDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_collectionflows_id**
> CollectionFlowDTOApiResponseDTO get_collectionflows_id(id, zf_tuuid, zf_ouuid)

Retrieves a specific collection flow by its identifier.

Retrieves a specific collection flow by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.collection_flow_dto_api_response_dto import CollectionFlowDTOApiResponseDTO
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
    api_instance = configuration_client.CollectionFlowsApi(api_client)
    id = 'id_example' # str | The unique identifier of the collection flow.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific collection flow by its identifier.
        api_response = api_instance.get_collectionflows_id(id, zf_tuuid, zf_ouuid)
        print("The response of CollectionFlowsApi->get_collectionflows_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionFlowsApi->get_collectionflows_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the collection flow. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**CollectionFlowDTOApiResponseDTO**](CollectionFlowDTOApiResponseDTO.md)

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

# **post_collectionflows**
> CollectionFlowDTOApiResponseDTO post_collectionflows(zf_tuuid, create_update_collection_flow_request=create_update_collection_flow_request)

Creates a new collection flow.

Creates a new collection flow.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.collection_flow_dto_api_response_dto import CollectionFlowDTOApiResponseDTO
from configuration_client.models.create_update_collection_flow_request import CreateUpdateCollectionFlowRequest
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
    api_instance = configuration_client.CollectionFlowsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    create_update_collection_flow_request = {"name":"string","daysAfterInvoiceDue":0,"stepIds":["string"]} # CreateUpdateCollectionFlowRequest | The details of the collection flow to create. (optional)

    try:
        # Creates a new collection flow.
        api_response = api_instance.post_collectionflows(zf_tuuid, create_update_collection_flow_request=create_update_collection_flow_request)
        print("The response of CollectionFlowsApi->post_collectionflows:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionFlowsApi->post_collectionflows: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **create_update_collection_flow_request** | [**CreateUpdateCollectionFlowRequest**](CreateUpdateCollectionFlowRequest.md)| The details of the collection flow to create. | [optional] 

### Return type

[**CollectionFlowDTOApiResponseDTO**](CollectionFlowDTOApiResponseDTO.md)

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

# **post_collectionflows_id**
> CollectionFlowDTOApiResponseDTO post_collectionflows_id(id, zf_tuuid, create_update_collection_flow_request=create_update_collection_flow_request)

Updates an existing collection flow.

Updates an existing collection flow.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.collection_flow_dto_api_response_dto import CollectionFlowDTOApiResponseDTO
from configuration_client.models.create_update_collection_flow_request import CreateUpdateCollectionFlowRequest
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
    api_instance = configuration_client.CollectionFlowsApi(api_client)
    id = 'id_example' # str | The unique identifier of the collection flow to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    create_update_collection_flow_request = {"name":"string","daysAfterInvoiceDue":0,"stepIds":["string"]} # CreateUpdateCollectionFlowRequest | The updated collection flow details. (optional)

    try:
        # Updates an existing collection flow.
        api_response = api_instance.post_collectionflows_id(id, zf_tuuid, create_update_collection_flow_request=create_update_collection_flow_request)
        print("The response of CollectionFlowsApi->post_collectionflows_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionFlowsApi->post_collectionflows_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the collection flow to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **create_update_collection_flow_request** | [**CreateUpdateCollectionFlowRequest**](CreateUpdateCollectionFlowRequest.md)| The updated collection flow details. | [optional] 

### Return type

[**CollectionFlowDTOApiResponseDTO**](CollectionFlowDTOApiResponseDTO.md)

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

