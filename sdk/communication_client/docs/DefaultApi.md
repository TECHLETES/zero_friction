# communication_client.DefaultApi

All URIs are relative to *https://api.zerofriction.co/api/comm*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_communicationsubjects_entitysubjecttype_subjectid**](DefaultApi.md#get_communicationsubjects_entitysubjecttype_subjectid) | **GET** /CommunicationSubjects/{entitySubjectType}/{subjectId} | Retrieves all CommunicationSubjects for a subject
[**get_productusage**](DefaultApi.md#get_productusage) | **GET** /ProductUsage | Gets the communication product usage snapshot with integrations per organization.
[**post_communicationentries_downloadzip**](DefaultApi.md#post_communicationentries_downloadzip) | **POST** /CommunicationEntries/downloadzip | Downloads a zip file containing the specified communication entries.
[**post_communicationentries_filter**](DefaultApi.md#post_communicationentries_filter) | **POST** /CommunicationEntries/filter | Retrieves communication entries across the organization based on the provided query parameters and filters.
[**post_communicationentries_filter_customer_customerid**](DefaultApi.md#post_communicationentries_filter_customer_customerid) | **POST** /CommunicationEntries/filter/customer/{customerId} | Retrieves communication entries for a specific customer based on the provided query parameters and filters.
[**post_communicationentries_filter_customer_customerid_overviewcount**](DefaultApi.md#post_communicationentries_filter_customer_customerid_overviewcount) | **POST** /CommunicationEntries/filter/customer/{customerId}/overviewcount | Retrieves the overview count of communication entries for a specific customer.
[**post_communicationentries_filter_overviewcount**](DefaultApi.md#post_communicationentries_filter_overviewcount) | **POST** /CommunicationEntries/filter/overviewcount | Retrieves the overview count of communication entries across the organization.
[**post_communicationentries_resend**](DefaultApi.md#post_communicationentries_resend) | **POST** /CommunicationEntries/resend | Resends a communication entry using the same settings as the original.
[**post_communicationprovideraccounts**](DefaultApi.md#post_communicationprovideraccounts) | **POST** /CommunicationProviderAccounts | Create a new communication provider account.
[**post_communicationprovideraccounts_filter**](DefaultApi.md#post_communicationprovideraccounts_filter) | **POST** /CommunicationProviderAccounts/filter | Retrieve communication provider accounts based on the provided query parameters.
[**post_communicationprovideraccounts_id_disconnect**](DefaultApi.md#post_communicationprovideraccounts_id_disconnect) | **POST** /CommunicationProviderAccounts/{id}/disconnect | Disconnect a communication provider account and set it to inactive status.
[**post_communicationsubjects_bulk_ignore**](DefaultApi.md#post_communicationsubjects_bulk_ignore) | **POST** /CommunicationSubjects/bulk/ignore | Ignores communication subjects in bulk.
[**post_communicationsubjects_bulk_sendvia**](DefaultApi.md#post_communicationsubjects_bulk_sendvia) | **POST** /CommunicationSubjects/bulk/sendvia | Sends communication subjects via a method in bulk.
[**post_communicationsubjects_filter**](DefaultApi.md#post_communicationsubjects_filter) | **POST** /CommunicationSubjects/filter | Retrieves communication entries across the organization based on the provided query parameters and filters.
[**post_communicationsubjects_filter_overviewcount**](DefaultApi.md#post_communicationsubjects_filter_overviewcount) | **POST** /CommunicationSubjects/filter/overviewcount | Retrieves the overview count of communication entries across the organization.
[**post_webhook_email_sendgrid**](DefaultApi.md#post_webhook_email_sendgrid) | **POST** /Webhook/email/sendgrid | Handles SendGrid webhook events and triggers transformation and queueing.
[**post_webhook_postal_pingen**](DefaultApi.md#post_webhook_postal_pingen) | **POST** /Webhook/postal/pingen | Handles Pingen webhook events (postal) and triggers transformation and queueing.
[**post_webhook_sms_twilio_tenantid_organisationid_communicationentryid**](DefaultApi.md#post_webhook_sms_twilio_tenantid_organisationid_communicationentryid) | **POST** /Webhook/sms/twilio/{tenantId}/{organisationId}/{communicationEntryId} | Handles SMS delivery status callbacks from Twilio.


# **get_communicationsubjects_entitysubjecttype_subjectid**
> ApiResponseDTOOfPagedResponseModelDTOOfCommunicationSubjectDTO get_communicationsubjects_entitysubjecttype_subjectid(entity_subject_type, subject_id, zf_tuuid, zf_ouuid)

Retrieves all CommunicationSubjects for a subject

Retrieves all CommunicationSubjects for a subject

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dtoof_paged_response_model_dtoof_communication_subject_dto import ApiResponseDTOOfPagedResponseModelDTOOfCommunicationSubjectDTO
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
    api_instance = communication_client.DefaultApi(api_client)
    entity_subject_type = 'entity_subject_type_example' # str | The entity subject type.
    subject_id = 'subject_id_example' # str | The subject identifier.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Retrieves all CommunicationSubjects for a subject
        api_response = api_instance.get_communicationsubjects_entitysubjecttype_subjectid(entity_subject_type, subject_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_communicationsubjects_entitysubjecttype_subjectid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_communicationsubjects_entitysubjecttype_subjectid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_subject_type** | **str**| The entity subject type. | 
 **subject_id** | **str**| The subject identifier. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfCommunicationSubjectDTO**](ApiResponseDTOOfPagedResponseModelDTOOfCommunicationSubjectDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The overview count of communication entries. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_productusage**
> ApiResponseDTOOfCommunicationProductUsageResponseDTO get_productusage(zf_tuuid)

Gets the communication product usage snapshot with integrations per organization.

Gets the communication product usage snapshot with integrations per organization.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dtoof_communication_product_usage_response_dto import ApiResponseDTOOfCommunicationProductUsageResponseDTO
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
    api_instance = communication_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID

    try:
        # Gets the communication product usage snapshot with integrations per organization.
        api_response = api_instance.get_productusage(zf_tuuid)
        print("The response of DefaultApi->get_productusage:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_productusage: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 

### Return type

[**ApiResponseDTOOfCommunicationProductUsageResponseDTO**](ApiResponseDTOOfCommunicationProductUsageResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The communication product usage snapshot response. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_communicationentries_downloadzip**
> FileStreamResult post_communicationentries_downloadzip(zf_tuuid, zf_ouuid, download_communication_entries_zip_request=download_communication_entries_zip_request)

Downloads a zip file containing the specified communication entries.

Downloads a zip file containing the specified communication entries.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.download_communication_entries_zip_request import DownloadCommunicationEntriesZipRequest
from communication_client.models.file_stream_result import FileStreamResult
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
    api_instance = communication_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    download_communication_entries_zip_request = {"communicationEntryIds":["string"],"queryParams":{"communicationType":"string","excludeCommunicationType":"string","excludeCommunicationEntryStatus":"string","communicationEntryStatus":"string","entitySubjectType":"string","subjectSubType":"string","entitySubjectId":"string","failureReasonCode":0,"sentStartDateTimeOffset":"string","sentEndDateTimeOffset":"string","customerId":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","excludedIds":["string"]} # DownloadCommunicationEntriesZipRequest | The request containing the IDs of the communication entries to include in the zip file. (optional)

    try:
        # Downloads a zip file containing the specified communication entries.
        api_response = api_instance.post_communicationentries_downloadzip(zf_tuuid, zf_ouuid, download_communication_entries_zip_request=download_communication_entries_zip_request)
        print("The response of DefaultApi->post_communicationentries_downloadzip:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_communicationentries_downloadzip: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **download_communication_entries_zip_request** | [**DownloadCommunicationEntriesZipRequest**](DownloadCommunicationEntriesZipRequest.md)| The request containing the IDs of the communication entries to include in the zip file. | [optional] 

### Return type

[**FileStreamResult**](FileStreamResult.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_communicationentries_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfCommunicationEntryDTO post_communicationentries_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_communication_entries_query_params=get_communication_entries_query_params)

Retrieves communication entries across the organization based on the provided query parameters and filters.

Retrieves communication entries across the organization based on the provided query parameters and filters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dtoof_paged_response_model_dtoof_communication_entry_dto import ApiResponseDTOOfPagedResponseModelDTOOfCommunicationEntryDTO
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
    api_instance = communication_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | The order by clause. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)
    get_communication_entries_query_params = {"communicationType":"string","excludeCommunicationType":"string","excludeCommunicationEntryStatus":"string","communicationEntryStatus":"string","entitySubjectType":"string","subjectSubType":"string","entitySubjectId":"string","failureReasonCode":0,"sentStartDateTimeOffset":"string","sentEndDateTimeOffset":"string","customerId":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetCommunicationEntriesQueryParams | The cancellation token. (optional)

    try:
        # Retrieves communication entries across the organization based on the provided query parameters and filters.
        api_response = api_instance.post_communicationentries_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_communication_entries_query_params=get_communication_entries_query_params)
        print("The response of DefaultApi->post_communicationentries_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_communicationentries_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **order_by** | **str**| The order by clause. | [optional] 
 **continuation_token** | **str**| The continuation token for pagination. | [optional] 
 **get_communication_entries_query_params** | [**GetCommunicationEntriesQueryParams**](GetCommunicationEntriesQueryParams.md)| The cancellation token. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfCommunicationEntryDTO**](ApiResponseDTOOfPagedResponseModelDTOOfCommunicationEntryDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response containing the communication entries. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_communicationentries_filter_customer_customerid**
> ApiResponseDTOOfPagedResponseModelDTOOfCommunicationEntryDTO post_communicationentries_filter_customer_customerid(customer_id, zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_communication_entries_query_params=get_communication_entries_query_params)

Retrieves communication entries for a specific customer based on the provided query parameters and filters.

Retrieves communication entries for a specific customer based on the provided query parameters and filters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dtoof_paged_response_model_dtoof_communication_entry_dto import ApiResponseDTOOfPagedResponseModelDTOOfCommunicationEntryDTO
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
    api_instance = communication_client.DefaultApi(api_client)
    customer_id = 'customer_id_example' # str | The ID of the customer.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | The order by clause. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)
    get_communication_entries_query_params = {"communicationType":"string","excludeCommunicationType":"string","excludeCommunicationEntryStatus":"string","communicationEntryStatus":"string","entitySubjectType":"string","subjectSubType":"string","entitySubjectId":"string","failureReasonCode":0,"sentStartDateTimeOffset":"string","sentEndDateTimeOffset":"string","customerId":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetCommunicationEntriesQueryParams | The cancellation token. (optional)

    try:
        # Retrieves communication entries for a specific customer based on the provided query parameters and filters.
        api_response = api_instance.post_communicationentries_filter_customer_customerid(customer_id, zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_communication_entries_query_params=get_communication_entries_query_params)
        print("The response of DefaultApi->post_communicationentries_filter_customer_customerid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_communicationentries_filter_customer_customerid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **order_by** | **str**| The order by clause. | [optional] 
 **continuation_token** | **str**| The continuation token for pagination. | [optional] 
 **get_communication_entries_query_params** | [**GetCommunicationEntriesQueryParams**](GetCommunicationEntriesQueryParams.md)| The cancellation token. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfCommunicationEntryDTO**](ApiResponseDTOOfPagedResponseModelDTOOfCommunicationEntryDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response containing the communication entries. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_communicationentries_filter_customer_customerid_overviewcount**
> ApiResponseDTOOfCommunicationEntryOverviewCountDTO post_communicationentries_filter_customer_customerid_overviewcount(customer_id, zf_tuuid, zf_ouuid, get_communication_entries_query_params=get_communication_entries_query_params)

Retrieves the overview count of communication entries for a specific customer.

Retrieves the overview count of communication entries for a specific customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dtoof_communication_entry_overview_count_dto import ApiResponseDTOOfCommunicationEntryOverviewCountDTO
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
    api_instance = communication_client.DefaultApi(api_client)
    customer_id = 'customer_id_example' # str | The ID of the customer.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    get_communication_entries_query_params = {"communicationType":"string","excludeCommunicationType":"string","excludeCommunicationEntryStatus":"string","communicationEntryStatus":"string","entitySubjectType":"string","subjectSubType":"string","entitySubjectId":"string","failureReasonCode":0,"sentStartDateTimeOffset":"string","sentEndDateTimeOffset":"string","customerId":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetCommunicationEntriesQueryParams | The cancellation token. (optional)

    try:
        # Retrieves the overview count of communication entries for a specific customer.
        api_response = api_instance.post_communicationentries_filter_customer_customerid_overviewcount(customer_id, zf_tuuid, zf_ouuid, get_communication_entries_query_params=get_communication_entries_query_params)
        print("The response of DefaultApi->post_communicationentries_filter_customer_customerid_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_communicationentries_filter_customer_customerid_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **get_communication_entries_query_params** | [**GetCommunicationEntriesQueryParams**](GetCommunicationEntriesQueryParams.md)| The cancellation token. | [optional] 

### Return type

[**ApiResponseDTOOfCommunicationEntryOverviewCountDTO**](ApiResponseDTOOfCommunicationEntryOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The overview count of communication entries. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_communicationentries_filter_overviewcount**
> ApiResponseDTOOfCommunicationEntryOverviewCountDTO post_communicationentries_filter_overviewcount(zf_tuuid, zf_ouuid, get_communication_entries_query_params=get_communication_entries_query_params)

Retrieves the overview count of communication entries across the organization.

Retrieves the overview count of communication entries across the organization.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dtoof_communication_entry_overview_count_dto import ApiResponseDTOOfCommunicationEntryOverviewCountDTO
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
    api_instance = communication_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    get_communication_entries_query_params = {"communicationType":"string","excludeCommunicationType":"string","excludeCommunicationEntryStatus":"string","communicationEntryStatus":"string","entitySubjectType":"string","subjectSubType":"string","entitySubjectId":"string","failureReasonCode":0,"sentStartDateTimeOffset":"string","sentEndDateTimeOffset":"string","customerId":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetCommunicationEntriesQueryParams | The cancellation token. (optional)

    try:
        # Retrieves the overview count of communication entries across the organization.
        api_response = api_instance.post_communicationentries_filter_overviewcount(zf_tuuid, zf_ouuid, get_communication_entries_query_params=get_communication_entries_query_params)
        print("The response of DefaultApi->post_communicationentries_filter_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_communicationentries_filter_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **get_communication_entries_query_params** | [**GetCommunicationEntriesQueryParams**](GetCommunicationEntriesQueryParams.md)| The cancellation token. | [optional] 

### Return type

[**ApiResponseDTOOfCommunicationEntryOverviewCountDTO**](ApiResponseDTOOfCommunicationEntryOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The overview count of communication entries. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_communicationentries_resend**
> ApiResponseDTOOfboolean post_communicationentries_resend(zf_tuuid, zf_ouuid, resend_communication_entry_request=resend_communication_entry_request)

Resends a communication entry using the same settings as the original.

Resends a communication entry using the same settings as the original.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from communication_client.models.resend_communication_entry_request import ResendCommunicationEntryRequest
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
    api_instance = communication_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    resend_communication_entry_request = {"communicationEntryId":"string","subjectId":"string","subjectType":"none","subjectSubtype":"string","forcedCommunicationType":"string"} # ResendCommunicationEntryRequest | The cancellation token. (optional)

    try:
        # Resends a communication entry using the same settings as the original.
        api_response = api_instance.post_communicationentries_resend(zf_tuuid, zf_ouuid, resend_communication_entry_request=resend_communication_entry_request)
        print("The response of DefaultApi->post_communicationentries_resend:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_communicationentries_resend: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **resend_communication_entry_request** | [**ResendCommunicationEntryRequest**](ResendCommunicationEntryRequest.md)| The cancellation token. | [optional] 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_communicationprovideraccounts**
> ApiResponseDTOOfCommunicationProviderAccountDTO post_communicationprovideraccounts(zf_tuuid, zf_ouuid, create_communication_provider_account_request=create_communication_provider_account_request)

Create a new communication provider account.

Create a new communication provider account.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dtoof_communication_provider_account_dto import ApiResponseDTOOfCommunicationProviderAccountDTO
from communication_client.models.create_communication_provider_account_request import CreateCommunicationProviderAccountRequest
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
    api_instance = communication_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    create_communication_provider_account_request = {"providerType":"sendgridemail"} # CreateCommunicationProviderAccountRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Create a new communication provider account.
        api_response = api_instance.post_communicationprovideraccounts(zf_tuuid, zf_ouuid, create_communication_provider_account_request=create_communication_provider_account_request)
        print("The response of DefaultApi->post_communicationprovideraccounts:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_communicationprovideraccounts: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **create_communication_provider_account_request** | [**CreateCommunicationProviderAccountRequest**](CreateCommunicationProviderAccountRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfCommunicationProviderAccountDTO**](ApiResponseDTOOfCommunicationProviderAccountDTO.md)

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

# **post_communicationprovideraccounts_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfCommunicationProviderAccountDTO post_communicationprovideraccounts_filter(zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token, get_communication_provider_accounts_query_params=get_communication_provider_accounts_query_params)

Retrieve communication provider accounts based on the provided query parameters.

Retrieve communication provider accounts based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dtoof_paged_response_model_dtoof_communication_provider_account_dto import ApiResponseDTOOfPagedResponseModelDTOOfCommunicationProviderAccountDTO
from communication_client.models.get_communication_provider_accounts_query_params import GetCommunicationProviderAccountsQueryParams
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
    api_instance = communication_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    order_by = 'order_by_example' # str | The order by clause. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)
    get_communication_provider_accounts_query_params = {"status":["string"],"providerType":["string"],"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetCommunicationProviderAccountsQueryParams | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieve communication provider accounts based on the provided query parameters.
        api_response = api_instance.post_communicationprovideraccounts_filter(zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token, get_communication_provider_accounts_query_params=get_communication_provider_accounts_query_params)
        print("The response of DefaultApi->post_communicationprovideraccounts_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_communicationprovideraccounts_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **order_by** | **str**| The order by clause. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 
 **get_communication_provider_accounts_query_params** | [**GetCommunicationProviderAccountsQueryParams**](GetCommunicationProviderAccountsQueryParams.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfCommunicationProviderAccountDTO**](ApiResponseDTOOfPagedResponseModelDTOOfCommunicationProviderAccountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response of communication provider accounts. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_communicationprovideraccounts_id_disconnect**
> ApiResponseDTOOfCommunicationProviderAccountDTO post_communicationprovideraccounts_id_disconnect(id, zf_tuuid, zf_ouuid)

Disconnect a communication provider account and set it to inactive status.

Disconnect a communication provider account and set it to inactive status.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dtoof_communication_provider_account_dto import ApiResponseDTOOfCommunicationProviderAccountDTO
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
    api_instance = communication_client.DefaultApi(api_client)
    id = 'id_example' # str | The communication provider account ID to disconnect
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Disconnect a communication provider account and set it to inactive status.
        api_response = api_instance.post_communicationprovideraccounts_id_disconnect(id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->post_communicationprovideraccounts_id_disconnect:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_communicationprovideraccounts_id_disconnect: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The communication provider account ID to disconnect | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfCommunicationProviderAccountDTO**](ApiResponseDTOOfCommunicationProviderAccountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_communicationsubjects_bulk_ignore**
> ApiResponseDTO post_communicationsubjects_bulk_ignore(zf_tuuid, zf_ouuid, bulk_ignore_communication_subjects_request=bulk_ignore_communication_subjects_request)

Ignores communication subjects in bulk.

Ignores communication subjects in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dto import ApiResponseDTO
from communication_client.models.bulk_ignore_communication_subjects_request import BulkIgnoreCommunicationSubjectsRequest
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
    api_instance = communication_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_ignore_communication_subjects_request = {"onlyValidate":true,"queryParams":{"communicationType":"string","excludeCommunicationType":"string","excludeCommunicationEntryStatus":"string","communicationEntryStatus":"string","entitySubjectTypes":["string"],"entitySubjectSubTypes":["string"],"entitySubjectId":"string","failureReasonCode":0,"sentStartDateTimeOffset":"string","sentEndDateTimeOffset":"string","customerId":"string","applyFiltersOverIncludedIds":true,"showIgnored":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkIgnoreCommunicationSubjectsRequest | The cancellation token. (optional)

    try:
        # Ignores communication subjects in bulk.
        api_response = api_instance.post_communicationsubjects_bulk_ignore(zf_tuuid, zf_ouuid, bulk_ignore_communication_subjects_request=bulk_ignore_communication_subjects_request)
        print("The response of DefaultApi->post_communicationsubjects_bulk_ignore:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_communicationsubjects_bulk_ignore: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_ignore_communication_subjects_request** | [**BulkIgnoreCommunicationSubjectsRequest**](BulkIgnoreCommunicationSubjectsRequest.md)| The cancellation token. | [optional] 

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
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_communicationsubjects_bulk_sendvia**
> ApiResponseDTOOfCommunicationSubjectDTO post_communicationsubjects_bulk_sendvia(zf_tuuid, zf_ouuid, bulk_send_communication_subjects_via_request=bulk_send_communication_subjects_via_request)

Sends communication subjects via a method in bulk.

Sends communication subjects via a method in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dtoof_communication_subject_dto import ApiResponseDTOOfCommunicationSubjectDTO
from communication_client.models.bulk_send_communication_subjects_via_request import BulkSendCommunicationSubjectsViaRequest
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
    api_instance = communication_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_send_communication_subjects_via_request = {"onlyValidate":true,"queryParams":{"communicationType":"string","excludeCommunicationType":"string","excludeCommunicationEntryStatus":"string","communicationEntryStatus":"string","entitySubjectTypes":["string"],"entitySubjectSubTypes":["string"],"entitySubjectId":"string","failureReasonCode":0,"sentStartDateTimeOffset":"string","sentEndDateTimeOffset":"string","customerId":"string","applyFiltersOverIncludedIds":true,"showIgnored":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","forcedCommunicationType":"string"} # BulkSendCommunicationSubjectsViaRequest |  (optional)

    try:
        # Sends communication subjects via a method in bulk.
        api_response = api_instance.post_communicationsubjects_bulk_sendvia(zf_tuuid, zf_ouuid, bulk_send_communication_subjects_via_request=bulk_send_communication_subjects_via_request)
        print("The response of DefaultApi->post_communicationsubjects_bulk_sendvia:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_communicationsubjects_bulk_sendvia: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_send_communication_subjects_via_request** | [**BulkSendCommunicationSubjectsViaRequest**](BulkSendCommunicationSubjectsViaRequest.md)|  | [optional] 

### Return type

[**ApiResponseDTOOfCommunicationSubjectDTO**](ApiResponseDTOOfCommunicationSubjectDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_communicationsubjects_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfCommunicationSubjectDTO post_communicationsubjects_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_communication_subjects_query_params=get_communication_subjects_query_params)

Retrieves communication entries across the organization based on the provided query parameters and filters.

Retrieves communication entries across the organization based on the provided query parameters and filters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dtoof_paged_response_model_dtoof_communication_subject_dto import ApiResponseDTOOfPagedResponseModelDTOOfCommunicationSubjectDTO
from communication_client.models.get_communication_subjects_query_params import GetCommunicationSubjectsQueryParams
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
    api_instance = communication_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | The order by clause. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)
    get_communication_subjects_query_params = {"communicationType":"string","excludeCommunicationType":"string","excludeCommunicationEntryStatus":"string","communicationEntryStatus":"string","entitySubjectTypes":["string"],"entitySubjectSubTypes":["string"],"entitySubjectId":"string","failureReasonCode":0,"sentStartDateTimeOffset":"string","sentEndDateTimeOffset":"string","customerId":"string","applyFiltersOverIncludedIds":true,"showIgnored":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetCommunicationSubjectsQueryParams | The cancellation token. (optional)

    try:
        # Retrieves communication entries across the organization based on the provided query parameters and filters.
        api_response = api_instance.post_communicationsubjects_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_communication_subjects_query_params=get_communication_subjects_query_params)
        print("The response of DefaultApi->post_communicationsubjects_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_communicationsubjects_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **order_by** | **str**| The order by clause. | [optional] 
 **continuation_token** | **str**| The continuation token for pagination. | [optional] 
 **get_communication_subjects_query_params** | [**GetCommunicationSubjectsQueryParams**](GetCommunicationSubjectsQueryParams.md)| The cancellation token. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfCommunicationSubjectDTO**](ApiResponseDTOOfPagedResponseModelDTOOfCommunicationSubjectDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response containing the communication entries. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_communicationsubjects_filter_overviewcount**
> ApiResponseDTOOfCommunicationSubjectOverviewCountDTO post_communicationsubjects_filter_overviewcount(zf_tuuid, zf_ouuid, get_communication_subjects_query_params=get_communication_subjects_query_params)

Retrieves the overview count of communication entries across the organization.

Retrieves the overview count of communication entries across the organization.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dtoof_communication_subject_overview_count_dto import ApiResponseDTOOfCommunicationSubjectOverviewCountDTO
from communication_client.models.get_communication_subjects_query_params import GetCommunicationSubjectsQueryParams
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
    api_instance = communication_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    get_communication_subjects_query_params = {"communicationType":"string","excludeCommunicationType":"string","excludeCommunicationEntryStatus":"string","communicationEntryStatus":"string","entitySubjectTypes":["string"],"entitySubjectSubTypes":["string"],"entitySubjectId":"string","failureReasonCode":0,"sentStartDateTimeOffset":"string","sentEndDateTimeOffset":"string","customerId":"string","applyFiltersOverIncludedIds":true,"showIgnored":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetCommunicationSubjectsQueryParams | The cancellation token. (optional)

    try:
        # Retrieves the overview count of communication entries across the organization.
        api_response = api_instance.post_communicationsubjects_filter_overviewcount(zf_tuuid, zf_ouuid, get_communication_subjects_query_params=get_communication_subjects_query_params)
        print("The response of DefaultApi->post_communicationsubjects_filter_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_communicationsubjects_filter_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **get_communication_subjects_query_params** | [**GetCommunicationSubjectsQueryParams**](GetCommunicationSubjectsQueryParams.md)| The cancellation token. | [optional] 

### Return type

[**ApiResponseDTOOfCommunicationSubjectOverviewCountDTO**](ApiResponseDTOOfCommunicationSubjectOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The overview count of communication entries. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_webhook_email_sendgrid**
> ApiResponseDTOOfboolean post_webhook_email_sendgrid()

Handles SendGrid webhook events and triggers transformation and queueing.

Handles SendGrid webhook events and triggers transformation and queueing.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = communication_client.DefaultApi(api_client)

    try:
        # Handles SendGrid webhook events and triggers transformation and queueing.
        api_response = api_instance.post_webhook_email_sendgrid()
        print("The response of DefaultApi->post_webhook_email_sendgrid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_webhook_email_sendgrid: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_webhook_postal_pingen**
> ApiResponseDTOOfboolean post_webhook_postal_pingen()

Handles Pingen webhook events (postal) and triggers transformation and queueing.

Handles Pingen webhook events (postal) and triggers transformation and queueing.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = communication_client.DefaultApi(api_client)

    try:
        # Handles Pingen webhook events (postal) and triggers transformation and queueing.
        api_response = api_instance.post_webhook_postal_pingen()
        print("The response of DefaultApi->post_webhook_postal_pingen:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_webhook_postal_pingen: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_webhook_sms_twilio_tenantid_organisationid_communicationentryid**
> ApiResponseDTOOfboolean post_webhook_sms_twilio_tenantid_organisationid_communicationentryid(tenant_id, organisation_id, communication_entry_id)

Handles SMS delivery status callbacks from Twilio.

Handles SMS delivery status callbacks from Twilio.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import communication_client
from communication_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = communication_client.DefaultApi(api_client)
    tenant_id = 'tenant_id_example' # str | The tenant identifier embedded in the callback URL.
    organisation_id = 'organisation_id_example' # str | The organisation identifier embedded in the callback URL.
    communication_entry_id = 'communication_entry_id_example' # str | The communication entry identifier embedded in the callback URL.

    try:
        # Handles SMS delivery status callbacks from Twilio.
        api_response = api_instance.post_webhook_sms_twilio_tenantid_organisationid_communicationentryid(tenant_id, organisation_id, communication_entry_id)
        print("The response of DefaultApi->post_webhook_sms_twilio_tenantid_organisationid_communicationentryid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_webhook_sms_twilio_tenantid_organisationid_communicationentryid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant_id** | **str**| The tenant identifier embedded in the callback URL. | 
 **organisation_id** | **str**| The organisation identifier embedded in the callback URL. | 
 **communication_entry_id** | **str**| The communication entry identifier embedded in the callback URL. | 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

