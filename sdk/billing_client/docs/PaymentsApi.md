# billing_client.PaymentsApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payments**](PaymentsApi.md#get_payments) | **GET** /Payments | Gets all payments with optional filtering and ordering.
[**get_payments_overviewcount**](PaymentsApi.md#get_payments_overviewcount) | **GET** /Payments/overviewcount | Gets the overview count of payments.
[**get_payments_paymentid**](PaymentsApi.md#get_payments_paymentid) | **GET** /Payments/{paymentId} | Gets a payment by its ID.
[**post_payments**](PaymentsApi.md#post_payments) | **POST** /Payments | Manually adds a payment.
[**post_payments_bulk_reverse**](PaymentsApi.md#post_payments_bulk_reverse) | **POST** /Payments/bulk/reverse | Bulk manually reverses payments.
[**post_payments_paymentid_reverse**](PaymentsApi.md#post_payments_paymentid_reverse) | **POST** /Payments/{paymentId}/reverse | Manually reverses a payment.


# **get_payments**
> PaymentDTOPagedResponseModelDTOApiResponseDTO get_payments(zf_tuuid, zf_ouuid, name=name, id=id, payment_type=payment_type, customer_id=customer_id, start_date_time=start_date_time, end_date_time=end_date_time, batch_mutation_id=batch_mutation_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, continuation_token=continuation_token)

Gets all payments with optional filtering and ordering.

Gets all payments with optional filtering and ordering.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.payment_dto_paged_response_model_dto_api_response_dto import PaymentDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.PaymentsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    payment_type = 'payment_type_example' # str |  (optional)
    customer_id = 'customer_id_example' # str |  (optional)
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    batch_mutation_id = 'batch_mutation_id_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    order_by = 'order_by_example' # str | The order by clause. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)

    try:
        # Gets all payments with optional filtering and ordering.
        api_response = api_instance.get_payments(zf_tuuid, zf_ouuid, name=name, id=id, payment_type=payment_type, customer_id=customer_id, start_date_time=start_date_time, end_date_time=end_date_time, batch_mutation_id=batch_mutation_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, continuation_token=continuation_token)
        print("The response of PaymentsApi->get_payments:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentsApi->get_payments: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **payment_type** | **str**|  | [optional] 
 **customer_id** | **str**|  | [optional] 
 **start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **batch_mutation_id** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **order_by** | **str**| The order by clause. | [optional] 
 **continuation_token** | **str**| The continuation token for pagination. | [optional] 

### Return type

[**PaymentDTOPagedResponseModelDTOApiResponseDTO**](PaymentDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_payments_overviewcount**
> PaymentOverviewCountDTOApiResponseDTO get_payments_overviewcount(zf_tuuid, zf_ouuid, payment_type=payment_type, customer_id=customer_id, start_date_time=start_date_time, end_date_time=end_date_time, batch_mutation_id=batch_mutation_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Gets the overview count of payments.

Gets the overview count of payments.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.payment_overview_count_dto_api_response_dto import PaymentOverviewCountDTOApiResponseDTO
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
    api_instance = billing_client.PaymentsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    payment_type = 'payment_type_example' # str |  (optional)
    customer_id = 'customer_id_example' # str |  (optional)
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    batch_mutation_id = 'batch_mutation_id_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Gets the overview count of payments.
        api_response = api_instance.get_payments_overviewcount(zf_tuuid, zf_ouuid, payment_type=payment_type, customer_id=customer_id, start_date_time=start_date_time, end_date_time=end_date_time, batch_mutation_id=batch_mutation_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of PaymentsApi->get_payments_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentsApi->get_payments_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **payment_type** | **str**|  | [optional] 
 **customer_id** | **str**|  | [optional] 
 **start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **batch_mutation_id** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**PaymentOverviewCountDTOApiResponseDTO**](PaymentOverviewCountDTOApiResponseDTO.md)

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

# **get_payments_paymentid**
> PaymentDTOApiResponseDTO get_payments_paymentid(payment_id, zf_tuuid, zf_ouuid)

Gets a payment by its ID.

Gets a payment by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.payment_dto_api_response_dto import PaymentDTOApiResponseDTO
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
    api_instance = billing_client.PaymentsApi(api_client)
    payment_id = 'payment_id_example' # str | The ID of the payment to retrieve.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Gets a payment by its ID.
        api_response = api_instance.get_payments_paymentid(payment_id, zf_tuuid, zf_ouuid)
        print("The response of PaymentsApi->get_payments_paymentid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentsApi->get_payments_paymentid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **str**| The ID of the payment to retrieve. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PaymentDTOApiResponseDTO**](PaymentDTOApiResponseDTO.md)

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

# **post_payments**
> PaymentDTOApiResponseDTO post_payments(zf_tuuid, zf_ouuid, manually_add_payment_request=manually_add_payment_request)

Manually adds a payment.

Manually adds a payment.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.manually_add_payment_request import ManuallyAddPaymentRequest
from billing_client.models.payment_dto_api_response_dto import PaymentDTOApiResponseDTO
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
    api_instance = billing_client.PaymentsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    manually_add_payment_request = {"customerId":"string","iban":"string","amount":0,"paymentDateTime":"string","companyBankAccountId":"string","paymentReference":"string","references":[{"transactionId":"string","referenceId":"string","referenceType":{}}],"isPaymentReferenceStructured":true,"organizationCountry":{}} # ManuallyAddPaymentRequest | The request containing payment details. (optional)

    try:
        # Manually adds a payment.
        api_response = api_instance.post_payments(zf_tuuid, zf_ouuid, manually_add_payment_request=manually_add_payment_request)
        print("The response of PaymentsApi->post_payments:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentsApi->post_payments: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **manually_add_payment_request** | [**ManuallyAddPaymentRequest**](ManuallyAddPaymentRequest.md)| The request containing payment details. | [optional] 

### Return type

[**PaymentDTOApiResponseDTO**](PaymentDTOApiResponseDTO.md)

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

# **post_payments_bulk_reverse**
> PaymentDTOApiResponseDTO post_payments_bulk_reverse(zf_tuuid, zf_ouuid, bulk_reverse_payment_request=bulk_reverse_payment_request)

Bulk manually reverses payments.

Bulk manually reverses payments.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.bulk_reverse_payment_request import BulkReversePaymentRequest
from billing_client.models.payment_dto_api_response_dto import PaymentDTOApiResponseDTO
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
    api_instance = billing_client.PaymentsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_reverse_payment_request = {"reversalAdditionalInformation":"string","onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"paymentType":"string","customerId":"string","startDateTime":"string","endDateTime":"string","batchMutationId":"string"},"quickFilter":"string"} # BulkReversePaymentRequest | The request containing bulk reversal details. (optional)

    try:
        # Bulk manually reverses payments.
        api_response = api_instance.post_payments_bulk_reverse(zf_tuuid, zf_ouuid, bulk_reverse_payment_request=bulk_reverse_payment_request)
        print("The response of PaymentsApi->post_payments_bulk_reverse:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentsApi->post_payments_bulk_reverse: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_reverse_payment_request** | [**BulkReversePaymentRequest**](BulkReversePaymentRequest.md)| The request containing bulk reversal details. | [optional] 

### Return type

[**PaymentDTOApiResponseDTO**](PaymentDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_payments_paymentid_reverse**
> PaymentDTOApiResponseDTO post_payments_paymentid_reverse(payment_id, zf_tuuid, zf_ouuid, reverse_payment_request=reverse_payment_request)

Manually reverses a payment.

Manually reverses a payment.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.payment_dto_api_response_dto import PaymentDTOApiResponseDTO
from billing_client.models.reverse_payment_request import ReversePaymentRequest
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
    api_instance = billing_client.PaymentsApi(api_client)
    payment_id = 'payment_id_example' # str | The ID of the payment to reverse.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    reverse_payment_request = {"reversalAdditionalInformation":"string"} # ReversePaymentRequest | The request containing reversal details. (optional)

    try:
        # Manually reverses a payment.
        api_response = api_instance.post_payments_paymentid_reverse(payment_id, zf_tuuid, zf_ouuid, reverse_payment_request=reverse_payment_request)
        print("The response of PaymentsApi->post_payments_paymentid_reverse:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentsApi->post_payments_paymentid_reverse: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **payment_id** | **str**| The ID of the payment to reverse. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **reverse_payment_request** | [**ReversePaymentRequest**](ReversePaymentRequest.md)| The request containing reversal details. | [optional] 

### Return type

[**PaymentDTOApiResponseDTO**](PaymentDTOApiResponseDTO.md)

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

