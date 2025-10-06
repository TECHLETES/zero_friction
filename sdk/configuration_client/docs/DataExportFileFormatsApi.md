# configuration_client.DataExportFileFormatsApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_dataexportfileformats_fileformatuuid**](DataExportFileFormatsApi.md#delete_dataexportfileformats_fileformatuuid) | **DELETE** /DataExportFileFormats/{fileformatuuid} | Deletes a data export file format by its identifier.
[**get_dataexportfileformats**](DataExportFileFormatsApi.md#get_dataexportfileformats) | **GET** /DataExportFileFormats | Retrieves a paged list of data export file formats with optional filtering and sorting.
[**get_dataexportfileformats_fileformatuuid**](DataExportFileFormatsApi.md#get_dataexportfileformats_fileformatuuid) | **GET** /DataExportFileFormats/{fileformatuuid} | Retrieves a specific data export file format by its identifier.
[**get_dataexportfileformats_settings**](DataExportFileFormatsApi.md#get_dataexportfileformats_settings) | **GET** /DataExportFileFormats/settings | Retrieves a list of available settings for data export file formats.
[**get_dataexportfileformats_settings_settings_formats**](DataExportFileFormatsApi.md#get_dataexportfileformats_settings_settings_formats) | **GET** /DataExportFileFormats/settings/{settings}/formats | Retrieves a list of available formats for a specific settings type.
[**post_dataexportfileformats**](DataExportFileFormatsApi.md#post_dataexportfileformats) | **POST** /DataExportFileFormats | Creates a new data export file format.
[**post_dataexportfileformats_fileformatuuid**](DataExportFileFormatsApi.md#post_dataexportfileformats_fileformatuuid) | **POST** /DataExportFileFormats/{fileformatuuid} | Updates an existing data export file format.


# **delete_dataexportfileformats_fileformatuuid**
> BooleanApiResponseDTO delete_dataexportfileformats_fileformatuuid(fileformatuuid, zf_tuuid)

Deletes a data export file format by its identifier.

Deletes a data export file format by its identifier.

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
    api_instance = configuration_client.DataExportFileFormatsApi(api_client)
    fileformatuuid = 'fileformatuuid_example' # str | The unique identifier of the data export file format to delete.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID

    try:
        # Deletes a data export file format by its identifier.
        api_response = api_instance.delete_dataexportfileformats_fileformatuuid(fileformatuuid, zf_tuuid)
        print("The response of DataExportFileFormatsApi->delete_dataexportfileformats_fileformatuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DataExportFileFormatsApi->delete_dataexportfileformats_fileformatuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileformatuuid** | **str**| The unique identifier of the data export file format to delete. | 
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
**204** | No Content |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_dataexportfileformats**
> DataExportFileFormatDTOPagedResponseModelDTOApiResponseDTO get_dataexportfileformats(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)

Retrieves a paged list of data export file formats with optional filtering and sorting.

Retrieves a paged list of data export file formats with optional filtering and sorting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.data_export_file_format_dto_paged_response_model_dto_api_response_dto import DataExportFileFormatDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = configuration_client.DataExportFileFormatsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    show_deleted = True # bool | When true, includes deleted data export file formats in the results. (optional)
    flex_search = 'flex_search_example' # str | Search term to filter data export file formats by various fields. (optional)
    order_by = 'order_by_example' # str | Sorting expression for the results. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of data export file formats with optional filtering and sorting.
        api_response = api_instance.get_dataexportfileformats(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)
        print("The response of DataExportFileFormatsApi->get_dataexportfileformats:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DataExportFileFormatsApi->get_dataexportfileformats: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **show_deleted** | **bool**| When true, includes deleted data export file formats in the results. | [optional] 
 **flex_search** | **str**| Search term to filter data export file formats by various fields. | [optional] 
 **order_by** | **str**| Sorting expression for the results. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**DataExportFileFormatDTOPagedResponseModelDTOApiResponseDTO**](DataExportFileFormatDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_dataexportfileformats_fileformatuuid**
> DataExportFileFormatDTOApiResponseDTO get_dataexportfileformats_fileformatuuid(fileformatuuid, zf_tuuid, zf_ouuid)

Retrieves a specific data export file format by its identifier.

Retrieves a specific data export file format by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.data_export_file_format_dto_api_response_dto import DataExportFileFormatDTOApiResponseDTO
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
    api_instance = configuration_client.DataExportFileFormatsApi(api_client)
    fileformatuuid = 'fileformatuuid_example' # str | The unique identifier of the data export file format.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific data export file format by its identifier.
        api_response = api_instance.get_dataexportfileformats_fileformatuuid(fileformatuuid, zf_tuuid, zf_ouuid)
        print("The response of DataExportFileFormatsApi->get_dataexportfileformats_fileformatuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DataExportFileFormatsApi->get_dataexportfileformats_fileformatuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileformatuuid** | **str**| The unique identifier of the data export file format. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**DataExportFileFormatDTOApiResponseDTO**](DataExportFileFormatDTOApiResponseDTO.md)

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

# **get_dataexportfileformats_settings**
> ClassDescriptionListApiResponseDTO get_dataexportfileformats_settings(zf_tuuid, zf_ouuid)

Retrieves a list of available settings for data export file formats.

Retrieves a list of available settings for data export file formats.

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
    api_instance = configuration_client.DataExportFileFormatsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a list of available settings for data export file formats.
        api_response = api_instance.get_dataexportfileformats_settings(zf_tuuid, zf_ouuid)
        print("The response of DataExportFileFormatsApi->get_dataexportfileformats_settings:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DataExportFileFormatsApi->get_dataexportfileformats_settings: %s\n" % e)
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

# **get_dataexportfileformats_settings_settings_formats**
> ClassDescriptionListApiResponseDTO get_dataexportfileformats_settings_settings_formats(settings, zf_tuuid, zf_ouuid)

Retrieves a list of available formats for a specific settings type.

Retrieves a list of available formats for a specific settings type.

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
    api_instance = configuration_client.DataExportFileFormatsApi(api_client)
    settings = 'settings_example' # str | The name of the settings class to get formats for.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a list of available formats for a specific settings type.
        api_response = api_instance.get_dataexportfileformats_settings_settings_formats(settings, zf_tuuid, zf_ouuid)
        print("The response of DataExportFileFormatsApi->get_dataexportfileformats_settings_settings_formats:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DataExportFileFormatsApi->get_dataexportfileformats_settings_settings_formats: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **settings** | **str**| The name of the settings class to get formats for. | 
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

# **post_dataexportfileformats**
> DataExportFileFormatDTOApiResponseDTO post_dataexportfileformats(zf_tuuid, create_data_export_file_format_request=create_data_export_file_format_request)

Creates a new data export file format.

Creates a new data export file format.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.create_data_export_file_format_request import CreateDataExportFileFormatRequest
from configuration_client.models.data_export_file_format_dto_api_response_dto import DataExportFileFormatDTOApiResponseDTO
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
    api_instance = configuration_client.DataExportFileFormatsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    create_data_export_file_format_request = {"name":"string","description":"string","settings":{}} # CreateDataExportFileFormatRequest | The details of the data export file format to create. (optional)

    try:
        # Creates a new data export file format.
        api_response = api_instance.post_dataexportfileformats(zf_tuuid, create_data_export_file_format_request=create_data_export_file_format_request)
        print("The response of DataExportFileFormatsApi->post_dataexportfileformats:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DataExportFileFormatsApi->post_dataexportfileformats: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **create_data_export_file_format_request** | [**CreateDataExportFileFormatRequest**](CreateDataExportFileFormatRequest.md)| The details of the data export file format to create. | [optional] 

### Return type

[**DataExportFileFormatDTOApiResponseDTO**](DataExportFileFormatDTOApiResponseDTO.md)

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

# **post_dataexportfileformats_fileformatuuid**
> DataExportFileFormatDTOApiResponseDTO post_dataexportfileformats_fileformatuuid(fileformatuuid, zf_tuuid, update_data_export_file_format_request=update_data_export_file_format_request)

Updates an existing data export file format.

Updates an existing data export file format.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.data_export_file_format_dto_api_response_dto import DataExportFileFormatDTOApiResponseDTO
from configuration_client.models.update_data_export_file_format_request import UpdateDataExportFileFormatRequest
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
    api_instance = configuration_client.DataExportFileFormatsApi(api_client)
    fileformatuuid = 'fileformatuuid_example' # str | The unique identifier of the data export file format to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    update_data_export_file_format_request = {"name":"string","description":"string","settings":{}} # UpdateDataExportFileFormatRequest | The updated data export file format details. (optional)

    try:
        # Updates an existing data export file format.
        api_response = api_instance.post_dataexportfileformats_fileformatuuid(fileformatuuid, zf_tuuid, update_data_export_file_format_request=update_data_export_file_format_request)
        print("The response of DataExportFileFormatsApi->post_dataexportfileformats_fileformatuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DataExportFileFormatsApi->post_dataexportfileformats_fileformatuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileformatuuid** | **str**| The unique identifier of the data export file format to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **update_data_export_file_format_request** | [**UpdateDataExportFileFormatRequest**](UpdateDataExportFileFormatRequest.md)| The updated data export file format details. | [optional] 

### Return type

[**DataExportFileFormatDTOApiResponseDTO**](DataExportFileFormatDTOApiResponseDTO.md)

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

