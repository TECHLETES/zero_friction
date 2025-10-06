# billing_client.CustAgingApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_custaging**](CustAgingApi.md#get_custaging) | **GET** /CustAging | Retrieves all customer aging headers based on the provided query parameters.
[**get_custaging_customerid**](CustAgingApi.md#get_custaging_customerid) | **GET** /CustAging/{customerId} | Retrieves customer aging lines for a specific customer.
[**get_custaging_detailed**](CustAgingApi.md#get_custaging_detailed) | **GET** /CustAging/detailed | Retrieves detailed customer aging lines based on the provided query parameters.
[**get_custaging_overviewcount**](CustAgingApi.md#get_custaging_overviewcount) | **GET** /CustAging/overviewcount | Retrieves the overview count of customer aging lines based on the provided query parameters.


# **get_custaging**
> CustAgingHeaderDTOPagedResponseModelDTOApiResponseDTO get_custaging(zf_tuuid, zf_ouuid, bucket_type=bucket_type, hide_credits=hide_credits, only_overdue=only_overdue, property_group_ids=property_group_ids, order_by=order_by, reference_date=reference_date, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, continuation_token=continuation_token)

Retrieves all customer aging headers based on the provided query parameters.

Retrieves all customer aging headers based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.cust_aging_header_dto_paged_response_model_dto_api_response_dto import CustAgingHeaderDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.CustAgingApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bucket_type = ['bucket_type_example'] # List[str] |  (optional)
    hide_credits = True # bool |  (optional)
    only_overdue = True # bool |  (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] |  (optional)
    order_by = 'order_by_example' # str |  (optional)
    reference_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)

    try:
        # Retrieves all customer aging headers based on the provided query parameters.
        api_response = api_instance.get_custaging(zf_tuuid, zf_ouuid, bucket_type=bucket_type, hide_credits=hide_credits, only_overdue=only_overdue, property_group_ids=property_group_ids, order_by=order_by, reference_date=reference_date, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, continuation_token=continuation_token)
        print("The response of CustAgingApi->get_custaging:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustAgingApi->get_custaging: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bucket_type** | [**List[str]**](str.md)|  | [optional] 
 **hide_credits** | **bool**|  | [optional] 
 **only_overdue** | **bool**|  | [optional] 
 **property_group_ids** | [**List[str]**](str.md)|  | [optional] 
 **order_by** | **str**|  | [optional] 
 **reference_date** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **continuation_token** | **str**| The continuation token for pagination. | [optional] 

### Return type

[**CustAgingHeaderDTOPagedResponseModelDTOApiResponseDTO**](CustAgingHeaderDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_custaging_customerid**
> CustAgingLineDTOPagedResponseModelDTOApiResponseDTO get_custaging_customerid(customer_id, zf_tuuid, zf_ouuid, continuation_token=continuation_token)

Retrieves customer aging lines for a specific customer.

Retrieves customer aging lines for a specific customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.cust_aging_line_dto_paged_response_model_dto_api_response_dto import CustAgingLineDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.CustAgingApi(api_client)
    customer_id = 'customer_id_example' # str | The ID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)

    try:
        # Retrieves customer aging lines for a specific customer.
        api_response = api_instance.get_custaging_customerid(customer_id, zf_tuuid, zf_ouuid, continuation_token=continuation_token)
        print("The response of CustAgingApi->get_custaging_customerid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustAgingApi->get_custaging_customerid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **continuation_token** | **str**| The continuation token for pagination. | [optional] 

### Return type

[**CustAgingLineDTOPagedResponseModelDTOApiResponseDTO**](CustAgingLineDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_custaging_detailed**
> CustAgingLineDTOPagedResponseModelDTOApiResponseDTO get_custaging_detailed(zf_tuuid, zf_ouuid, bucket_type=bucket_type, hide_credits=hide_credits, only_overdue=only_overdue, property_group_ids=property_group_ids, order_by=order_by, reference_date=reference_date, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, continuation_token=continuation_token)

Retrieves detailed customer aging lines based on the provided query parameters.

Retrieves detailed customer aging lines based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.cust_aging_line_dto_paged_response_model_dto_api_response_dto import CustAgingLineDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.CustAgingApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bucket_type = ['bucket_type_example'] # List[str] |  (optional)
    hide_credits = True # bool |  (optional)
    only_overdue = True # bool |  (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] |  (optional)
    order_by = 'order_by_example' # str |  (optional)
    reference_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)

    try:
        # Retrieves detailed customer aging lines based on the provided query parameters.
        api_response = api_instance.get_custaging_detailed(zf_tuuid, zf_ouuid, bucket_type=bucket_type, hide_credits=hide_credits, only_overdue=only_overdue, property_group_ids=property_group_ids, order_by=order_by, reference_date=reference_date, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, continuation_token=continuation_token)
        print("The response of CustAgingApi->get_custaging_detailed:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustAgingApi->get_custaging_detailed: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bucket_type** | [**List[str]**](str.md)|  | [optional] 
 **hide_credits** | **bool**|  | [optional] 
 **only_overdue** | **bool**|  | [optional] 
 **property_group_ids** | [**List[str]**](str.md)|  | [optional] 
 **order_by** | **str**|  | [optional] 
 **reference_date** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **continuation_token** | **str**| The continuation token for pagination. | [optional] 

### Return type

[**CustAgingLineDTOPagedResponseModelDTOApiResponseDTO**](CustAgingLineDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_custaging_overviewcount**
> CustAgingOverviewCountResponseDTOApiResponseDTO get_custaging_overviewcount(zf_tuuid, zf_ouuid, bucket_type=bucket_type, hide_credits=hide_credits, only_overdue=only_overdue, property_group_ids=property_group_ids, order_by=order_by, reference_date=reference_date, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Retrieves the overview count of customer aging lines based on the provided query parameters.

Retrieves the overview count of customer aging lines based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.cust_aging_overview_count_response_dto_api_response_dto import CustAgingOverviewCountResponseDTOApiResponseDTO
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
    api_instance = billing_client.CustAgingApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bucket_type = ['bucket_type_example'] # List[str] |  (optional)
    hide_credits = True # bool |  (optional)
    only_overdue = True # bool |  (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] |  (optional)
    order_by = 'order_by_example' # str |  (optional)
    reference_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Retrieves the overview count of customer aging lines based on the provided query parameters.
        api_response = api_instance.get_custaging_overviewcount(zf_tuuid, zf_ouuid, bucket_type=bucket_type, hide_credits=hide_credits, only_overdue=only_overdue, property_group_ids=property_group_ids, order_by=order_by, reference_date=reference_date, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of CustAgingApi->get_custaging_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustAgingApi->get_custaging_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bucket_type** | [**List[str]**](str.md)|  | [optional] 
 **hide_credits** | **bool**|  | [optional] 
 **only_overdue** | **bool**|  | [optional] 
 **property_group_ids** | [**List[str]**](str.md)|  | [optional] 
 **order_by** | **str**|  | [optional] 
 **reference_date** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**CustAgingOverviewCountResponseDTOApiResponseDTO**](CustAgingOverviewCountResponseDTOApiResponseDTO.md)

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

