# billing_client.CollectionCasesApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_collectioncases**](CollectionCasesApi.md#get_collectioncases) | **GET** /CollectionCases | Retrieves all collection cases based on the provided query parameters.
[**get_collectioncases_collectioncaseid**](CollectionCasesApi.md#get_collectioncases_collectioncaseid) | **GET** /CollectionCases/{collectioncaseid} | Retrieves the details of a specific collection case.
[**get_collectioncases_overviewcount**](CollectionCasesApi.md#get_collectioncases_overviewcount) | **GET** /CollectionCases/overviewcount | Retrieves the overview count of collection cases based on the provided query parameters.
[**post_collectioncases_collectioncaseid_markclosed**](CollectionCasesApi.md#post_collectioncases_collectioncaseid_markclosed) | **POST** /CollectionCases/{collectioncaseid}/markclosed | Marks a collection case as manually closed.
[**post_collectioncases_collectioncaseid_process**](CollectionCasesApi.md#post_collectioncases_collectioncaseid_process) | **POST** /CollectionCases/{collectioncaseid}/process | Processes the collection case
[**post_collectioncases_collectioncaseid_stepid_execute**](CollectionCasesApi.md#post_collectioncases_collectioncaseid_stepid_execute) | **POST** /CollectionCases/{collectioncaseid}/{stepId}/execute | Executes a specific collection case step.
[**post_collectioncases_collectioncaseid_stepid_preview**](CollectionCasesApi.md#post_collectioncases_collectioncaseid_stepid_preview) | **POST** /CollectionCases/{collectioncaseid}/{stepId}/preview | Previews a collection case document.
[**post_collectioncases_collectioncaseid_stepid_previewpdf**](CollectionCasesApi.md#post_collectioncases_collectioncaseid_stepid_previewpdf) | **POST** /CollectionCases/{collectioncaseid}/{stepId}/previewpdf | Previews a collection case document as a PDF.
[**post_collectioncases_collectioncaseid_stepid_retry**](CollectionCasesApi.md#post_collectioncases_collectioncaseid_stepid_retry) | **POST** /CollectionCases/{collectioncaseid}/{stepId}/retry | Retries a specific collection case step.
[**post_collectioncases_collectioncaseid_stepid_sendviamail**](CollectionCasesApi.md#post_collectioncases_collectioncaseid_stepid_sendviamail) | **POST** /CollectionCases/{collectioncaseid}/{stepId}/sendviamail | Sends a specific collection case step via email.
[**post_collectioncases_collectioncaseid_stepid_sendviapostal**](CollectionCasesApi.md#post_collectioncases_collectioncaseid_stepid_sendviapostal) | **POST** /CollectionCases/{collectioncaseid}/{stepId}/sendviapostal | Sends a specific collection case step via postal mail.
[**post_collectioncases_collectioncaseid_stepid_skip**](CollectionCasesApi.md#post_collectioncases_collectioncaseid_stepid_skip) | **POST** /CollectionCases/{collectioncaseid}/{stepId}/skip | Skips a specific collection case step.
[**post_collectioncases_entityid_customproperties**](CollectionCasesApi.md#post_collectioncases_entityid_customproperties) | **POST** /CollectionCases/{entityId}/customproperties | /CollectionCases/{entityId}/customproperties - POST
[**post_collectioncases_invoice_invoiceid_submit**](CollectionCasesApi.md#post_collectioncases_invoice_invoiceid_submit) | **POST** /CollectionCases/invoice/{invoiceid}/submit | Creates a collection case for a specific invoice.


# **get_collectioncases**
> CollectionCaseDTOPagedResponseModelDTOApiResponseDTO get_collectioncases(zf_tuuid, zf_ouuid, workflow_id=workflow_id, customer_id=customer_id, property_group_ids=property_group_ids, next_action_due_from=next_action_due_from, next_action_due_to=next_action_due_to, open_amount_lower_limit=open_amount_lower_limit, customer_group_id=customer_group_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

Retrieves all collection cases based on the provided query parameters.

Retrieves all collection cases based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.collection_case_dto_paged_response_model_dto_api_response_dto import CollectionCaseDTOPagedResponseModelDTOApiResponseDTO
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.CollectionCasesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    workflow_id = 'workflow_id_example' # str |  (optional)
    customer_id = 'customer_id_example' # str |  (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] |  (optional)
    next_action_due_from = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    next_action_due_to = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    open_amount_lower_limit = 3.4 # float | Format - double. (optional)
    customer_group_id = 'customer_group_id_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    order_by = 'order_by_example' # str | The order by clause. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)

    try:
        # Retrieves all collection cases based on the provided query parameters.
        api_response = api_instance.get_collectioncases(zf_tuuid, zf_ouuid, workflow_id=workflow_id, customer_id=customer_id, property_group_ids=property_group_ids, next_action_due_from=next_action_due_from, next_action_due_to=next_action_due_to, open_amount_lower_limit=open_amount_lower_limit, customer_group_id=customer_group_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of CollectionCasesApi->get_collectioncases:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionCasesApi->get_collectioncases: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **workflow_id** | **str**|  | [optional] 
 **customer_id** | **str**|  | [optional] 
 **property_group_ids** | [**List[str]**](str.md)|  | [optional] 
 **next_action_due_from** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **next_action_due_to** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **open_amount_lower_limit** | **float**| Format - double. | [optional] 
 **customer_group_id** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **order_by** | **str**| The order by clause. | [optional] 
 **continuation_token** | **str**| The continuation token for pagination. | [optional] 

### Return type

[**CollectionCaseDTOPagedResponseModelDTOApiResponseDTO**](CollectionCaseDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_collectioncases_collectioncaseid**
> CollectionCaseDTOApiResponseDTO get_collectioncases_collectioncaseid(collectioncaseid, zf_tuuid, zf_ouuid)

Retrieves the details of a specific collection case.

Retrieves the details of a specific collection case.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.collection_case_dto_api_response_dto import CollectionCaseDTOApiResponseDTO
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.CollectionCasesApi(api_client)
    collectioncaseid = 'collectioncaseid_example' # str | The ID of the collection case.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves the details of a specific collection case.
        api_response = api_instance.get_collectioncases_collectioncaseid(collectioncaseid, zf_tuuid, zf_ouuid)
        print("The response of CollectionCasesApi->get_collectioncases_collectioncaseid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionCasesApi->get_collectioncases_collectioncaseid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectioncaseid** | **str**| The ID of the collection case. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**CollectionCaseDTOApiResponseDTO**](CollectionCaseDTOApiResponseDTO.md)

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

# **get_collectioncases_overviewcount**
> CollectionCaseOverviewCountResponseDTOApiResponseDTO get_collectioncases_overviewcount(zf_tuuid, zf_ouuid, workflow_id=workflow_id, customer_id=customer_id, property_group_ids=property_group_ids, next_action_due_from=next_action_due_from, next_action_due_to=next_action_due_to, open_amount_lower_limit=open_amount_lower_limit, customer_group_id=customer_group_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Retrieves the overview count of collection cases based on the provided query parameters.

Retrieves the overview count of collection cases based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.collection_case_overview_count_response_dto_api_response_dto import CollectionCaseOverviewCountResponseDTOApiResponseDTO
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.CollectionCasesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    workflow_id = 'workflow_id_example' # str |  (optional)
    customer_id = 'customer_id_example' # str |  (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] |  (optional)
    next_action_due_from = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    next_action_due_to = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    open_amount_lower_limit = 3.4 # float | Format - double. (optional)
    customer_group_id = 'customer_group_id_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Retrieves the overview count of collection cases based on the provided query parameters.
        api_response = api_instance.get_collectioncases_overviewcount(zf_tuuid, zf_ouuid, workflow_id=workflow_id, customer_id=customer_id, property_group_ids=property_group_ids, next_action_due_from=next_action_due_from, next_action_due_to=next_action_due_to, open_amount_lower_limit=open_amount_lower_limit, customer_group_id=customer_group_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of CollectionCasesApi->get_collectioncases_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionCasesApi->get_collectioncases_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **workflow_id** | **str**|  | [optional] 
 **customer_id** | **str**|  | [optional] 
 **property_group_ids** | [**List[str]**](str.md)|  | [optional] 
 **next_action_due_from** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **next_action_due_to** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **open_amount_lower_limit** | **float**| Format - double. | [optional] 
 **customer_group_id** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**CollectionCaseOverviewCountResponseDTOApiResponseDTO**](CollectionCaseOverviewCountResponseDTOApiResponseDTO.md)

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

# **post_collectioncases_collectioncaseid_markclosed**
> CollectionCaseDTOApiResponseDTO post_collectioncases_collectioncaseid_markclosed(collectioncaseid, zf_tuuid, zf_ouuid, mark_collection_case_manually_closed_request=mark_collection_case_manually_closed_request)

Marks a collection case as manually closed.

Marks a collection case as manually closed.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.collection_case_dto_api_response_dto import CollectionCaseDTOApiResponseDTO
from billing_client.models.mark_collection_case_manually_closed_request import MarkCollectionCaseManuallyClosedRequest
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.CollectionCasesApi(api_client)
    collectioncaseid = 'collectioncaseid_example' # str | The ID of the collection case.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    mark_collection_case_manually_closed_request = {"writeOffFees":true,"writeOffHandlingType":{}} # MarkCollectionCaseManuallyClosedRequest | The request containing the details for marking the case as closed. (optional)

    try:
        # Marks a collection case as manually closed.
        api_response = api_instance.post_collectioncases_collectioncaseid_markclosed(collectioncaseid, zf_tuuid, zf_ouuid, mark_collection_case_manually_closed_request=mark_collection_case_manually_closed_request)
        print("The response of CollectionCasesApi->post_collectioncases_collectioncaseid_markclosed:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionCasesApi->post_collectioncases_collectioncaseid_markclosed: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectioncaseid** | **str**| The ID of the collection case. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **mark_collection_case_manually_closed_request** | [**MarkCollectionCaseManuallyClosedRequest**](MarkCollectionCaseManuallyClosedRequest.md)| The request containing the details for marking the case as closed. | [optional] 

### Return type

[**CollectionCaseDTOApiResponseDTO**](CollectionCaseDTOApiResponseDTO.md)

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

# **post_collectioncases_collectioncaseid_process**
> CollectionCaseDTOApiResponseDTO post_collectioncases_collectioncaseid_process(collectioncaseid, zf_tuuid, zf_ouuid, manually_process_collection_case_request=manually_process_collection_case_request)

Processes the collection case

Processes the collection case

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.collection_case_dto_api_response_dto import CollectionCaseDTOApiResponseDTO
from billing_client.models.manually_process_collection_case_request import ManuallyProcessCollectionCaseRequest
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.CollectionCasesApi(api_client)
    collectioncaseid = 'collectioncaseid_example' # str | The ID of the collection case.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    manually_process_collection_case_request = {"executeUntil":"string"} # ManuallyProcessCollectionCaseRequest | The request containing the details for processing the collectio ncase. (optional)

    try:
        # Processes the collection case
        api_response = api_instance.post_collectioncases_collectioncaseid_process(collectioncaseid, zf_tuuid, zf_ouuid, manually_process_collection_case_request=manually_process_collection_case_request)
        print("The response of CollectionCasesApi->post_collectioncases_collectioncaseid_process:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionCasesApi->post_collectioncases_collectioncaseid_process: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectioncaseid** | **str**| The ID of the collection case. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **manually_process_collection_case_request** | [**ManuallyProcessCollectionCaseRequest**](ManuallyProcessCollectionCaseRequest.md)| The request containing the details for processing the collectio ncase. | [optional] 

### Return type

[**CollectionCaseDTOApiResponseDTO**](CollectionCaseDTOApiResponseDTO.md)

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

# **post_collectioncases_collectioncaseid_stepid_execute**
> CollectionCaseDTOApiResponseDTO post_collectioncases_collectioncaseid_stepid_execute(collectioncaseid, step_id, zf_tuuid, zf_ouuid)

Executes a specific collection case step.

Executes a specific collection case step.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.collection_case_dto_api_response_dto import CollectionCaseDTOApiResponseDTO
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.CollectionCasesApi(api_client)
    collectioncaseid = 'collectioncaseid_example' # str | The ID of the collection case.
    step_id = 'step_id_example' # str | The ID of the step to execute.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Executes a specific collection case step.
        api_response = api_instance.post_collectioncases_collectioncaseid_stepid_execute(collectioncaseid, step_id, zf_tuuid, zf_ouuid)
        print("The response of CollectionCasesApi->post_collectioncases_collectioncaseid_stepid_execute:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionCasesApi->post_collectioncases_collectioncaseid_stepid_execute: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectioncaseid** | **str**| The ID of the collection case. | 
 **step_id** | **str**| The ID of the step to execute. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**CollectionCaseDTOApiResponseDTO**](CollectionCaseDTOApiResponseDTO.md)

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

# **post_collectioncases_collectioncaseid_stepid_preview**
> ContentResult post_collectioncases_collectioncaseid_stepid_preview(collectioncaseid, step_id, zf_tuuid, zf_ouuid)

Previews a collection case document.

Previews a collection case document.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.content_result import ContentResult
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.CollectionCasesApi(api_client)
    collectioncaseid = 'collectioncaseid_example' # str | The ID of the collection case.
    step_id = 'step_id_example' # str | The ID of the step to preview.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Previews a collection case document.
        api_response = api_instance.post_collectioncases_collectioncaseid_stepid_preview(collectioncaseid, step_id, zf_tuuid, zf_ouuid)
        print("The response of CollectionCasesApi->post_collectioncases_collectioncaseid_stepid_preview:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionCasesApi->post_collectioncases_collectioncaseid_stepid_preview: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectioncaseid** | **str**| The ID of the collection case. | 
 **step_id** | **str**| The ID of the step to preview. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**ContentResult**](ContentResult.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_collectioncases_collectioncaseid_stepid_previewpdf**
> bytearray post_collectioncases_collectioncaseid_stepid_previewpdf(collectioncaseid, step_id, zf_tuuid, zf_ouuid)

Previews a collection case document as a PDF.

Previews a collection case document as a PDF.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.CollectionCasesApi(api_client)
    collectioncaseid = 'collectioncaseid_example' # str | The ID of the collection case.
    step_id = 'step_id_example' # str | The ID of the step to preview.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Previews a collection case document as a PDF.
        api_response = api_instance.post_collectioncases_collectioncaseid_stepid_previewpdf(collectioncaseid, step_id, zf_tuuid, zf_ouuid)
        print("The response of CollectionCasesApi->post_collectioncases_collectioncaseid_stepid_previewpdf:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionCasesApi->post_collectioncases_collectioncaseid_stepid_previewpdf: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectioncaseid** | **str**| The ID of the collection case. | 
 **step_id** | **str**| The ID of the step to preview. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

**bytearray**

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

# **post_collectioncases_collectioncaseid_stepid_retry**
> CollectionCaseDTOApiResponseDTO post_collectioncases_collectioncaseid_stepid_retry(collectioncaseid, step_id, zf_tuuid, zf_ouuid)

Retries a specific collection case step.

Retries a specific collection case step.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.collection_case_dto_api_response_dto import CollectionCaseDTOApiResponseDTO
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.CollectionCasesApi(api_client)
    collectioncaseid = 'collectioncaseid_example' # str | The ID of the collection case.
    step_id = 'step_id_example' # str | The ID of the step to retry.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retries a specific collection case step.
        api_response = api_instance.post_collectioncases_collectioncaseid_stepid_retry(collectioncaseid, step_id, zf_tuuid, zf_ouuid)
        print("The response of CollectionCasesApi->post_collectioncases_collectioncaseid_stepid_retry:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionCasesApi->post_collectioncases_collectioncaseid_stepid_retry: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectioncaseid** | **str**| The ID of the collection case. | 
 **step_id** | **str**| The ID of the step to retry. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**CollectionCaseDTOApiResponseDTO**](CollectionCaseDTOApiResponseDTO.md)

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

# **post_collectioncases_collectioncaseid_stepid_sendviamail**
> CollectionCaseDTOApiResponseDTO post_collectioncases_collectioncaseid_stepid_sendviamail(collectioncaseid, step_id, zf_tuuid, zf_ouuid)

Sends a specific collection case step via email.

Sends a specific collection case step via email.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.collection_case_dto_api_response_dto import CollectionCaseDTOApiResponseDTO
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.CollectionCasesApi(api_client)
    collectioncaseid = 'collectioncaseid_example' # str | The ID of the collection case.
    step_id = 'step_id_example' # str | The ID of the step to send via email.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Sends a specific collection case step via email.
        api_response = api_instance.post_collectioncases_collectioncaseid_stepid_sendviamail(collectioncaseid, step_id, zf_tuuid, zf_ouuid)
        print("The response of CollectionCasesApi->post_collectioncases_collectioncaseid_stepid_sendviamail:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionCasesApi->post_collectioncases_collectioncaseid_stepid_sendviamail: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectioncaseid** | **str**| The ID of the collection case. | 
 **step_id** | **str**| The ID of the step to send via email. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**CollectionCaseDTOApiResponseDTO**](CollectionCaseDTOApiResponseDTO.md)

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

# **post_collectioncases_collectioncaseid_stepid_sendviapostal**
> CollectionCaseDTOApiResponseDTO post_collectioncases_collectioncaseid_stepid_sendviapostal(collectioncaseid, step_id, zf_tuuid, zf_ouuid)

Sends a specific collection case step via postal mail.

Sends a specific collection case step via postal mail.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.collection_case_dto_api_response_dto import CollectionCaseDTOApiResponseDTO
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.CollectionCasesApi(api_client)
    collectioncaseid = 'collectioncaseid_example' # str | The ID of the collection case.
    step_id = 'step_id_example' # str | The ID of the step to send via postal mail.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Sends a specific collection case step via postal mail.
        api_response = api_instance.post_collectioncases_collectioncaseid_stepid_sendviapostal(collectioncaseid, step_id, zf_tuuid, zf_ouuid)
        print("The response of CollectionCasesApi->post_collectioncases_collectioncaseid_stepid_sendviapostal:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionCasesApi->post_collectioncases_collectioncaseid_stepid_sendviapostal: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectioncaseid** | **str**| The ID of the collection case. | 
 **step_id** | **str**| The ID of the step to send via postal mail. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**CollectionCaseDTOApiResponseDTO**](CollectionCaseDTOApiResponseDTO.md)

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

# **post_collectioncases_collectioncaseid_stepid_skip**
> CollectionCaseDTOApiResponseDTO post_collectioncases_collectioncaseid_stepid_skip(collectioncaseid, step_id, zf_tuuid, zf_ouuid, execute_next_step_immediately=execute_next_step_immediately)

Skips a specific collection case step.

Skips a specific collection case step.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.collection_case_dto_api_response_dto import CollectionCaseDTOApiResponseDTO
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.CollectionCasesApi(api_client)
    collectioncaseid = 'collectioncaseid_example' # str | The ID of the collection case.
    step_id = 'step_id_example' # str | The ID of the step to skip.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    execute_next_step_immediately = True # bool | Whether to execute the next step immediately. (optional)

    try:
        # Skips a specific collection case step.
        api_response = api_instance.post_collectioncases_collectioncaseid_stepid_skip(collectioncaseid, step_id, zf_tuuid, zf_ouuid, execute_next_step_immediately=execute_next_step_immediately)
        print("The response of CollectionCasesApi->post_collectioncases_collectioncaseid_stepid_skip:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionCasesApi->post_collectioncases_collectioncaseid_stepid_skip: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **collectioncaseid** | **str**| The ID of the collection case. | 
 **step_id** | **str**| The ID of the step to skip. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **execute_next_step_immediately** | **bool**| Whether to execute the next step immediately. | [optional] 

### Return type

[**CollectionCaseDTOApiResponseDTO**](CollectionCaseDTOApiResponseDTO.md)

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

# **post_collectioncases_entityid_customproperties**
> CollectionCaseDTOApiResponseDTO post_collectioncases_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)

/CollectionCases/{entityId}/customproperties - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.collection_case_dto_api_response_dto import CollectionCaseDTOApiResponseDTO
from billing_client.models.update_custom_entity_properties_request import UpdateCustomEntityPropertiesRequest
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.CollectionCasesApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_custom_entity_properties_request = {"properties":[{"customEntityPropertyTypeId":"string","values":[{"startDateTime":"string","endDateTime":"string","valueDecimal":0,"valueString":"string","valueBoolean":true,"valueNumber":0,"valueDateTime":"string","valueDropdown":["string"]}]}]} # UpdateCustomEntityPropertiesRequest |  (optional)

    try:
        # /CollectionCases/{entityId}/customproperties - POST
        api_response = api_instance.post_collectioncases_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)
        print("The response of CollectionCasesApi->post_collectioncases_entityid_customproperties:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionCasesApi->post_collectioncases_entityid_customproperties: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_custom_entity_properties_request** | [**UpdateCustomEntityPropertiesRequest**](UpdateCustomEntityPropertiesRequest.md)|  | [optional] 

### Return type

[**CollectionCaseDTOApiResponseDTO**](CollectionCaseDTOApiResponseDTO.md)

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

# **post_collectioncases_invoice_invoiceid_submit**
> CollectionCaseDTOApiResponseDTO post_collectioncases_invoice_invoiceid_submit(invoiceid, zf_tuuid, zf_ouuid, assign_invoice_to_collection_case_request=assign_invoice_to_collection_case_request)

Creates a collection case for a specific invoice.

Creates a collection case for a specific invoice.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.assign_invoice_to_collection_case_request import AssignInvoiceToCollectionCaseRequest
from billing_client.models.collection_case_dto_api_response_dto import CollectionCaseDTOApiResponseDTO
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.CollectionCasesApi(api_client)
    invoiceid = 'invoiceid_example' # str | The ID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    assign_invoice_to_collection_case_request = {"collectionFlowId":"string","collectionCaseNumber":"string"} # AssignInvoiceToCollectionCaseRequest | The request containing the details for creating the collection case. (optional)

    try:
        # Creates a collection case for a specific invoice.
        api_response = api_instance.post_collectioncases_invoice_invoiceid_submit(invoiceid, zf_tuuid, zf_ouuid, assign_invoice_to_collection_case_request=assign_invoice_to_collection_case_request)
        print("The response of CollectionCasesApi->post_collectioncases_invoice_invoiceid_submit:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionCasesApi->post_collectioncases_invoice_invoiceid_submit: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceid** | **str**| The ID of the invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **assign_invoice_to_collection_case_request** | [**AssignInvoiceToCollectionCaseRequest**](AssignInvoiceToCollectionCaseRequest.md)| The request containing the details for creating the collection case. | [optional] 

### Return type

[**CollectionCaseDTOApiResponseDTO**](CollectionCaseDTOApiResponseDTO.md)

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

