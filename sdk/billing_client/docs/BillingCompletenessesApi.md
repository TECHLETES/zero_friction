# billing_client.BillingCompletenessesApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**filter_all_billing_completenesses**](BillingCompletenessesApi.md#filter_all_billing_completenesses) | **POST** /BillingCompletenesses/filter | Retrieves all billing completenesses based on the provided query parameters.
[**get_billing_completeness**](BillingCompletenessesApi.md#get_billing_completeness) | **GET** /BillingCompletenesses/{billingCompletenessId} | Retrieves a specific billing completeness by its ID.
[**get_billingcompletenesses_billingcompletenessid_estimations_errors**](BillingCompletenessesApi.md#get_billingcompletenesses_billingcompletenessid_estimations_errors) | **GET** /BillingCompletenesses/{billingCompletenessId}/estimations/errors | Retrieves validation errors for the estimated billing completeness by its ID.
[**get_billingcompletenesses_billingrelationid_insights**](BillingCompletenessesApi.md#get_billingcompletenesses_billingrelationid_insights) | **GET** /BillingCompletenesses/{billingRelationId}/insights | Retrieves billing completeness insights for a specific billing relation ID.
[**get_estimated_billing_completeness**](BillingCompletenessesApi.md#get_estimated_billing_completeness) | **GET** /BillingCompletenesses/{billingCompletenessId}/estimations | Retrieves the estimated billing completeness for a specific billing completeness ID.
[**post_billingcompletenesses_billingcompletenessid**](BillingCompletenessesApi.md#post_billingcompletenesses_billingcompletenessid) | **POST** /BillingCompletenesses/{billingCompletenessId} | Triggers billing for a specific billing completeness.
[**post_billingcompletenesses_billingcompletenessid_billintermediately**](BillingCompletenessesApi.md#post_billingcompletenesses_billingcompletenessid_billintermediately) | **POST** /BillingCompletenesses/{billingCompletenessId}/billintermediately | Bills a specific billing completeness intermediately.
[**post_billingcompletenesses_billingcompletenessid_manuallyclose**](BillingCompletenessesApi.md#post_billingcompletenesses_billingcompletenessid_manuallyclose) | **POST** /BillingCompletenesses/{billingCompletenessId}/manuallyclose | Manually closes a specific billing completeness.
[**post_billingcompletenesses_billingcompletenessid_reopen**](BillingCompletenessesApi.md#post_billingcompletenesses_billingcompletenessid_reopen) | **POST** /BillingCompletenesses/{billingCompletenessId}/reopen | Reopens a manually closed billing completeness.
[**post_billingcompletenesses_billingrelationid_changenextinvoiceenddate**](BillingCompletenessesApi.md#post_billingcompletenesses_billingrelationid_changenextinvoiceenddate) | **POST** /BillingCompletenesses/{billingRelationId}/changenextinvoiceenddate | Changes the next invoice end date for a specific billing relation.
[**post_billingcompletenesses_bulk_billintermediately**](BillingCompletenessesApi.md#post_billingcompletenesses_bulk_billintermediately) | **POST** /BillingCompletenesses/bulk/billintermediately | Bills multiple billing completenesses intermediately in bulk.
[**post_billingcompletenesses_bulk_manuallyclose**](BillingCompletenessesApi.md#post_billingcompletenesses_bulk_manuallyclose) | **POST** /BillingCompletenesses/bulk/manuallyclose | Manually closes multiple billing completenesses in bulk.
[**post_billingcompletenesses_bulk_reopen**](BillingCompletenessesApi.md#post_billingcompletenesses_bulk_reopen) | **POST** /BillingCompletenesses/bulk/reopen | Reopens multiple manually closed billing completenesses in bulk.
[**post_billingcompletenesses_bulk_triggerbilling**](BillingCompletenessesApi.md#post_billingcompletenesses_bulk_triggerbilling) | **POST** /BillingCompletenesses/bulk/triggerbilling | Triggers billing for multiple billing completenesses in bulk.
[**post_billingcompletenesses_filter_overviewcount**](BillingCompletenessesApi.md#post_billingcompletenesses_filter_overviewcount) | **POST** /BillingCompletenesses/filter/overviewcount | Retrieves the overview count of billing completeness based on the provided query parameters.


# **filter_all_billing_completenesses**
> BillingCompletenessDTOPagedResponseModelDTOApiResponseDTO filter_all_billing_completenesses(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_billing_completeness_query_params=get_billing_completeness_query_params)

Retrieves all billing completenesses based on the provided query parameters.

Retrieves all billing completenesses based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.billing_completeness_dto_paged_response_model_dto_api_response_dto import BillingCompletenessDTOPagedResponseModelDTOApiResponseDTO
from billing_client.models.get_billing_completeness_query_params import GetBillingCompletenessQueryParams
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
    api_instance = billing_client.BillingCompletenessesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    order_by = 'order_by_example' # str | The order by clause. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)
    get_billing_completeness_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"billingRelationId":"string","customerId":"string","propertyGroupIds":["string"],"contractId":"string","invoiceType":"string","status":"string","onlyOpen":true,"skipBlocked":true,"periodStartDateTime":"string","periodEndDateTime":"string","invoicingCheckpointStartDateTime":"string","invoicingCheckpointEndDateTime":"string"} # GetBillingCompletenessQueryParams | The query parameters for filtering billing completenesses. (optional)

    try:
        # Retrieves all billing completenesses based on the provided query parameters.
        api_response = api_instance.filter_all_billing_completenesses(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_billing_completeness_query_params=get_billing_completeness_query_params)
        print("The response of BillingCompletenessesApi->filter_all_billing_completenesses:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingCompletenessesApi->filter_all_billing_completenesses: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **order_by** | **str**| The order by clause. | [optional] 
 **continuation_token** | **str**| The continuation token for pagination. | [optional] 
 **get_billing_completeness_query_params** | [**GetBillingCompletenessQueryParams**](GetBillingCompletenessQueryParams.md)| The query parameters for filtering billing completenesses. | [optional] 

### Return type

[**BillingCompletenessDTOPagedResponseModelDTOApiResponseDTO**](BillingCompletenessDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_billing_completeness**
> BillingCompletenessDTOApiResponseDTO get_billing_completeness(billing_completeness_id, zf_tuuid, zf_ouuid)

Retrieves a specific billing completeness by its ID.

Retrieves a specific billing completeness by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.billing_completeness_dto_api_response_dto import BillingCompletenessDTOApiResponseDTO
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
    api_instance = billing_client.BillingCompletenessesApi(api_client)
    billing_completeness_id = 'billing_completeness_id_example' # str | The ID of the billing completeness.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific billing completeness by its ID.
        api_response = api_instance.get_billing_completeness(billing_completeness_id, zf_tuuid, zf_ouuid)
        print("The response of BillingCompletenessesApi->get_billing_completeness:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingCompletenessesApi->get_billing_completeness: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_completeness_id** | **str**| The ID of the billing completeness. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**BillingCompletenessDTOApiResponseDTO**](BillingCompletenessDTOApiResponseDTO.md)

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

# **get_billingcompletenesses_billingcompletenessid_estimations_errors**
> LocalisedErrorDTOListApiResponseDTO get_billingcompletenesses_billingcompletenessid_estimations_errors(billing_completeness_id, zf_tuuid, zf_ouuid)

Retrieves validation errors for the estimated billing completeness by its ID.

Retrieves validation errors for the estimated billing completeness by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.localised_error_dto_list_api_response_dto import LocalisedErrorDTOListApiResponseDTO
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
    api_instance = billing_client.BillingCompletenessesApi(api_client)
    billing_completeness_id = 'billing_completeness_id_example' # str | The ID of the billing completeness.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves validation errors for the estimated billing completeness by its ID.
        api_response = api_instance.get_billingcompletenesses_billingcompletenessid_estimations_errors(billing_completeness_id, zf_tuuid, zf_ouuid)
        print("The response of BillingCompletenessesApi->get_billingcompletenesses_billingcompletenessid_estimations_errors:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingCompletenessesApi->get_billingcompletenesses_billingcompletenessid_estimations_errors: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_completeness_id** | **str**| The ID of the billing completeness. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**LocalisedErrorDTOListApiResponseDTO**](LocalisedErrorDTOListApiResponseDTO.md)

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

# **get_billingcompletenesses_billingrelationid_insights**
> BillingCompletenessInsightsResponseDTOApiResponseDTO get_billingcompletenesses_billingrelationid_insights(billing_relation_id, zf_tuuid, zf_ouuid)

Retrieves billing completeness insights for a specific billing relation ID.

Retrieves billing completeness insights for a specific billing relation ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.billing_completeness_insights_response_dto_api_response_dto import BillingCompletenessInsightsResponseDTOApiResponseDTO
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
    api_instance = billing_client.BillingCompletenessesApi(api_client)
    billing_relation_id = 'billing_relation_id_example' # str | The ID of the billing relation.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves billing completeness insights for a specific billing relation ID.
        api_response = api_instance.get_billingcompletenesses_billingrelationid_insights(billing_relation_id, zf_tuuid, zf_ouuid)
        print("The response of BillingCompletenessesApi->get_billingcompletenesses_billingrelationid_insights:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingCompletenessesApi->get_billingcompletenesses_billingrelationid_insights: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_relation_id** | **str**| The ID of the billing relation. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**BillingCompletenessInsightsResponseDTOApiResponseDTO**](BillingCompletenessInsightsResponseDTOApiResponseDTO.md)

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

# **get_estimated_billing_completeness**
> EstimatedBillingCompletenessDTOApiResponseDTO get_estimated_billing_completeness(billing_completeness_id, zf_tuuid, zf_ouuid)

Retrieves the estimated billing completeness for a specific billing completeness ID.

Retrieves the estimated billing completeness for a specific billing completeness ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.estimated_billing_completeness_dto_api_response_dto import EstimatedBillingCompletenessDTOApiResponseDTO
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
    api_instance = billing_client.BillingCompletenessesApi(api_client)
    billing_completeness_id = 'billing_completeness_id_example' # str | The ID of the billing completeness.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves the estimated billing completeness for a specific billing completeness ID.
        api_response = api_instance.get_estimated_billing_completeness(billing_completeness_id, zf_tuuid, zf_ouuid)
        print("The response of BillingCompletenessesApi->get_estimated_billing_completeness:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingCompletenessesApi->get_estimated_billing_completeness: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_completeness_id** | **str**| The ID of the billing completeness. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**EstimatedBillingCompletenessDTOApiResponseDTO**](EstimatedBillingCompletenessDTOApiResponseDTO.md)

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

# **post_billingcompletenesses_billingcompletenessid**
> BillingCompletenessDTOApiResponseDTO post_billingcompletenesses_billingcompletenessid(billing_completeness_id, zf_tuuid, zf_ouuid, trigger_billing_completeness_request=trigger_billing_completeness_request)

Triggers billing for a specific billing completeness.

Triggers billing for a specific billing completeness.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.billing_completeness_dto_api_response_dto import BillingCompletenessDTOApiResponseDTO
from billing_client.models.trigger_billing_completeness_request import TriggerBillingCompletenessRequest
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
    api_instance = billing_client.BillingCompletenessesApi(api_client)
    billing_completeness_id = 'billing_completeness_id_example' # str | The ID of the billing completeness.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    trigger_billing_completeness_request = {"onlyAdvances":true,"recalculateIfNeeded":true,"advanceUntilDateTime":"string"} # TriggerBillingCompletenessRequest | The request containing the details for triggering billing. (optional)

    try:
        # Triggers billing for a specific billing completeness.
        api_response = api_instance.post_billingcompletenesses_billingcompletenessid(billing_completeness_id, zf_tuuid, zf_ouuid, trigger_billing_completeness_request=trigger_billing_completeness_request)
        print("The response of BillingCompletenessesApi->post_billingcompletenesses_billingcompletenessid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingCompletenessesApi->post_billingcompletenesses_billingcompletenessid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_completeness_id** | **str**| The ID of the billing completeness. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **trigger_billing_completeness_request** | [**TriggerBillingCompletenessRequest**](TriggerBillingCompletenessRequest.md)| The request containing the details for triggering billing. | [optional] 

### Return type

[**BillingCompletenessDTOApiResponseDTO**](BillingCompletenessDTOApiResponseDTO.md)

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

# **post_billingcompletenesses_billingcompletenessid_billintermediately**
> BillingCompletenessDTOApiResponseDTO post_billingcompletenesses_billingcompletenessid_billintermediately(billing_completeness_id, zf_tuuid, zf_ouuid, bill_billing_completeness_intermediately_request=bill_billing_completeness_intermediately_request)

Bills a specific billing completeness intermediately.

Bills a specific billing completeness intermediately.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.bill_billing_completeness_intermediately_request import BillBillingCompletenessIntermediatelyRequest
from billing_client.models.billing_completeness_dto_api_response_dto import BillingCompletenessDTOApiResponseDTO
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
    api_instance = billing_client.BillingCompletenessesApi(api_client)
    billing_completeness_id = 'billing_completeness_id_example' # str | The ID of the billing completeness.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bill_billing_completeness_intermediately_request = {"endDateTime":"string"} # BillBillingCompletenessIntermediatelyRequest | The request containing the details for intermediate billing. (optional)

    try:
        # Bills a specific billing completeness intermediately.
        api_response = api_instance.post_billingcompletenesses_billingcompletenessid_billintermediately(billing_completeness_id, zf_tuuid, zf_ouuid, bill_billing_completeness_intermediately_request=bill_billing_completeness_intermediately_request)
        print("The response of BillingCompletenessesApi->post_billingcompletenesses_billingcompletenessid_billintermediately:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingCompletenessesApi->post_billingcompletenesses_billingcompletenessid_billintermediately: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_completeness_id** | **str**| The ID of the billing completeness. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bill_billing_completeness_intermediately_request** | [**BillBillingCompletenessIntermediatelyRequest**](BillBillingCompletenessIntermediatelyRequest.md)| The request containing the details for intermediate billing. | [optional] 

### Return type

[**BillingCompletenessDTOApiResponseDTO**](BillingCompletenessDTOApiResponseDTO.md)

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

# **post_billingcompletenesses_billingcompletenessid_manuallyclose**
> BillingCompletenessDTOApiResponseDTO post_billingcompletenesses_billingcompletenessid_manuallyclose(billing_completeness_id, zf_tuuid, zf_ouuid)

Manually closes a specific billing completeness.

Manually closes a specific billing completeness.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.billing_completeness_dto_api_response_dto import BillingCompletenessDTOApiResponseDTO
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
    api_instance = billing_client.BillingCompletenessesApi(api_client)
    billing_completeness_id = 'billing_completeness_id_example' # str | The ID of the billing completeness.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Manually closes a specific billing completeness.
        api_response = api_instance.post_billingcompletenesses_billingcompletenessid_manuallyclose(billing_completeness_id, zf_tuuid, zf_ouuid)
        print("The response of BillingCompletenessesApi->post_billingcompletenesses_billingcompletenessid_manuallyclose:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingCompletenessesApi->post_billingcompletenesses_billingcompletenessid_manuallyclose: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_completeness_id** | **str**| The ID of the billing completeness. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**BillingCompletenessDTOApiResponseDTO**](BillingCompletenessDTOApiResponseDTO.md)

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

# **post_billingcompletenesses_billingcompletenessid_reopen**
> BillingCompletenessDTOApiResponseDTO post_billingcompletenesses_billingcompletenessid_reopen(billing_completeness_id, zf_tuuid, zf_ouuid)

Reopens a manually closed billing completeness.

Reopens a manually closed billing completeness.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.billing_completeness_dto_api_response_dto import BillingCompletenessDTOApiResponseDTO
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
    api_instance = billing_client.BillingCompletenessesApi(api_client)
    billing_completeness_id = 'billing_completeness_id_example' # str | The ID of the billing completeness.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Reopens a manually closed billing completeness.
        api_response = api_instance.post_billingcompletenesses_billingcompletenessid_reopen(billing_completeness_id, zf_tuuid, zf_ouuid)
        print("The response of BillingCompletenessesApi->post_billingcompletenesses_billingcompletenessid_reopen:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingCompletenessesApi->post_billingcompletenesses_billingcompletenessid_reopen: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_completeness_id** | **str**| The ID of the billing completeness. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**BillingCompletenessDTOApiResponseDTO**](BillingCompletenessDTOApiResponseDTO.md)

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

# **post_billingcompletenesses_billingrelationid_changenextinvoiceenddate**
> BillingCompletenessDTOApiResponseDTO post_billingcompletenesses_billingrelationid_changenextinvoiceenddate(billing_relation_id, zf_tuuid, zf_ouuid, change_next_invoice_end_date_request=change_next_invoice_end_date_request)

Changes the next invoice end date for a specific billing relation.

Changes the next invoice end date for a specific billing relation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.billing_completeness_dto_api_response_dto import BillingCompletenessDTOApiResponseDTO
from billing_client.models.change_next_invoice_end_date_request import ChangeNextInvoiceEndDateRequest
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
    api_instance = billing_client.BillingCompletenessesApi(api_client)
    billing_relation_id = 'billing_relation_id_example' # str | The ID of the billing relation.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    change_next_invoice_end_date_request = {"fromFirstOpenPeriod":true,"endDateTime":"string"} # ChangeNextInvoiceEndDateRequest | The request containing the new end date. (optional)

    try:
        # Changes the next invoice end date for a specific billing relation.
        api_response = api_instance.post_billingcompletenesses_billingrelationid_changenextinvoiceenddate(billing_relation_id, zf_tuuid, zf_ouuid, change_next_invoice_end_date_request=change_next_invoice_end_date_request)
        print("The response of BillingCompletenessesApi->post_billingcompletenesses_billingrelationid_changenextinvoiceenddate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingCompletenessesApi->post_billingcompletenesses_billingrelationid_changenextinvoiceenddate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_relation_id** | **str**| The ID of the billing relation. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **change_next_invoice_end_date_request** | [**ChangeNextInvoiceEndDateRequest**](ChangeNextInvoiceEndDateRequest.md)| The request containing the new end date. | [optional] 

### Return type

[**BillingCompletenessDTOApiResponseDTO**](BillingCompletenessDTOApiResponseDTO.md)

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

# **post_billingcompletenesses_bulk_billintermediately**
> ApiResponseDTO post_billingcompletenesses_bulk_billintermediately(zf_tuuid, zf_ouuid, bulk_bill_billing_completeness_intermediately_request=bulk_bill_billing_completeness_intermediately_request)

Bills multiple billing completenesses intermediately in bulk.

Bills multiple billing completenesses intermediately in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.api_response_dto import ApiResponseDTO
from billing_client.models.bulk_bill_billing_completeness_intermediately_request import BulkBillBillingCompletenessIntermediatelyRequest
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
    api_instance = billing_client.BillingCompletenessesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_bill_billing_completeness_intermediately_request = {"endDateTime":"string","onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"billingRelationId":"string","customerId":"string","propertyGroupIds":["string"],"contractId":"string","invoiceType":"string","status":"string","onlyOpen":true,"skipBlocked":true,"periodStartDateTime":"string","periodEndDateTime":"string","invoicingCheckpointStartDateTime":"string","invoicingCheckpointEndDateTime":"string"},"quickFilter":"string"} # BulkBillBillingCompletenessIntermediatelyRequest | The bulk request containing the details for intermediate billing. (optional)

    try:
        # Bills multiple billing completenesses intermediately in bulk.
        api_response = api_instance.post_billingcompletenesses_bulk_billintermediately(zf_tuuid, zf_ouuid, bulk_bill_billing_completeness_intermediately_request=bulk_bill_billing_completeness_intermediately_request)
        print("The response of BillingCompletenessesApi->post_billingcompletenesses_bulk_billintermediately:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingCompletenessesApi->post_billingcompletenesses_bulk_billintermediately: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_bill_billing_completeness_intermediately_request** | [**BulkBillBillingCompletenessIntermediatelyRequest**](BulkBillBillingCompletenessIntermediatelyRequest.md)| The bulk request containing the details for intermediate billing. | [optional] 

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

# **post_billingcompletenesses_bulk_manuallyclose**
> ApiResponseDTO post_billingcompletenesses_bulk_manuallyclose(zf_tuuid, zf_ouuid, bulk_manually_close_billing_completeness_request=bulk_manually_close_billing_completeness_request)

Manually closes multiple billing completenesses in bulk.

Manually closes multiple billing completenesses in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.api_response_dto import ApiResponseDTO
from billing_client.models.bulk_manually_close_billing_completeness_request import BulkManuallyCloseBillingCompletenessRequest
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
    api_instance = billing_client.BillingCompletenessesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_manually_close_billing_completeness_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"billingRelationId":"string","customerId":"string","propertyGroupIds":["string"],"contractId":"string","invoiceType":"string","status":"string","onlyOpen":true,"skipBlocked":true,"periodStartDateTime":"string","periodEndDateTime":"string","invoicingCheckpointStartDateTime":"string","invoicingCheckpointEndDateTime":"string"},"quickFilter":"string"} # BulkManuallyCloseBillingCompletenessRequest | The bulk request containing the details for manually closing billing completenesses. (optional)

    try:
        # Manually closes multiple billing completenesses in bulk.
        api_response = api_instance.post_billingcompletenesses_bulk_manuallyclose(zf_tuuid, zf_ouuid, bulk_manually_close_billing_completeness_request=bulk_manually_close_billing_completeness_request)
        print("The response of BillingCompletenessesApi->post_billingcompletenesses_bulk_manuallyclose:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingCompletenessesApi->post_billingcompletenesses_bulk_manuallyclose: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_manually_close_billing_completeness_request** | [**BulkManuallyCloseBillingCompletenessRequest**](BulkManuallyCloseBillingCompletenessRequest.md)| The bulk request containing the details for manually closing billing completenesses. | [optional] 

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

# **post_billingcompletenesses_bulk_reopen**
> ApiResponseDTO post_billingcompletenesses_bulk_reopen(zf_tuuid, zf_ouuid, bulk_reopen_billing_completeness_request=bulk_reopen_billing_completeness_request)

Reopens multiple manually closed billing completenesses in bulk.

Reopens multiple manually closed billing completenesses in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.api_response_dto import ApiResponseDTO
from billing_client.models.bulk_reopen_billing_completeness_request import BulkReopenBillingCompletenessRequest
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
    api_instance = billing_client.BillingCompletenessesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_reopen_billing_completeness_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"billingRelationId":"string","customerId":"string","propertyGroupIds":["string"],"contractId":"string","invoiceType":"string","status":"string","onlyOpen":true,"skipBlocked":true,"periodStartDateTime":"string","periodEndDateTime":"string","invoicingCheckpointStartDateTime":"string","invoicingCheckpointEndDateTime":"string"},"quickFilter":"string"} # BulkReopenBillingCompletenessRequest | The bulk request containing the details for reopening billing completenesses. (optional)

    try:
        # Reopens multiple manually closed billing completenesses in bulk.
        api_response = api_instance.post_billingcompletenesses_bulk_reopen(zf_tuuid, zf_ouuid, bulk_reopen_billing_completeness_request=bulk_reopen_billing_completeness_request)
        print("The response of BillingCompletenessesApi->post_billingcompletenesses_bulk_reopen:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingCompletenessesApi->post_billingcompletenesses_bulk_reopen: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_reopen_billing_completeness_request** | [**BulkReopenBillingCompletenessRequest**](BulkReopenBillingCompletenessRequest.md)| The bulk request containing the details for reopening billing completenesses. | [optional] 

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

# **post_billingcompletenesses_bulk_triggerbilling**
> ApiResponseDTO post_billingcompletenesses_bulk_triggerbilling(zf_tuuid, zf_ouuid, bulk_trigger_billing_completeness_request=bulk_trigger_billing_completeness_request)

Triggers billing for multiple billing completenesses in bulk.

Triggers billing for multiple billing completenesses in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.api_response_dto import ApiResponseDTO
from billing_client.models.bulk_trigger_billing_completeness_request import BulkTriggerBillingCompletenessRequest
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
    api_instance = billing_client.BillingCompletenessesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_trigger_billing_completeness_request = {"onlyAdvances":true,"recalculateIfNeeded":true,"advanceUntilDateTime":"string","onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"billingRelationId":"string","customerId":"string","propertyGroupIds":["string"],"contractId":"string","invoiceType":"string","status":"string","onlyOpen":true,"skipBlocked":true,"periodStartDateTime":"string","periodEndDateTime":"string","invoicingCheckpointStartDateTime":"string","invoicingCheckpointEndDateTime":"string"},"quickFilter":"string"} # BulkTriggerBillingCompletenessRequest | The bulk request containing the details for triggering billing. (optional)

    try:
        # Triggers billing for multiple billing completenesses in bulk.
        api_response = api_instance.post_billingcompletenesses_bulk_triggerbilling(zf_tuuid, zf_ouuid, bulk_trigger_billing_completeness_request=bulk_trigger_billing_completeness_request)
        print("The response of BillingCompletenessesApi->post_billingcompletenesses_bulk_triggerbilling:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingCompletenessesApi->post_billingcompletenesses_bulk_triggerbilling: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_trigger_billing_completeness_request** | [**BulkTriggerBillingCompletenessRequest**](BulkTriggerBillingCompletenessRequest.md)| The bulk request containing the details for triggering billing. | [optional] 

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

# **post_billingcompletenesses_filter_overviewcount**
> BillingCompletenessOverviewCountDTOApiResponseDTO post_billingcompletenesses_filter_overviewcount(zf_tuuid, zf_ouuid, get_billing_completeness_query_params=get_billing_completeness_query_params)

Retrieves the overview count of billing completeness based on the provided query parameters.

Retrieves the overview count of billing completeness based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.billing_completeness_overview_count_dto_api_response_dto import BillingCompletenessOverviewCountDTOApiResponseDTO
from billing_client.models.get_billing_completeness_query_params import GetBillingCompletenessQueryParams
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
    api_instance = billing_client.BillingCompletenessesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    get_billing_completeness_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"billingRelationId":"string","customerId":"string","propertyGroupIds":["string"],"contractId":"string","invoiceType":"string","status":"string","onlyOpen":true,"skipBlocked":true,"periodStartDateTime":"string","periodEndDateTime":"string","invoicingCheckpointStartDateTime":"string","invoicingCheckpointEndDateTime":"string"} # GetBillingCompletenessQueryParams | The query parameters for filtering invoices. (optional)

    try:
        # Retrieves the overview count of billing completeness based on the provided query parameters.
        api_response = api_instance.post_billingcompletenesses_filter_overviewcount(zf_tuuid, zf_ouuid, get_billing_completeness_query_params=get_billing_completeness_query_params)
        print("The response of BillingCompletenessesApi->post_billingcompletenesses_filter_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingCompletenessesApi->post_billingcompletenesses_filter_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **get_billing_completeness_query_params** | [**GetBillingCompletenessQueryParams**](GetBillingCompletenessQueryParams.md)| The query parameters for filtering invoices. | [optional] 

### Return type

[**BillingCompletenessOverviewCountDTOApiResponseDTO**](BillingCompletenessOverviewCountDTOApiResponseDTO.md)

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

