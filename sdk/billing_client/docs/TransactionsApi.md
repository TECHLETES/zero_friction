# billing_client.TransactionsApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_transactions**](TransactionsApi.md#get_transactions) | **GET** /Transactions | Gets all transactions.
[**get_transactions_c_customeruuid**](TransactionsApi.md#get_transactions_c_customeruuid) | **GET** /Transactions/c/{customeruuid} | Gets all transactions for a specific customer.
[**get_transactions_c_customeruuid_latest**](TransactionsApi.md#get_transactions_c_customeruuid_latest) | **GET** /Transactions/c/{customeruuid}/latest | Gets the latest transactions for a specific customer.
[**get_transactions_incomingmutation_incomingmutationid**](TransactionsApi.md#get_transactions_incomingmutation_incomingmutationid) | **GET** /Transactions/incomingMutation/{incomingMutationId} | Gets all transactions for a specific incoming mutation.
[**get_transactions_outgoingmutation_outgoingmutationid**](TransactionsApi.md#get_transactions_outgoingmutation_outgoingmutationid) | **GET** /Transactions/outgoingMutation/{outgoingMutationId} | Gets all transactions for a specific outgoing mutation.
[**get_transactions_overviewcount**](TransactionsApi.md#get_transactions_overviewcount) | **GET** /Transactions/overviewcount | Gets the overview count of transactions.
[**get_transactions_transactionuuid**](TransactionsApi.md#get_transactions_transactionuuid) | **GET** /Transactions/{transactionuuid} | Gets a specific transaction by its UUID.
[**get_transactions_transactionuuid_settledwith**](TransactionsApi.md#get_transactions_transactionuuid_settledwith) | **GET** /Transactions/{transactionuuid}/settledwith | Gets the transactions settled with a specific source transaction.
[**post_transactions_c_customeruuid_runsettlement**](TransactionsApi.md#post_transactions_c_customeruuid_runsettlement) | **POST** /Transactions/c/{customeruuid}/runsettlement | Runs settlement for a specific customer.
[**post_transactions_transactionuuid_settle**](TransactionsApi.md#post_transactions_transactionuuid_settle) | **POST** /Transactions/{transactionuuid}/settle | Settles transactions for a specific transaction UUID.
[**post_transactions_transactionuuid_settle_settlementtransactionid**](TransactionsApi.md#post_transactions_transactionuuid_settle_settlementtransactionid) | **POST** /Transactions/{transactionuuid}/settle/{settlementTransactionId} | Settles a single transaction for a specific transaction UUID.
[**post_transactions_transactionuuid_undo**](TransactionsApi.md#post_transactions_transactionuuid_undo) | **POST** /Transactions/{transactionuuid}/undo | Undoes all settlements of a specific transaction.
[**post_transactions_transactionuuid_undo_settlementtransactionid**](TransactionsApi.md#post_transactions_transactionuuid_undo_settlementtransactionid) | **POST** /Transactions/{transactionuuid}/undo/{settlementTransactionId} | Undoes a single settlement of a specific transaction.


# **get_transactions**
> TransactionDTOPagedResponseModelDTOApiResponseDTO get_transactions(zf_tuuid, zf_ouuid, customeruuid=customeruuid, reference_date=reference_date, period_start_date=period_start_date, period_end_date=period_end_date, created_start_date=created_start_date, created_end_date=created_end_date, hide_credits=hide_credits, only_overdue=only_overdue, only_open=only_open, property_group_id=property_group_id, company_bank_account_id=company_bank_account_id, amount_sign=amount_sign, only_count=only_count, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, name=name, id=id, continuation_token=continuation_token)

Gets all transactions.

Gets all transactions.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.transaction_dto_paged_response_model_dto_api_response_dto import TransactionDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.TransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    customeruuid = 'customeruuid_example' # str |  (optional)
    reference_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    period_start_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    period_end_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    created_start_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    created_end_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    hide_credits = True # bool |  (optional)
    only_overdue = True # bool |  (optional)
    only_open = True # bool |  (optional)
    property_group_id = 'property_group_id_example' # str |  (optional)
    company_bank_account_id = 'company_bank_account_id_example' # str |  (optional)
    amount_sign = 'amount_sign_example' # str |  (optional)
    only_count = True # bool |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    order_by = 'order_by_example' # str | The order by parameter. (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token. (optional)

    try:
        # Gets all transactions.
        api_response = api_instance.get_transactions(zf_tuuid, zf_ouuid, customeruuid=customeruuid, reference_date=reference_date, period_start_date=period_start_date, period_end_date=period_end_date, created_start_date=created_start_date, created_end_date=created_end_date, hide_credits=hide_credits, only_overdue=only_overdue, only_open=only_open, property_group_id=property_group_id, company_bank_account_id=company_bank_account_id, amount_sign=amount_sign, only_count=only_count, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, name=name, id=id, continuation_token=continuation_token)
        print("The response of TransactionsApi->get_transactions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TransactionsApi->get_transactions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **customeruuid** | **str**|  | [optional] 
 **reference_date** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **period_start_date** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **period_end_date** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **created_start_date** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **created_end_date** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **hide_credits** | **bool**|  | [optional] 
 **only_overdue** | **bool**|  | [optional] 
 **only_open** | **bool**|  | [optional] 
 **property_group_id** | **str**|  | [optional] 
 **company_bank_account_id** | **str**|  | [optional] 
 **amount_sign** | **str**|  | [optional] 
 **only_count** | **bool**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **order_by** | **str**| The order by parameter. | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **continuation_token** | **str**| The continuation token. | [optional] 

### Return type

[**TransactionDTOPagedResponseModelDTOApiResponseDTO**](TransactionDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_transactions_c_customeruuid**
> TransactionDTOPagedResponseModelDTOApiResponseDTO get_transactions_c_customeruuid(customeruuid, zf_tuuid, zf_ouuid, name=name, id=id, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)

Gets all transactions for a specific customer.

Gets all transactions for a specific customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.transaction_dto_paged_response_model_dto_api_response_dto import TransactionDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.TransactionsApi(api_client)
    customeruuid = 'customeruuid_example' # str | The customer UUID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    flex_search = 'flex_search_example' # str | The flex search parameter. (optional)
    order_by = 'order_by_example' # str | The order by parameter. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token. (optional)

    try:
        # Gets all transactions for a specific customer.
        api_response = api_instance.get_transactions_c_customeruuid(customeruuid, zf_tuuid, zf_ouuid, name=name, id=id, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)
        print("The response of TransactionsApi->get_transactions_c_customeruuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TransactionsApi->get_transactions_c_customeruuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The customer UUID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **flex_search** | **str**| The flex search parameter. | [optional] 
 **order_by** | **str**| The order by parameter. | [optional] 
 **continuation_token** | **str**| The continuation token. | [optional] 

### Return type

[**TransactionDTOPagedResponseModelDTOApiResponseDTO**](TransactionDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_transactions_c_customeruuid_latest**
> LatestCustomerTransactionsResponseDTOApiResponseDTO get_transactions_c_customeruuid_latest(customeruuid, zf_tuuid, zf_ouuid)

Gets the latest transactions for a specific customer.

Gets the latest transactions for a specific customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.latest_customer_transactions_response_dto_api_response_dto import LatestCustomerTransactionsResponseDTOApiResponseDTO
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
    api_instance = billing_client.TransactionsApi(api_client)
    customeruuid = 'customeruuid_example' # str | The customer UUID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Gets the latest transactions for a specific customer.
        api_response = api_instance.get_transactions_c_customeruuid_latest(customeruuid, zf_tuuid, zf_ouuid)
        print("The response of TransactionsApi->get_transactions_c_customeruuid_latest:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TransactionsApi->get_transactions_c_customeruuid_latest: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The customer UUID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**LatestCustomerTransactionsResponseDTOApiResponseDTO**](LatestCustomerTransactionsResponseDTOApiResponseDTO.md)

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

# **get_transactions_incomingmutation_incomingmutationid**
> TransactionDTOPagedResponseModelDTOApiResponseDTO get_transactions_incomingmutation_incomingmutationid(incoming_mutation_id, zf_tuuid, zf_ouuid, flex_search=flex_search, continuation_token=continuation_token)

Gets all transactions for a specific incoming mutation.

Gets all transactions for a specific incoming mutation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.transaction_dto_paged_response_model_dto_api_response_dto import TransactionDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.TransactionsApi(api_client)
    incoming_mutation_id = 'incoming_mutation_id_example' # str | The incoming mutation ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    flex_search = 'flex_search_example' # str | The flex search parameter. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token. (optional)

    try:
        # Gets all transactions for a specific incoming mutation.
        api_response = api_instance.get_transactions_incomingmutation_incomingmutationid(incoming_mutation_id, zf_tuuid, zf_ouuid, flex_search=flex_search, continuation_token=continuation_token)
        print("The response of TransactionsApi->get_transactions_incomingmutation_incomingmutationid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TransactionsApi->get_transactions_incomingmutation_incomingmutationid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_mutation_id** | **str**| The incoming mutation ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **flex_search** | **str**| The flex search parameter. | [optional] 
 **continuation_token** | **str**| The continuation token. | [optional] 

### Return type

[**TransactionDTOPagedResponseModelDTOApiResponseDTO**](TransactionDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_transactions_outgoingmutation_outgoingmutationid**
> TransactionDTOPagedResponseModelDTOApiResponseDTO get_transactions_outgoingmutation_outgoingmutationid(outgoing_mutation_id, zf_tuuid, zf_ouuid, flex_search=flex_search, continuation_token=continuation_token)

Gets all transactions for a specific outgoing mutation.

Gets all transactions for a specific outgoing mutation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.transaction_dto_paged_response_model_dto_api_response_dto import TransactionDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.TransactionsApi(api_client)
    outgoing_mutation_id = 'outgoing_mutation_id_example' # str | The outgoing mutation ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    flex_search = 'flex_search_example' # str | The flex search parameter. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token. (optional)

    try:
        # Gets all transactions for a specific outgoing mutation.
        api_response = api_instance.get_transactions_outgoingmutation_outgoingmutationid(outgoing_mutation_id, zf_tuuid, zf_ouuid, flex_search=flex_search, continuation_token=continuation_token)
        print("The response of TransactionsApi->get_transactions_outgoingmutation_outgoingmutationid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TransactionsApi->get_transactions_outgoingmutation_outgoingmutationid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **outgoing_mutation_id** | **str**| The outgoing mutation ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **flex_search** | **str**| The flex search parameter. | [optional] 
 **continuation_token** | **str**| The continuation token. | [optional] 

### Return type

[**TransactionDTOPagedResponseModelDTOApiResponseDTO**](TransactionDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_transactions_overviewcount**
> TransactionOverviewCountDTOApiResponseDTO get_transactions_overviewcount(zf_tuuid, zf_ouuid, customeruuid=customeruuid, reference_date=reference_date, period_start_date=period_start_date, period_end_date=period_end_date, created_start_date=created_start_date, created_end_date=created_end_date, hide_credits=hide_credits, only_overdue=only_overdue, only_open=only_open, property_group_id=property_group_id, company_bank_account_id=company_bank_account_id, amount_sign=amount_sign, only_count=only_count, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Gets the overview count of transactions.

Gets the overview count of transactions.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.transaction_overview_count_dto_api_response_dto import TransactionOverviewCountDTOApiResponseDTO
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
    api_instance = billing_client.TransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    customeruuid = 'customeruuid_example' # str |  (optional)
    reference_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    period_start_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    period_end_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    created_start_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    created_end_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    hide_credits = True # bool |  (optional)
    only_overdue = True # bool |  (optional)
    only_open = True # bool |  (optional)
    property_group_id = 'property_group_id_example' # str |  (optional)
    company_bank_account_id = 'company_bank_account_id_example' # str |  (optional)
    amount_sign = 'amount_sign_example' # str |  (optional)
    only_count = True # bool |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Gets the overview count of transactions.
        api_response = api_instance.get_transactions_overviewcount(zf_tuuid, zf_ouuid, customeruuid=customeruuid, reference_date=reference_date, period_start_date=period_start_date, period_end_date=period_end_date, created_start_date=created_start_date, created_end_date=created_end_date, hide_credits=hide_credits, only_overdue=only_overdue, only_open=only_open, property_group_id=property_group_id, company_bank_account_id=company_bank_account_id, amount_sign=amount_sign, only_count=only_count, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of TransactionsApi->get_transactions_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TransactionsApi->get_transactions_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **customeruuid** | **str**|  | [optional] 
 **reference_date** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **period_start_date** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **period_end_date** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **created_start_date** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **created_end_date** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **hide_credits** | **bool**|  | [optional] 
 **only_overdue** | **bool**|  | [optional] 
 **only_open** | **bool**|  | [optional] 
 **property_group_id** | **str**|  | [optional] 
 **company_bank_account_id** | **str**|  | [optional] 
 **amount_sign** | **str**|  | [optional] 
 **only_count** | **bool**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**TransactionOverviewCountDTOApiResponseDTO**](TransactionOverviewCountDTOApiResponseDTO.md)

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

# **get_transactions_transactionuuid**
> TransactionDTOApiResponseDTO get_transactions_transactionuuid(transactionuuid, zf_tuuid, zf_ouuid)

Gets a specific transaction by its UUID.

Gets a specific transaction by its UUID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.transaction_dto_api_response_dto import TransactionDTOApiResponseDTO
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
    api_instance = billing_client.TransactionsApi(api_client)
    transactionuuid = 'transactionuuid_example' # str | The transaction UUID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Gets a specific transaction by its UUID.
        api_response = api_instance.get_transactions_transactionuuid(transactionuuid, zf_tuuid, zf_ouuid)
        print("The response of TransactionsApi->get_transactions_transactionuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TransactionsApi->get_transactions_transactionuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionuuid** | **str**| The transaction UUID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**TransactionDTOApiResponseDTO**](TransactionDTOApiResponseDTO.md)

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

# **get_transactions_transactionuuid_settledwith**
> TransactionDTOPagedResponseModelDTOApiResponseDTO get_transactions_transactionuuid_settledwith(transactionuuid, zf_tuuid, zf_ouuid, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)

Gets the transactions settled with a specific source transaction.

Gets the transactions settled with a specific source transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.transaction_dto_paged_response_model_dto_api_response_dto import TransactionDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.TransactionsApi(api_client)
    transactionuuid = 'transactionuuid_example' # str | The source transaction UUID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    flex_search = 'flex_search_example' # str | The flex search parameter. (optional)
    order_by = 'order_by_example' # str | The order by parameter. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token. (optional)

    try:
        # Gets the transactions settled with a specific source transaction.
        api_response = api_instance.get_transactions_transactionuuid_settledwith(transactionuuid, zf_tuuid, zf_ouuid, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)
        print("The response of TransactionsApi->get_transactions_transactionuuid_settledwith:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TransactionsApi->get_transactions_transactionuuid_settledwith: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionuuid** | **str**| The source transaction UUID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **flex_search** | **str**| The flex search parameter. | [optional] 
 **order_by** | **str**| The order by parameter. | [optional] 
 **continuation_token** | **str**| The continuation token. | [optional] 

### Return type

[**TransactionDTOPagedResponseModelDTOApiResponseDTO**](TransactionDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **post_transactions_c_customeruuid_runsettlement**
> TransactionDTOListApiResponseDTO post_transactions_c_customeruuid_runsettlement(customeruuid, zf_tuuid, zf_ouuid)

Runs settlement for a specific customer.

Runs settlement for a specific customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.transaction_dto_list_api_response_dto import TransactionDTOListApiResponseDTO
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
    api_instance = billing_client.TransactionsApi(api_client)
    customeruuid = 'customeruuid_example' # str | The customer UUID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Runs settlement for a specific customer.
        api_response = api_instance.post_transactions_c_customeruuid_runsettlement(customeruuid, zf_tuuid, zf_ouuid)
        print("The response of TransactionsApi->post_transactions_c_customeruuid_runsettlement:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TransactionsApi->post_transactions_c_customeruuid_runsettlement: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The customer UUID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**TransactionDTOListApiResponseDTO**](TransactionDTOListApiResponseDTO.md)

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

# **post_transactions_transactionuuid_settle**
> TransactionDTOApiResponseDTO post_transactions_transactionuuid_settle(transactionuuid, zf_tuuid, zf_ouuid, settle_transactions_request=settle_transactions_request)

Settles transactions for a specific transaction UUID.

Settles transactions for a specific transaction UUID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.settle_transactions_request import SettleTransactionsRequest
from billing_client.models.transaction_dto_api_response_dto import TransactionDTOApiResponseDTO
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
    api_instance = billing_client.TransactionsApi(api_client)
    transactionuuid = 'transactionuuid_example' # str | The transaction UUID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    settle_transactions_request = {"transactionIds":["string"]} # SettleTransactionsRequest | The settle transactions request. (optional)

    try:
        # Settles transactions for a specific transaction UUID.
        api_response = api_instance.post_transactions_transactionuuid_settle(transactionuuid, zf_tuuid, zf_ouuid, settle_transactions_request=settle_transactions_request)
        print("The response of TransactionsApi->post_transactions_transactionuuid_settle:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TransactionsApi->post_transactions_transactionuuid_settle: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionuuid** | **str**| The transaction UUID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **settle_transactions_request** | [**SettleTransactionsRequest**](SettleTransactionsRequest.md)| The settle transactions request. | [optional] 

### Return type

[**TransactionDTOApiResponseDTO**](TransactionDTOApiResponseDTO.md)

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

# **post_transactions_transactionuuid_settle_settlementtransactionid**
> TransactionDTOApiResponseDTO post_transactions_transactionuuid_settle_settlementtransactionid(transactionuuid, settlement_transaction_id, zf_tuuid, zf_ouuid)

Settles a single transaction for a specific transaction UUID.

Settles a single transaction for a specific transaction UUID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.transaction_dto_api_response_dto import TransactionDTOApiResponseDTO
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
    api_instance = billing_client.TransactionsApi(api_client)
    transactionuuid = 'transactionuuid_example' # str | The transaction UUID.
    settlement_transaction_id = 'settlement_transaction_id_example' # str | The settlement transaction ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Settles a single transaction for a specific transaction UUID.
        api_response = api_instance.post_transactions_transactionuuid_settle_settlementtransactionid(transactionuuid, settlement_transaction_id, zf_tuuid, zf_ouuid)
        print("The response of TransactionsApi->post_transactions_transactionuuid_settle_settlementtransactionid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TransactionsApi->post_transactions_transactionuuid_settle_settlementtransactionid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionuuid** | **str**| The transaction UUID. | 
 **settlement_transaction_id** | **str**| The settlement transaction ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**TransactionDTOApiResponseDTO**](TransactionDTOApiResponseDTO.md)

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

# **post_transactions_transactionuuid_undo**
> TransactionDTOApiResponseDTO post_transactions_transactionuuid_undo(transactionuuid, zf_tuuid, zf_ouuid)

Undoes all settlements of a specific transaction.

Undoes all settlements of a specific transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.transaction_dto_api_response_dto import TransactionDTOApiResponseDTO
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
    api_instance = billing_client.TransactionsApi(api_client)
    transactionuuid = 'transactionuuid_example' # str | The transaction UUID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Undoes all settlements of a specific transaction.
        api_response = api_instance.post_transactions_transactionuuid_undo(transactionuuid, zf_tuuid, zf_ouuid)
        print("The response of TransactionsApi->post_transactions_transactionuuid_undo:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TransactionsApi->post_transactions_transactionuuid_undo: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionuuid** | **str**| The transaction UUID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**TransactionDTOApiResponseDTO**](TransactionDTOApiResponseDTO.md)

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

# **post_transactions_transactionuuid_undo_settlementtransactionid**
> TransactionDTOApiResponseDTO post_transactions_transactionuuid_undo_settlementtransactionid(transactionuuid, settlement_transaction_id, zf_tuuid, zf_ouuid)

Undoes a single settlement of a specific transaction.

Undoes a single settlement of a specific transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.transaction_dto_api_response_dto import TransactionDTOApiResponseDTO
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
    api_instance = billing_client.TransactionsApi(api_client)
    transactionuuid = 'transactionuuid_example' # str | The transaction UUID.
    settlement_transaction_id = 'settlement_transaction_id_example' # str | The settlement transaction ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Undoes a single settlement of a specific transaction.
        api_response = api_instance.post_transactions_transactionuuid_undo_settlementtransactionid(transactionuuid, settlement_transaction_id, zf_tuuid, zf_ouuid)
        print("The response of TransactionsApi->post_transactions_transactionuuid_undo_settlementtransactionid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TransactionsApi->post_transactions_transactionuuid_undo_settlementtransactionid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionuuid** | **str**| The transaction UUID. | 
 **settlement_transaction_id** | **str**| The settlement transaction ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**TransactionDTOApiResponseDTO**](TransactionDTOApiResponseDTO.md)

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

