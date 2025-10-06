# configuration_client.DataExportsApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_dataexports_dataexportuuid**](DataExportsApi.md#delete_dataexports_dataexportuuid) | **DELETE** /DataExports/{dataexportuuid} | Deletes a data export by its identifier.
[**get_dataexports**](DataExportsApi.md#get_dataexports) | **GET** /DataExports | Retrieves a paged list of data exports with optional filtering and sorting.
[**get_dataexports_dataexportuuid**](DataExportsApi.md#get_dataexports_dataexportuuid) | **GET** /DataExports/{dataexportuuid} | Retrieves a specific data export by its identifier.
[**get_dataexports_types**](DataExportsApi.md#get_dataexports_types) | **GET** /DataExports/types | Retrieves a list of available data export types.
[**post_dataexports**](DataExportsApi.md#post_dataexports) | **POST** /DataExports | Creates a new data export.
[**post_dataexports_dataexportuuid**](DataExportsApi.md#post_dataexports_dataexportuuid) | **POST** /DataExports/{dataexportuuid} | Updates an existing data export.


# **delete_dataexports_dataexportuuid**
> BooleanApiResponseDTO delete_dataexports_dataexportuuid(dataexportuuid, zf_tuuid, zf_ouuid)

Deletes a data export by its identifier.

Deletes a data export by its identifier.

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
    api_instance = configuration_client.DataExportsApi(api_client)
    dataexportuuid = 'dataexportuuid_example' # str | The unique identifier of the data export to delete.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes a data export by its identifier.
        api_response = api_instance.delete_dataexports_dataexportuuid(dataexportuuid, zf_tuuid, zf_ouuid)
        print("The response of DataExportsApi->delete_dataexports_dataexportuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DataExportsApi->delete_dataexports_dataexportuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataexportuuid** | **str**| The unique identifier of the data export to delete. | 
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

# **get_dataexports**
> DataExportDTOPagedResponseModelDTOApiResponseDTO get_dataexports(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, continuation_token=continuation_token)

Retrieves a paged list of data exports with optional filtering and sorting.

Retrieves a paged list of data exports with optional filtering and sorting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.data_export_dto_paged_response_model_dto_api_response_dto import DataExportDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = configuration_client.DataExportsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    show_deleted = True # bool |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    order_by = 'order_by_example' # str | Sorting expression for the results. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of data exports with optional filtering and sorting.
        api_response = api_instance.get_dataexports(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, continuation_token=continuation_token)
        print("The response of DataExportsApi->get_dataexports:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DataExportsApi->get_dataexports: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **show_deleted** | **bool**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **order_by** | **str**| Sorting expression for the results. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**DataExportDTOPagedResponseModelDTOApiResponseDTO**](DataExportDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_dataexports_dataexportuuid**
> DataExportDTOApiResponseDTO get_dataexports_dataexportuuid(dataexportuuid, zf_tuuid, zf_ouuid)

Retrieves a specific data export by its identifier.

Retrieves a specific data export by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.data_export_dto_api_response_dto import DataExportDTOApiResponseDTO
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
    api_instance = configuration_client.DataExportsApi(api_client)
    dataexportuuid = 'dataexportuuid_example' # str | The unique identifier of the data export.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific data export by its identifier.
        api_response = api_instance.get_dataexports_dataexportuuid(dataexportuuid, zf_tuuid, zf_ouuid)
        print("The response of DataExportsApi->get_dataexports_dataexportuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DataExportsApi->get_dataexports_dataexportuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataexportuuid** | **str**| The unique identifier of the data export. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**DataExportDTOApiResponseDTO**](DataExportDTOApiResponseDTO.md)

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

# **get_dataexports_types**
> ClassDescriptionListApiResponseDTO get_dataexports_types(zf_tuuid, zf_ouuid)

Retrieves a list of available data export types.

Retrieves a list of available data export types.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.class_description_list_api_response_dto import ClassDescriptionListApiResponseDTO
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
    api_instance = configuration_client.DataExportsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a list of available data export types.
        api_response = api_instance.get_dataexports_types(zf_tuuid, zf_ouuid)
        print("The response of DataExportsApi->get_dataexports_types:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DataExportsApi->get_dataexports_types: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**ClassDescriptionListApiResponseDTO**](ClassDescriptionListApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_dataexports**
> DataExportDTOApiResponseDTO post_dataexports(zf_tuuid, zf_ouuid, create_data_export_request=create_data_export_request)

Creates a new data export.

Creates a new data export.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.create_data_export_request import CreateDataExportRequest
from configuration_client.models.data_export_dto_api_response_dto import DataExportDTOApiResponseDTO
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
    api_instance = configuration_client.DataExportsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_data_export_request = {"name":"string","fileFormatId":"string","parameters":{"autoMoveAfterGeneration":true,"zipFiles":true,"autoAssignEntitiesToExport":true}} # CreateDataExportRequest | The details of the data export to create. (optional)

    try:
        # Creates a new data export.
        api_response = api_instance.post_dataexports(zf_tuuid, zf_ouuid, create_data_export_request=create_data_export_request)
        print("The response of DataExportsApi->post_dataexports:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DataExportsApi->post_dataexports: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_data_export_request** | [**CreateDataExportRequest**](CreateDataExportRequest.md)| The details of the data export to create. | [optional] 

### Return type

[**DataExportDTOApiResponseDTO**](DataExportDTOApiResponseDTO.md)

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

# **post_dataexports_dataexportuuid**
> DataExportDTOApiResponseDTO post_dataexports_dataexportuuid(dataexportuuid, zf_tuuid, zf_ouuid, update_data_export_request=update_data_export_request)

Updates an existing data export.

Updates an existing data export.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.data_export_dto_api_response_dto import DataExportDTOApiResponseDTO
from configuration_client.models.update_data_export_request import UpdateDataExportRequest
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
    api_instance = configuration_client.DataExportsApi(api_client)
    dataexportuuid = 'dataexportuuid_example' # str | The unique identifier of the data export to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_data_export_request = {"fileFormatId":"string","parameters":{"autoMoveAfterGeneration":true,"zipFiles":true,"autoAssignEntitiesToExport":true}} # UpdateDataExportRequest | The updated data export details. (optional)

    try:
        # Updates an existing data export.
        api_response = api_instance.post_dataexports_dataexportuuid(dataexportuuid, zf_tuuid, zf_ouuid, update_data_export_request=update_data_export_request)
        print("The response of DataExportsApi->post_dataexports_dataexportuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DataExportsApi->post_dataexports_dataexportuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dataexportuuid** | **str**| The unique identifier of the data export to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_data_export_request** | [**UpdateDataExportRequest**](UpdateDataExportRequest.md)| The updated data export details. | [optional] 

### Return type

[**DataExportDTOApiResponseDTO**](DataExportDTOApiResponseDTO.md)

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

