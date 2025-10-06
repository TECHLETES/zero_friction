# communication_client.CommunicationEntriesApi

All URIs are relative to *https://api.zerofriction.co/api/comm*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_communicationentries_communicationreferenceid_continue**](CommunicationEntriesApi.md#post_communicationentries_communicationreferenceid_continue) | **POST** /CommunicationEntries/{communicationReferenceId}/continue | Continues the communication for a specific communication entry.
[**post_communicationentries_communicationreferenceid_markfailed**](CommunicationEntriesApi.md#post_communicationentries_communicationreferenceid_markfailed) | **POST** /CommunicationEntries/{communicationReferenceId}/markfailed | Marks a communication entry as failed.
[**post_communicationentries_communicationreferenceid_markprinted**](CommunicationEntriesApi.md#post_communicationentries_communicationreferenceid_markprinted) | **POST** /CommunicationEntries/{communicationReferenceId}/markprinted | Marks a communication entry as printed.
[**post_communicationentries_downloadzip**](CommunicationEntriesApi.md#post_communicationentries_downloadzip) | **POST** /CommunicationEntries/downloadzip | Downloads a zip file containing the specified communication entries.
[**post_communicationentries_filter_customer_customerid**](CommunicationEntriesApi.md#post_communicationentries_filter_customer_customerid) | **POST** /CommunicationEntries/filter/customer/{customerId} | Retrieves communication entries for a specific customer based on the provided query parameters and filters.
[**post_communicationentries_filter_customer_customerid_overviewcount**](CommunicationEntriesApi.md#post_communicationentries_filter_customer_customerid_overviewcount) | **POST** /CommunicationEntries/filter/customer/{customerId}/overviewcount | Retrieves the overview count of communication entries for a specific customer.


# **post_communicationentries_communicationreferenceid_continue**
> BooleanApiResponseDTO post_communicationentries_communicationreferenceid_continue(communication_reference_id, zf_tuuid, zf_ouuid)

Continues the communication for a specific communication entry.

Continues the communication for a specific communication entry.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from communication_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/comm
# See configuration.py for a list of all supported configuration parameters.
configuration = communication_client.Configuration(
    host = "https://api.zerofriction.co/api/comm"
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
with communication_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = communication_client.CommunicationEntriesApi(api_client)
    communication_reference_id = 'communication_reference_id_example' # str | The reference ID of the communication entry.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Continues the communication for a specific communication entry.
        api_response = api_instance.post_communicationentries_communicationreferenceid_continue(communication_reference_id, zf_tuuid, zf_ouuid)
        print("The response of CommunicationEntriesApi->post_communicationentries_communicationreferenceid_continue:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CommunicationEntriesApi->post_communicationentries_communicationreferenceid_continue: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communication_reference_id** | **str**| The reference ID of the communication entry. | 
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

# **post_communicationentries_communicationreferenceid_markfailed**
> BooleanApiResponseDTO post_communicationentries_communicationreferenceid_markfailed(communication_reference_id, zf_tuuid, zf_ouuid, delivery_result=delivery_result)

Marks a communication entry as failed.

Marks a communication entry as failed.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from communication_client.models.delivery_result import DeliveryResult
from communication_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/comm
# See configuration.py for a list of all supported configuration parameters.
configuration = communication_client.Configuration(
    host = "https://api.zerofriction.co/api/comm"
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
with communication_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = communication_client.CommunicationEntriesApi(api_client)
    communication_reference_id = 'communication_reference_id_example' # str | The reference ID of the communication entry.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    delivery_result = {"reason":{},"additionalDetails":"string"} # DeliveryResult | The result of the delivery attempt. (optional)

    try:
        # Marks a communication entry as failed.
        api_response = api_instance.post_communicationentries_communicationreferenceid_markfailed(communication_reference_id, zf_tuuid, zf_ouuid, delivery_result=delivery_result)
        print("The response of CommunicationEntriesApi->post_communicationentries_communicationreferenceid_markfailed:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CommunicationEntriesApi->post_communicationentries_communicationreferenceid_markfailed: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communication_reference_id** | **str**| The reference ID of the communication entry. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **delivery_result** | [**DeliveryResult**](DeliveryResult.md)| The result of the delivery attempt. | [optional] 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_communicationentries_communicationreferenceid_markprinted**
> BooleanApiResponseDTO post_communicationentries_communicationreferenceid_markprinted(communication_reference_id, zf_tuuid, zf_ouuid)

Marks a communication entry as printed.

Marks a communication entry as printed.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from communication_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/comm
# See configuration.py for a list of all supported configuration parameters.
configuration = communication_client.Configuration(
    host = "https://api.zerofriction.co/api/comm"
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
with communication_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = communication_client.CommunicationEntriesApi(api_client)
    communication_reference_id = 'communication_reference_id_example' # str | The reference ID of the communication entry.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Marks a communication entry as printed.
        api_response = api_instance.post_communicationentries_communicationreferenceid_markprinted(communication_reference_id, zf_tuuid, zf_ouuid)
        print("The response of CommunicationEntriesApi->post_communicationentries_communicationreferenceid_markprinted:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CommunicationEntriesApi->post_communicationentries_communicationreferenceid_markprinted: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **communication_reference_id** | **str**| The reference ID of the communication entry. | 
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

# **post_communicationentries_downloadzip**
> bytearray post_communicationentries_downloadzip(zf_tuuid, zf_ouuid, download_communication_entries_zip_request=download_communication_entries_zip_request)

Downloads a zip file containing the specified communication entries.

Downloads a zip file containing the specified communication entries.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.download_communication_entries_zip_request import DownloadCommunicationEntriesZipRequest
from communication_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/comm
# See configuration.py for a list of all supported configuration parameters.
configuration = communication_client.Configuration(
    host = "https://api.zerofriction.co/api/comm"
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
with communication_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = communication_client.CommunicationEntriesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    download_communication_entries_zip_request = {"communicationEntryIds":["string"]} # DownloadCommunicationEntriesZipRequest | The request containing the IDs of the communication entries to include in the zip file. (optional)

    try:
        # Downloads a zip file containing the specified communication entries.
        api_response = api_instance.post_communicationentries_downloadzip(zf_tuuid, zf_ouuid, download_communication_entries_zip_request=download_communication_entries_zip_request)
        print("The response of CommunicationEntriesApi->post_communicationentries_downloadzip:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CommunicationEntriesApi->post_communicationentries_downloadzip: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **download_communication_entries_zip_request** | [**DownloadCommunicationEntriesZipRequest**](DownloadCommunicationEntriesZipRequest.md)| The request containing the IDs of the communication entries to include in the zip file. | [optional] 

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

# **post_communicationentries_filter_customer_customerid**
> CommunicationEntryDTOPagedResponseModelDTOApiResponseDTO post_communicationentries_filter_customer_customerid(customer_id, zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_communication_entries_query_params=get_communication_entries_query_params)

Retrieves communication entries for a specific customer based on the provided query parameters and filters.

Retrieves communication entries for a specific customer based on the provided query parameters and filters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.communication_entry_dto_paged_response_model_dto_api_response_dto import CommunicationEntryDTOPagedResponseModelDTOApiResponseDTO
from communication_client.models.get_communication_entries_query_params import GetCommunicationEntriesQueryParams
from communication_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/comm
# See configuration.py for a list of all supported configuration parameters.
configuration = communication_client.Configuration(
    host = "https://api.zerofriction.co/api/comm"
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
with communication_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = communication_client.CommunicationEntriesApi(api_client)
    customer_id = 'customer_id_example' # str | The ID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    order_by = 'order_by_example' # str | The order by clause. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)
    get_communication_entries_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"communicationType":{},"entitySubjectType":{},"entitySubjectId":"string","failureReasonCode":{},"sentStartDateTimeOffset":"string","sentEndDateTimeOffset":"string"} # GetCommunicationEntriesQueryParams | The query parameters for filtering communication entries. (optional)

    try:
        # Retrieves communication entries for a specific customer based on the provided query parameters and filters.
        api_response = api_instance.post_communicationentries_filter_customer_customerid(customer_id, zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_communication_entries_query_params=get_communication_entries_query_params)
        print("The response of CommunicationEntriesApi->post_communicationentries_filter_customer_customerid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CommunicationEntriesApi->post_communicationentries_filter_customer_customerid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **order_by** | **str**| The order by clause. | [optional] 
 **continuation_token** | **str**| The continuation token for pagination. | [optional] 
 **get_communication_entries_query_params** | [**GetCommunicationEntriesQueryParams**](GetCommunicationEntriesQueryParams.md)| The query parameters for filtering communication entries. | [optional] 

### Return type

[**CommunicationEntryDTOPagedResponseModelDTOApiResponseDTO**](CommunicationEntryDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **post_communicationentries_filter_customer_customerid_overviewcount**
> CommunicationEntryOverviewCountDTOApiResponseDTO post_communicationentries_filter_customer_customerid_overviewcount(customer_id, zf_tuuid, zf_ouuid, get_communication_entries_query_params=get_communication_entries_query_params)

Retrieves the overview count of communication entries for a specific customer.

Retrieves the overview count of communication entries for a specific customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.communication_entry_overview_count_dto_api_response_dto import CommunicationEntryOverviewCountDTOApiResponseDTO
from communication_client.models.get_communication_entries_query_params import GetCommunicationEntriesQueryParams
from communication_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/comm
# See configuration.py for a list of all supported configuration parameters.
configuration = communication_client.Configuration(
    host = "https://api.zerofriction.co/api/comm"
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
with communication_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = communication_client.CommunicationEntriesApi(api_client)
    customer_id = 'customer_id_example' # str | The ID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    get_communication_entries_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"communicationType":{},"entitySubjectType":{},"entitySubjectId":"string","failureReasonCode":{},"sentStartDateTimeOffset":"string","sentEndDateTimeOffset":"string"} # GetCommunicationEntriesQueryParams | The query parameters for filtering communication entries. (optional)

    try:
        # Retrieves the overview count of communication entries for a specific customer.
        api_response = api_instance.post_communicationentries_filter_customer_customerid_overviewcount(customer_id, zf_tuuid, zf_ouuid, get_communication_entries_query_params=get_communication_entries_query_params)
        print("The response of CommunicationEntriesApi->post_communicationentries_filter_customer_customerid_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CommunicationEntriesApi->post_communicationentries_filter_customer_customerid_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **get_communication_entries_query_params** | [**GetCommunicationEntriesQueryParams**](GetCommunicationEntriesQueryParams.md)| The query parameters for filtering communication entries. | [optional] 

### Return type

[**CommunicationEntryOverviewCountDTOApiResponseDTO**](CommunicationEntryOverviewCountDTOApiResponseDTO.md)

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

