# metering_client.IntegrationsApi

All URIs are relative to *https://api.zerofriction.co/api/me*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_integrations_import**](IntegrationsApi.md#delete_integrations_import) | **DELETE** /Integrations/import | Deletes imports based on provided id&#39;s. If there are too many id&#39;s, deletes are done asynchronously
[**delete_integrations_import_meteringimportid**](IntegrationsApi.md#delete_integrations_import_meteringimportid) | **DELETE** /Integrations/import/{meteringImportId} | Delete an existing import by it&#39;s identifier
[**get_integrations_import**](IntegrationsApi.md#get_integrations_import) | **GET** /Integrations/import | Gets a paged list of metering imports based on the specified filters.
[**get_integrations_import_meteringimportid_issues_interpretation**](IntegrationsApi.md#get_integrations_import_meteringimportid_issues_interpretation) | **GET** /Integrations/import/{meteringImportId}/issues/interpretation | Get an overview of issues that were detected during the interpretation of a metering import.
[**get_integrations_import_meteringimportid_issuescount**](IntegrationsApi.md#get_integrations_import_meteringimportid_issuescount) | **GET** /Integrations/import/{meteringImportId}/issuescount | Get a count of issues detected during import validation and processing.
[**get_integrations_import_meteringimportid_measurements**](IntegrationsApi.md#get_integrations_import_meteringimportid_measurements) | **GET** /Integrations/import/{meteringImportId}/measurements | Get an overview of all the measurements for a metering import with their possible validation or processing issues.
[**get_integrations_import_overviewcount**](IntegrationsApi.md#get_integrations_import_overviewcount) | **GET** /Integrations/import/overviewcount | Gets count information for metering import overview, grouped by their status.
[**get_integrations_import_uuid**](IntegrationsApi.md#get_integrations_import_uuid) | **GET** /Integrations/import/{uuid} | Fetch the details of a metering import to know the status of the metering import and to known how many  values were successfully parsed, validated and processed.
[**patch_integrations_import_markprocessed**](IntegrationsApi.md#patch_integrations_import_markprocessed) | **PATCH** /Integrations/import/markprocessed | Marks requested imports as processed, if the current status of the import allows it
[**patch_integrations_import_validate_meteringimportid**](IntegrationsApi.md#patch_integrations_import_validate_meteringimportid) | **PATCH** /Integrations/import/validate/{meteringImportId} | Attempts to revalidate a specified import
[**post_integrations_import**](IntegrationsApi.md#post_integrations_import) | **POST** /Integrations/import | Upload measurements for specific file formats.
[**post_integrations_import_download**](IntegrationsApi.md#post_integrations_import_download) | **POST** /Integrations/import/download | Downloads the original files for all imports that are requested
[**post_integrations_import_measurements**](IntegrationsApi.md#post_integrations_import_measurements) | **POST** /Integrations/import/measurements | Upload measurements for a collection of different meters.
[**post_integrations_import_process**](IntegrationsApi.md#post_integrations_import_process) | **POST** /Integrations/import/process | Processes all selected imports if they have the status &#39;Validation failed&#39;, &#39;To process&#39;, or &#39;Processed with issues&#39;.  Before processing valid measurements, it revalidates any current invalid measurements.                For example, if a meter or channel did not exist when the import was created bu
[**post_integrations_import_process_meteringimportid**](IntegrationsApi.md#post_integrations_import_process_meteringimportid) | **POST** /Integrations/import/process/{meteringImportId} | Processes the import if it has the status &#39;Validation failed&#39;, &#39;To process&#39;, or &#39;Processed with issues&#39;.  Before processing valid measurements, it revalidates any current invalid measurements.                For example, if a meter or channel did not exist when the import was created but has since b
[**post_integrations_import_processall**](IntegrationsApi.md#post_integrations_import_processall) | **POST** /Integrations/import/processall | Processes all imports that have status &#39;To process&#39; and &#39;Processed with issues&#39;


# **delete_integrations_import**
> ApiResponseDTO delete_integrations_import(zf_tuuid, zf_ouuid, bulk_delete_metering_imports_request=bulk_delete_metering_imports_request)

Deletes imports based on provided id's. If there are too many id's, deletes are done asynchronously

Deletes imports based on provided id's. If there are too many id's, deletes are done asynchronously

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto import ApiResponseDTO
from metering_client.models.bulk_delete_metering_imports_request import BulkDeleteMeteringImportsRequest
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.IntegrationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_delete_metering_imports_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"status":["string"],"communicationType":"string","meteringFormat":"string","createdStartDateTime":"string","createdEndDateTime":"string"},"quickFilter":"string"} # BulkDeleteMeteringImportsRequest | Data containing unique identifiers of imports that need to be deleted (optional)

    try:
        # Deletes imports based on provided id's. If there are too many id's, deletes are done asynchronously
        api_response = api_instance.delete_integrations_import(zf_tuuid, zf_ouuid, bulk_delete_metering_imports_request=bulk_delete_metering_imports_request)
        print("The response of IntegrationsApi->delete_integrations_import:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationsApi->delete_integrations_import: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_delete_metering_imports_request** | [**BulkDeleteMeteringImportsRequest**](BulkDeleteMeteringImportsRequest.md)| Data containing unique identifiers of imports that need to be deleted | [optional] 

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
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_integrations_import_meteringimportid**
> ApiResponseDTO delete_integrations_import_meteringimportid(metering_import_id, zf_tuuid, zf_ouuid)

Delete an existing import by it's identifier

Delete an existing import by it's identifier

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto import ApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.IntegrationsApi(api_client)
    metering_import_id = 'metering_import_id_example' # str | Unique identifier of the import
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Delete an existing import by it's identifier
        api_response = api_instance.delete_integrations_import_meteringimportid(metering_import_id, zf_tuuid, zf_ouuid)
        print("The response of IntegrationsApi->delete_integrations_import_meteringimportid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationsApi->delete_integrations_import_meteringimportid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metering_import_id** | **str**| Unique identifier of the import | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

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
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_integrations_import**
> MeteringImportDTOPagedResponseModelDTOApiResponseDTO get_integrations_import(zf_tuuid, zf_ouuid, status=status, communication_type=communication_type, metering_format=metering_format, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

Gets a paged list of metering imports based on the specified filters.

Gets a paged list of metering imports based on the specified filters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.metering_import_dto_paged_response_model_dto_api_response_dto import MeteringImportDTOPagedResponseModelDTOApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.IntegrationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    status = ['status_example'] # List[str] |  (optional)
    communication_type = 'communication_type_example' # str |  (optional)
    metering_format = 'metering_format_example' # str |  (optional)
    created_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    created_end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    order_by = 'order_by_example' # str | Field to order the results by. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)

    try:
        # Gets a paged list of metering imports based on the specified filters.
        api_response = api_instance.get_integrations_import(zf_tuuid, zf_ouuid, status=status, communication_type=communication_type, metering_format=metering_format, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of IntegrationsApi->get_integrations_import:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationsApi->get_integrations_import: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **status** | [**List[str]**](str.md)|  | [optional] 
 **communication_type** | **str**|  | [optional] 
 **metering_format** | **str**|  | [optional] 
 **created_start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **created_end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **order_by** | **str**| Field to order the results by. | [optional] 
 **continuation_token** | **str**| Token for pagination. | [optional] 

### Return type

[**MeteringImportDTOPagedResponseModelDTOApiResponseDTO**](MeteringImportDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_integrations_import_meteringimportid_issues_interpretation**
> MeteringImportInterpretationResultDTOApiResponseDTO get_integrations_import_meteringimportid_issues_interpretation(metering_import_id, zf_tuuid, zf_ouuid, error_codes=error_codes, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Get an overview of issues that were detected during the interpretation of a metering import.

Get an overview of issues that were detected during the interpretation of a metering import.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.metering_import_interpretation_result_dto_api_response_dto import MeteringImportInterpretationResultDTOApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.IntegrationsApi(api_client)
    metering_import_id = 'metering_import_id_example' # str | The ID of the metering import.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    error_codes = ['error_codes_example'] # List[str] |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Get an overview of issues that were detected during the interpretation of a metering import.
        api_response = api_instance.get_integrations_import_meteringimportid_issues_interpretation(metering_import_id, zf_tuuid, zf_ouuid, error_codes=error_codes, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of IntegrationsApi->get_integrations_import_meteringimportid_issues_interpretation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationsApi->get_integrations_import_meteringimportid_issues_interpretation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metering_import_id** | **str**| The ID of the metering import. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **error_codes** | [**List[str]**](str.md)|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**MeteringImportInterpretationResultDTOApiResponseDTO**](MeteringImportInterpretationResultDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_integrations_import_meteringimportid_issuescount**
> MeteringImportIssuesCountDTOApiResponseDTO get_integrations_import_meteringimportid_issuescount(metering_import_id, zf_tuuid, zf_ouuid)

Get a count of issues detected during import validation and processing.

Get a count of issues detected during import validation and processing.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.metering_import_issues_count_dto_api_response_dto import MeteringImportIssuesCountDTOApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.IntegrationsApi(api_client)
    metering_import_id = 'metering_import_id_example' # str | The ID of the metering import.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Get a count of issues detected during import validation and processing.
        api_response = api_instance.get_integrations_import_meteringimportid_issuescount(metering_import_id, zf_tuuid, zf_ouuid)
        print("The response of IntegrationsApi->get_integrations_import_meteringimportid_issuescount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationsApi->get_integrations_import_meteringimportid_issuescount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metering_import_id** | **str**| The ID of the metering import. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**MeteringImportIssuesCountDTOApiResponseDTO**](MeteringImportIssuesCountDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_integrations_import_meteringimportid_measurements**
> ImportedMeasurementsOverviewDTOApiResponseDTO get_integrations_import_meteringimportid_measurements(metering_import_id, zf_tuuid, zf_ouuid, meter=meter, error_codes=error_codes, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

Get an overview of all the measurements for a metering import with their possible validation or processing issues.

Get an overview of all the measurements for a metering import with their possible validation or processing issues.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.imported_measurements_overview_dto_api_response_dto import ImportedMeasurementsOverviewDTOApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.IntegrationsApi(api_client)
    metering_import_id = 'metering_import_id_example' # str | The ID of the metering import.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    meter = 'meter_example' # str |  (optional)
    error_codes = ['error_codes_example'] # List[str] |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    order_by = 'order_by_example' # str | Order the measurements from the metering import by the available options from Enumerations.QuickFilters.MeteringImportMeasurementsOrderBy (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Get an overview of all the measurements for a metering import with their possible validation or processing issues.
        api_response = api_instance.get_integrations_import_meteringimportid_measurements(metering_import_id, zf_tuuid, zf_ouuid, meter=meter, error_codes=error_codes, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of IntegrationsApi->get_integrations_import_meteringimportid_measurements:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationsApi->get_integrations_import_meteringimportid_measurements: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metering_import_id** | **str**| The ID of the metering import. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **meter** | **str**|  | [optional] 
 **error_codes** | [**List[str]**](str.md)|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **order_by** | **str**| Order the measurements from the metering import by the available options from Enumerations.QuickFilters.MeteringImportMeasurementsOrderBy | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**ImportedMeasurementsOverviewDTOApiResponseDTO**](ImportedMeasurementsOverviewDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_integrations_import_overviewcount**
> MeteringImportOverviewCountDTOApiResponseDTO get_integrations_import_overviewcount(zf_tuuid, zf_ouuid, status=status, communication_type=communication_type, metering_format=metering_format, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Gets count information for metering import overview, grouped by their status.

Gets count information for metering import overview, grouped by their status.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.metering_import_overview_count_dto_api_response_dto import MeteringImportOverviewCountDTOApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.IntegrationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    status = ['status_example'] # List[str] |  (optional)
    communication_type = 'communication_type_example' # str |  (optional)
    metering_format = 'metering_format_example' # str |  (optional)
    created_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    created_end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Gets count information for metering import overview, grouped by their status.
        api_response = api_instance.get_integrations_import_overviewcount(zf_tuuid, zf_ouuid, status=status, communication_type=communication_type, metering_format=metering_format, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of IntegrationsApi->get_integrations_import_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationsApi->get_integrations_import_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **status** | [**List[str]**](str.md)|  | [optional] 
 **communication_type** | **str**|  | [optional] 
 **metering_format** | **str**|  | [optional] 
 **created_start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **created_end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**MeteringImportOverviewCountDTOApiResponseDTO**](MeteringImportOverviewCountDTOApiResponseDTO.md)

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

# **get_integrations_import_uuid**
> MeteringImportDTOApiResponseDTO get_integrations_import_uuid(uuid, zf_tuuid, zf_ouuid)

Fetch the details of a metering import to know the status of the metering import and to known how many  values were successfully parsed, validated and processed.

Fetch the details of a metering import to know the status of the metering import and to known how many
values were successfully parsed, validated and processed.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.metering_import_dto_api_response_dto import MeteringImportDTOApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.IntegrationsApi(api_client)
    uuid = 'uuid_example' # str | The ID of the metering import.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Fetch the details of a metering import to know the status of the metering import and to known how many  values were successfully parsed, validated and processed.
        api_response = api_instance.get_integrations_import_uuid(uuid, zf_tuuid, zf_ouuid)
        print("The response of IntegrationsApi->get_integrations_import_uuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationsApi->get_integrations_import_uuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The ID of the metering import. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**MeteringImportDTOApiResponseDTO**](MeteringImportDTOApiResponseDTO.md)

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

# **patch_integrations_import_markprocessed**
> ApiResponseDTO patch_integrations_import_markprocessed(zf_tuuid, zf_ouuid, bulk_mark_metering_imports_as_processed_request=bulk_mark_metering_imports_as_processed_request)

Marks requested imports as processed, if the current status of the import allows it

Marks requested imports as processed, if the current status of the import allows it

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto import ApiResponseDTO
from metering_client.models.bulk_mark_metering_imports_as_processed_request import BulkMarkMeteringImportsAsProcessedRequest
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.IntegrationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_mark_metering_imports_as_processed_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"status":["string"],"communicationType":"string","meteringFormat":"string","createdStartDateTime":"string","createdEndDateTime":"string"},"quickFilter":"string"} # BulkMarkMeteringImportsAsProcessedRequest | Data containing unique identifiers of imports that should be marked as processed (optional)

    try:
        # Marks requested imports as processed, if the current status of the import allows it
        api_response = api_instance.patch_integrations_import_markprocessed(zf_tuuid, zf_ouuid, bulk_mark_metering_imports_as_processed_request=bulk_mark_metering_imports_as_processed_request)
        print("The response of IntegrationsApi->patch_integrations_import_markprocessed:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationsApi->patch_integrations_import_markprocessed: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_mark_metering_imports_as_processed_request** | [**BulkMarkMeteringImportsAsProcessedRequest**](BulkMarkMeteringImportsAsProcessedRequest.md)| Data containing unique identifiers of imports that should be marked as processed | [optional] 

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
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_integrations_import_validate_meteringimportid**
> ApiResponseDTO patch_integrations_import_validate_meteringimportid(metering_import_id, zf_tuuid, zf_ouuid)

Attempts to revalidate a specified import

Attempts to revalidate a specified import

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto import ApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.IntegrationsApi(api_client)
    metering_import_id = 'metering_import_id_example' # str | Unique identifier of the import
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Attempts to revalidate a specified import
        api_response = api_instance.patch_integrations_import_validate_meteringimportid(metering_import_id, zf_tuuid, zf_ouuid)
        print("The response of IntegrationsApi->patch_integrations_import_validate_meteringimportid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationsApi->patch_integrations_import_validate_meteringimportid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metering_import_id** | **str**| Unique identifier of the import | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

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
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integrations_import**
> MeteringImportDTOApiResponseDTO post_integrations_import(zf_tuuid, zf_ouuid, file=file, custom_file_format_id=custom_file_format_id, metering_format=metering_format, source=source, automatic_processing=automatic_processing, communication_type=communication_type)

Upload measurements for specific file formats.

Upload measurements for specific file formats.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.metering_import_dto_api_response_dto import MeteringImportDTOApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.IntegrationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    file = None # bytearray |  (optional)
    custom_file_format_id = 'custom_file_format_id_example' # str |  (optional)
    metering_format = 'metering_format_example' # str |  (optional)
    source = 'source_example' # str |  (optional)
    automatic_processing = True # bool |  (optional) (default to True)
    communication_type = 'communication_type_example' # str |  (optional)

    try:
        # Upload measurements for specific file formats.
        api_response = api_instance.post_integrations_import(zf_tuuid, zf_ouuid, file=file, custom_file_format_id=custom_file_format_id, metering_format=metering_format, source=source, automatic_processing=automatic_processing, communication_type=communication_type)
        print("The response of IntegrationsApi->post_integrations_import:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationsApi->post_integrations_import: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **file** | **bytearray**|  | [optional] 
 **custom_file_format_id** | **str**|  | [optional] 
 **metering_format** | **str**|  | [optional] 
 **source** | **str**|  | [optional] 
 **automatic_processing** | **bool**|  | [optional] [default to True]
 **communication_type** | **str**|  | [optional] 

### Return type

[**MeteringImportDTOApiResponseDTO**](MeteringImportDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integrations_import_download**
> bytearray post_integrations_import_download(zf_tuuid, zf_ouuid, download_original_metering_imports_request=download_original_metering_imports_request)

Downloads the original files for all imports that are requested

Downloads the original files for all imports that are requested

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.download_original_metering_imports_request import DownloadOriginalMeteringImportsRequest
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.IntegrationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    download_original_metering_imports_request = {"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"status":["string"],"communicationType":"string","meteringFormat":"string","createdStartDateTime":"string","createdEndDateTime":"string"},"quickFilter":"string"} # DownloadOriginalMeteringImportsRequest | Data containing id's of the imports for which you want to download the original files (optional)

    try:
        # Downloads the original files for all imports that are requested
        api_response = api_instance.post_integrations_import_download(zf_tuuid, zf_ouuid, download_original_metering_imports_request=download_original_metering_imports_request)
        print("The response of IntegrationsApi->post_integrations_import_download:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationsApi->post_integrations_import_download: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **download_original_metering_imports_request** | [**DownloadOriginalMeteringImportsRequest**](DownloadOriginalMeteringImportsRequest.md)| Data containing id&#39;s of the imports for which you want to download the original files | [optional] 

### Return type

**bytearray**

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

# **post_integrations_import_measurements**
> MeteringImportDTOApiResponseDTO post_integrations_import_measurements(zf_tuuid, zf_ouuid, upload_measurements_request=upload_measurements_request)

Upload measurements for a collection of different meters.

Upload measurements for a collection of different meters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.metering_import_dto_api_response_dto import MeteringImportDTOApiResponseDTO
from metering_client.models.upload_measurements_request import UploadMeasurementsRequest
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.IntegrationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    upload_measurements_request = {"automaticProcessing":true,"source":"string","uploadIdentifier":"string","channelMeasurements":[{"utilityType":{},"unitOfMeasure":{},"meteringType":{},"direction":{},"meterSerialNumber":"string","externalChannelIdentifier":"string","measurements":[{"readingDateTime":"string","value":0}]}]} # UploadMeasurementsRequest | The data containing the necessary information to import the measurements. (optional)

    try:
        # Upload measurements for a collection of different meters.
        api_response = api_instance.post_integrations_import_measurements(zf_tuuid, zf_ouuid, upload_measurements_request=upload_measurements_request)
        print("The response of IntegrationsApi->post_integrations_import_measurements:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationsApi->post_integrations_import_measurements: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **upload_measurements_request** | [**UploadMeasurementsRequest**](UploadMeasurementsRequest.md)| The data containing the necessary information to import the measurements. | [optional] 

### Return type

[**MeteringImportDTOApiResponseDTO**](MeteringImportDTOApiResponseDTO.md)

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

# **post_integrations_import_process**
> ApiResponseDTO post_integrations_import_process(zf_tuuid, zf_ouuid, bulk_process_metering_import_request=bulk_process_metering_import_request)

Processes all selected imports if they have the status 'Validation failed', 'To process', or 'Processed with issues'.  Before processing valid measurements, it revalidates any current invalid measurements.                For example, if a meter or channel did not exist when the import was created bu

Processes all selected imports if they have the status 'Validation failed', 'To process', or 'Processed with issues'.
Before processing valid measurements, it revalidates any current invalid measurements.
            
For example, if a meter or channel did not exist when the import was created but has since been added,
the new measurements will be processed as well.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto import ApiResponseDTO
from metering_client.models.bulk_process_metering_import_request import BulkProcessMeteringImportRequest
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.IntegrationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_process_metering_import_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"status":["string"],"communicationType":"string","meteringFormat":"string","createdStartDateTime":"string","createdEndDateTime":"string"},"quickFilter":"string"} # BulkProcessMeteringImportRequest |  (optional)

    try:
        # Processes all selected imports if they have the status 'Validation failed', 'To process', or 'Processed with issues'.  Before processing valid measurements, it revalidates any current invalid measurements.                For example, if a meter or channel did not exist when the import was created bu
        api_response = api_instance.post_integrations_import_process(zf_tuuid, zf_ouuid, bulk_process_metering_import_request=bulk_process_metering_import_request)
        print("The response of IntegrationsApi->post_integrations_import_process:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationsApi->post_integrations_import_process: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_process_metering_import_request** | [**BulkProcessMeteringImportRequest**](BulkProcessMeteringImportRequest.md)|  | [optional] 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integrations_import_process_meteringimportid**
> ApiResponseDTO post_integrations_import_process_meteringimportid(metering_import_id, zf_tuuid, zf_ouuid)

Processes the import if it has the status 'Validation failed', 'To process', or 'Processed with issues'.  Before processing valid measurements, it revalidates any current invalid measurements.                For example, if a meter or channel did not exist when the import was created but has since b

Processes the import if it has the status 'Validation failed', 'To process', or 'Processed with issues'.
Before processing valid measurements, it revalidates any current invalid measurements.
            
For example, if a meter or channel did not exist when the import was created but has since been added,
the new measurements will be processed as well.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto import ApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.IntegrationsApi(api_client)
    metering_import_id = 'metering_import_id_example' # str | Unique identifier of the import
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Processes the import if it has the status 'Validation failed', 'To process', or 'Processed with issues'.  Before processing valid measurements, it revalidates any current invalid measurements.                For example, if a meter or channel did not exist when the import was created but has since b
        api_response = api_instance.post_integrations_import_process_meteringimportid(metering_import_id, zf_tuuid, zf_ouuid)
        print("The response of IntegrationsApi->post_integrations_import_process_meteringimportid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationsApi->post_integrations_import_process_meteringimportid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metering_import_id** | **str**| Unique identifier of the import | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integrations_import_processall**
> BooleanApiResponseDTO post_integrations_import_processall(zf_tuuid, zf_ouuid)

Processes all imports that have status 'To process' and 'Processed with issues'

Processes all imports that have status 'To process' and 'Processed with issues'

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.IntegrationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Processes all imports that have status 'To process' and 'Processed with issues'
        api_response = api_instance.post_integrations_import_processall(zf_tuuid, zf_ouuid)
        print("The response of IntegrationsApi->post_integrations_import_processall:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationsApi->post_integrations_import_processall: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

