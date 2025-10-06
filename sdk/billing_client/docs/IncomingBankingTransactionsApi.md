# billing_client.IncomingBankingTransactionsApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_incomingbankingtransactions_incomingbankingtransactionid**](IncomingBankingTransactionsApi.md#delete_incomingbankingtransactions_incomingbankingtransactionid) | **DELETE** /IncomingBankingTransactions/{incomingBankingTransactionId} | Deletes a specific incoming banking transaction by its ID.
[**get_incomingbankingtransactions**](IncomingBankingTransactionsApi.md#get_incomingbankingtransactions) | **GET** /IncomingBankingTransactions | Retrieves all incoming banking transactions based on the provided query parameters and filters.
[**get_incomingbankingtransactions_incomingbankingtransactionid**](IncomingBankingTransactionsApi.md#get_incomingbankingtransactions_incomingbankingtransactionid) | **GET** /IncomingBankingTransactions/{incomingBankingTransactionId} | Retrieves a specific incoming banking transaction by its ID.
[**get_incomingbankingtransactions_incomingbankingtransactionid_insights**](IncomingBankingTransactionsApi.md#get_incomingbankingtransactions_incomingbankingtransactionid_insights) | **GET** /IncomingBankingTransactions/{incomingBankingTransactionId}/insights | Retrieves insights for a specific incoming banking transaction.
[**get_incomingbankingtransactions_incomingbankingtransactionid_mutations**](IncomingBankingTransactionsApi.md#get_incomingbankingtransactions_incomingbankingtransactionid_mutations) | **GET** /IncomingBankingTransactions/{incomingBankingTransactionId}/mutations | Retrieves all incoming mutations for a specific incoming banking transaction.
[**get_incomingbankingtransactions_incomingbankingtransactionid_mutations_overv**](IncomingBankingTransactionsApi.md#get_incomingbankingtransactions_incomingbankingtransactionid_mutations_overv) | **GET** /IncomingBankingTransactions/{incomingBankingTransactionId}/mutations/overviewcount | Retrieves an overview count of incoming mutations for a specific incoming banking transaction.
[**get_incomingbankingtransactions_insights_lastupdated**](IncomingBankingTransactionsApi.md#get_incomingbankingtransactions_insights_lastupdated) | **GET** /IncomingBankingTransactions/insights/lastupdated | Retrieves last updated insights about the incoming banking transactions, grouped by company bank account
[**get_incomingbankingtransactions_overviewcount**](IncomingBankingTransactionsApi.md#get_incomingbankingtransactions_overviewcount) | **GET** /IncomingBankingTransactions/overviewcount | Retrieves an overview count of all incoming banking transactions based on the provided query parameters.
[**post_incomingbankingtransactions_bulk_delete**](IncomingBankingTransactionsApi.md#post_incomingbankingtransactions_bulk_delete) | **POST** /IncomingBankingTransactions/bulk/delete | Bulk deletes incoming banking transactions based on the provided request.
[**post_incomingbankingtransactions_bulk_process**](IncomingBankingTransactionsApi.md#post_incomingbankingtransactions_bulk_process) | **POST** /IncomingBankingTransactions/bulk/process | Bulk processes incoming banking transactions based on the provided request.
[**post_incomingbankingtransactions_export**](IncomingBankingTransactionsApi.md#post_incomingbankingtransactions_export) | **POST** /IncomingBankingTransactions/export | Exports incoming banking transactions based on the provided request.
[**post_incomingbankingtransactions_incomingbankingtransactionid_mutations_igno**](IncomingBankingTransactionsApi.md#post_incomingbankingtransactions_incomingbankingtransactionid_mutations_igno) | **POST** /IncomingBankingTransactions/{incomingBankingTransactionId}/mutations/ignore | Ignores multiple incoming mutations for a specific incoming banking transaction.
[**post_incomingbankingtransactions_incomingbankingtransactionid_process**](IncomingBankingTransactionsApi.md#post_incomingbankingtransactions_incomingbankingtransactionid_process) | **POST** /IncomingBankingTransactions/{incomingBankingTransactionId}/process | Processes a specific incoming banking transaction by its ID.
[**post_incomingbankingtransactions_incomingbankingtransactionid_updateibanconf**](IncomingBankingTransactionsApi.md#post_incomingbankingtransactions_incomingbankingtransactionid_updateibanconf) | **POST** /IncomingBankingTransactions/{incomingBankingTransactionId}/updateIbanConfirmation | Updates the IBAN confirmation of an Iban used in a specific incoming banking transaction.


# **delete_incomingbankingtransactions_incomingbankingtransactionid**
> BooleanApiResponseDTO delete_incomingbankingtransactions_incomingbankingtransactionid(incoming_banking_transaction_id, zf_tuuid, zf_ouuid)

Deletes a specific incoming banking transaction by its ID.

Deletes a specific incoming banking transaction by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.boolean_api_response_dto import BooleanApiResponseDTO
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
    api_instance = billing_client.IncomingBankingTransactionsApi(api_client)
    incoming_banking_transaction_id = 'incoming_banking_transaction_id_example' # str | ID of the incoming banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes a specific incoming banking transaction by its ID.
        api_response = api_instance.delete_incomingbankingtransactions_incomingbankingtransactionid(incoming_banking_transaction_id, zf_tuuid, zf_ouuid)
        print("The response of IncomingBankingTransactionsApi->delete_incomingbankingtransactions_incomingbankingtransactionid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingBankingTransactionsApi->delete_incomingbankingtransactions_incomingbankingtransactionid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_banking_transaction_id** | **str**| ID of the incoming banking transaction. | 
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
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_incomingbankingtransactions**
> IncomingBankingTransactionDTOPagedResponseModelDTOApiResponseDTO get_incomingbankingtransactions(zf_tuuid, zf_ouuid, company_bank_account_id=company_bank_account_id, mutation_date_time_start=mutation_date_time_start, mutation_date_time_end=mutation_date_time_end, opening_balance_date_start=opening_balance_date_start, opening_balance_date_end=opening_balance_date_end, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

Retrieves all incoming banking transactions based on the provided query parameters and filters.

Retrieves all incoming banking transactions based on the provided query parameters and filters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_banking_transaction_dto_paged_response_model_dto_api_response_dto import IncomingBankingTransactionDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.IncomingBankingTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    company_bank_account_id = 'company_bank_account_id_example' # str |  (optional)
    mutation_date_time_start = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    mutation_date_time_end = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    opening_balance_date_start = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    opening_balance_date_end = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    order_by = 'order_by_example' # str | Order by clause for sorting incoming banking transactions. (optional)
    continuation_token = 'continuation_token_example' # str | Continuation token for pagination. (optional)

    try:
        # Retrieves all incoming banking transactions based on the provided query parameters and filters.
        api_response = api_instance.get_incomingbankingtransactions(zf_tuuid, zf_ouuid, company_bank_account_id=company_bank_account_id, mutation_date_time_start=mutation_date_time_start, mutation_date_time_end=mutation_date_time_end, opening_balance_date_start=opening_balance_date_start, opening_balance_date_end=opening_balance_date_end, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of IncomingBankingTransactionsApi->get_incomingbankingtransactions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingBankingTransactionsApi->get_incomingbankingtransactions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **company_bank_account_id** | **str**|  | [optional] 
 **mutation_date_time_start** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **mutation_date_time_end** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **opening_balance_date_start** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **opening_balance_date_end** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **order_by** | **str**| Order by clause for sorting incoming banking transactions. | [optional] 
 **continuation_token** | **str**| Continuation token for pagination. | [optional] 

### Return type

[**IncomingBankingTransactionDTOPagedResponseModelDTOApiResponseDTO**](IncomingBankingTransactionDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_incomingbankingtransactions_incomingbankingtransactionid**
> IncomingBankingTransactionDTOApiResponseDTO get_incomingbankingtransactions_incomingbankingtransactionid(incoming_banking_transaction_id, zf_tuuid, zf_ouuid)

Retrieves a specific incoming banking transaction by its ID.

Retrieves a specific incoming banking transaction by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_banking_transaction_dto_api_response_dto import IncomingBankingTransactionDTOApiResponseDTO
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
    api_instance = billing_client.IncomingBankingTransactionsApi(api_client)
    incoming_banking_transaction_id = 'incoming_banking_transaction_id_example' # str | ID of the incoming banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific incoming banking transaction by its ID.
        api_response = api_instance.get_incomingbankingtransactions_incomingbankingtransactionid(incoming_banking_transaction_id, zf_tuuid, zf_ouuid)
        print("The response of IncomingBankingTransactionsApi->get_incomingbankingtransactions_incomingbankingtransactionid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingBankingTransactionsApi->get_incomingbankingtransactions_incomingbankingtransactionid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_banking_transaction_id** | **str**| ID of the incoming banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**IncomingBankingTransactionDTOApiResponseDTO**](IncomingBankingTransactionDTOApiResponseDTO.md)

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

# **get_incomingbankingtransactions_incomingbankingtransactionid_insights**
> IncomingBankingTransactionInsightsDTOApiResponseDTO get_incomingbankingtransactions_incomingbankingtransactionid_insights(incoming_banking_transaction_id, zf_tuuid, zf_ouuid)

Retrieves insights for a specific incoming banking transaction.

Retrieves insights for a specific incoming banking transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_banking_transaction_insights_dto_api_response_dto import IncomingBankingTransactionInsightsDTOApiResponseDTO
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
    api_instance = billing_client.IncomingBankingTransactionsApi(api_client)
    incoming_banking_transaction_id = 'incoming_banking_transaction_id_example' # str | ID of the incoming banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves insights for a specific incoming banking transaction.
        api_response = api_instance.get_incomingbankingtransactions_incomingbankingtransactionid_insights(incoming_banking_transaction_id, zf_tuuid, zf_ouuid)
        print("The response of IncomingBankingTransactionsApi->get_incomingbankingtransactions_incomingbankingtransactionid_insights:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingBankingTransactionsApi->get_incomingbankingtransactions_incomingbankingtransactionid_insights: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_banking_transaction_id** | **str**| ID of the incoming banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**IncomingBankingTransactionInsightsDTOApiResponseDTO**](IncomingBankingTransactionInsightsDTOApiResponseDTO.md)

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

# **get_incomingbankingtransactions_incomingbankingtransactionid_mutations**
> IncomingMutationDTOPagedResponseModelDTOApiResponseDTO get_incomingbankingtransactions_incomingbankingtransactionid_mutations(incoming_banking_transaction_id, zf_tuuid, zf_ouuid, status=status, incoming_mutation_type=incoming_mutation_type, incoming_banking_transaction_id2=incoming_banking_transaction_id2, transaction_date_start=transaction_date_start, transaction_date_end=transaction_date_end, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

Retrieves all incoming mutations for a specific incoming banking transaction.

Retrieves all incoming mutations for a specific incoming banking transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_mutation_dto_paged_response_model_dto_api_response_dto import IncomingMutationDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.IncomingBankingTransactionsApi(api_client)
    incoming_banking_transaction_id = 'incoming_banking_transaction_id_example' # str | ID of the incoming banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    status = 'status_example' # str |  (optional)
    incoming_mutation_type = 'incoming_mutation_type_example' # str |  (optional)
    incoming_banking_transaction_id2 = 'incoming_banking_transaction_id_example' # str |  (optional)
    transaction_date_start = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    transaction_date_end = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    order_by = 'order_by_example' # str | Order by clause for sorting mutations. (optional)
    continuation_token = 'continuation_token_example' # str | Continuation token for pagination. (optional)

    try:
        # Retrieves all incoming mutations for a specific incoming banking transaction.
        api_response = api_instance.get_incomingbankingtransactions_incomingbankingtransactionid_mutations(incoming_banking_transaction_id, zf_tuuid, zf_ouuid, status=status, incoming_mutation_type=incoming_mutation_type, incoming_banking_transaction_id2=incoming_banking_transaction_id2, transaction_date_start=transaction_date_start, transaction_date_end=transaction_date_end, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of IncomingBankingTransactionsApi->get_incomingbankingtransactions_incomingbankingtransactionid_mutations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingBankingTransactionsApi->get_incomingbankingtransactions_incomingbankingtransactionid_mutations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_banking_transaction_id** | **str**| ID of the incoming banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **status** | **str**|  | [optional] 
 **incoming_mutation_type** | **str**|  | [optional] 
 **incoming_banking_transaction_id2** | **str**|  | [optional] 
 **transaction_date_start** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **transaction_date_end** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **order_by** | **str**| Order by clause for sorting mutations. | [optional] 
 **continuation_token** | **str**| Continuation token for pagination. | [optional] 

### Return type

[**IncomingMutationDTOPagedResponseModelDTOApiResponseDTO**](IncomingMutationDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_incomingbankingtransactions_incomingbankingtransactionid_mutations_overv**
> IncomingMutationsOverviewCountDTOApiResponseDTO get_incomingbankingtransactions_incomingbankingtransactionid_mutations_overv(incoming_banking_transaction_id, zf_tuuid, zf_ouuid, status=status, incoming_mutation_type=incoming_mutation_type, incoming_banking_transaction_id2=incoming_banking_transaction_id2, transaction_date_start=transaction_date_start, transaction_date_end=transaction_date_end, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Retrieves an overview count of incoming mutations for a specific incoming banking transaction.

Retrieves an overview count of incoming mutations for a specific incoming banking transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_mutations_overview_count_dto_api_response_dto import IncomingMutationsOverviewCountDTOApiResponseDTO
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
    api_instance = billing_client.IncomingBankingTransactionsApi(api_client)
    incoming_banking_transaction_id = 'incoming_banking_transaction_id_example' # str | ID of the incoming banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    status = 'status_example' # str |  (optional)
    incoming_mutation_type = 'incoming_mutation_type_example' # str |  (optional)
    incoming_banking_transaction_id2 = 'incoming_banking_transaction_id_example' # str |  (optional)
    transaction_date_start = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    transaction_date_end = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Retrieves an overview count of incoming mutations for a specific incoming banking transaction.
        api_response = api_instance.get_incomingbankingtransactions_incomingbankingtransactionid_mutations_overv(incoming_banking_transaction_id, zf_tuuid, zf_ouuid, status=status, incoming_mutation_type=incoming_mutation_type, incoming_banking_transaction_id2=incoming_banking_transaction_id2, transaction_date_start=transaction_date_start, transaction_date_end=transaction_date_end, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of IncomingBankingTransactionsApi->get_incomingbankingtransactions_incomingbankingtransactionid_mutations_overv:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingBankingTransactionsApi->get_incomingbankingtransactions_incomingbankingtransactionid_mutations_overv: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_banking_transaction_id** | **str**| ID of the incoming banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **status** | **str**|  | [optional] 
 **incoming_mutation_type** | **str**|  | [optional] 
 **incoming_banking_transaction_id2** | **str**|  | [optional] 
 **transaction_date_start** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **transaction_date_end** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**IncomingMutationsOverviewCountDTOApiResponseDTO**](IncomingMutationsOverviewCountDTOApiResponseDTO.md)

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

# **get_incomingbankingtransactions_insights_lastupdated**
> IncomingBankingTransactionBankAccountsInsightDTOApiResponseDTO get_incomingbankingtransactions_insights_lastupdated(zf_tuuid, zf_ouuid)

Retrieves last updated insights about the incoming banking transactions, grouped by company bank account

Retrieves last updated insights about the incoming banking transactions, grouped by company bank account

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_banking_transaction_bank_accounts_insight_dto_api_response_dto import IncomingBankingTransactionBankAccountsInsightDTOApiResponseDTO
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
    api_instance = billing_client.IncomingBankingTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves last updated insights about the incoming banking transactions, grouped by company bank account
        api_response = api_instance.get_incomingbankingtransactions_insights_lastupdated(zf_tuuid, zf_ouuid)
        print("The response of IncomingBankingTransactionsApi->get_incomingbankingtransactions_insights_lastupdated:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingBankingTransactionsApi->get_incomingbankingtransactions_insights_lastupdated: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**IncomingBankingTransactionBankAccountsInsightDTOApiResponseDTO**](IncomingBankingTransactionBankAccountsInsightDTOApiResponseDTO.md)

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

# **get_incomingbankingtransactions_overviewcount**
> IncomingBankingTransactionOverviewCountDTOApiResponseDTO get_incomingbankingtransactions_overviewcount(zf_tuuid, zf_ouuid, company_bank_account_id=company_bank_account_id, mutation_date_time_start=mutation_date_time_start, mutation_date_time_end=mutation_date_time_end, opening_balance_date_start=opening_balance_date_start, opening_balance_date_end=opening_balance_date_end, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Retrieves an overview count of all incoming banking transactions based on the provided query parameters.

Retrieves an overview count of all incoming banking transactions based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_banking_transaction_overview_count_dto_api_response_dto import IncomingBankingTransactionOverviewCountDTOApiResponseDTO
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
    api_instance = billing_client.IncomingBankingTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    company_bank_account_id = 'company_bank_account_id_example' # str |  (optional)
    mutation_date_time_start = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    mutation_date_time_end = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    opening_balance_date_start = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    opening_balance_date_end = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Retrieves an overview count of all incoming banking transactions based on the provided query parameters.
        api_response = api_instance.get_incomingbankingtransactions_overviewcount(zf_tuuid, zf_ouuid, company_bank_account_id=company_bank_account_id, mutation_date_time_start=mutation_date_time_start, mutation_date_time_end=mutation_date_time_end, opening_balance_date_start=opening_balance_date_start, opening_balance_date_end=opening_balance_date_end, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of IncomingBankingTransactionsApi->get_incomingbankingtransactions_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingBankingTransactionsApi->get_incomingbankingtransactions_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **company_bank_account_id** | **str**|  | [optional] 
 **mutation_date_time_start** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **mutation_date_time_end** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **opening_balance_date_start** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **opening_balance_date_end** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**IncomingBankingTransactionOverviewCountDTOApiResponseDTO**](IncomingBankingTransactionOverviewCountDTOApiResponseDTO.md)

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

# **post_incomingbankingtransactions_bulk_delete**
> ApiResponseDTO post_incomingbankingtransactions_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_incoming_banking_transaction_request=bulk_delete_incoming_banking_transaction_request)

Bulk deletes incoming banking transactions based on the provided request.

Bulk deletes incoming banking transactions based on the provided request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.api_response_dto import ApiResponseDTO
from billing_client.models.bulk_delete_incoming_banking_transaction_request import BulkDeleteIncomingBankingTransactionRequest
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
    api_instance = billing_client.IncomingBankingTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_delete_incoming_banking_transaction_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"companyBankAccountId":"string","mutationDateTimeStart":"string","mutationDateTimeEnd":"string","openingBalanceDateStart":"string","openingBalanceDateEnd":"string"},"quickFilter":"string"} # BulkDeleteIncomingBankingTransactionRequest | Request containing the details for bulk deletion. (optional)

    try:
        # Bulk deletes incoming banking transactions based on the provided request.
        api_response = api_instance.post_incomingbankingtransactions_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_incoming_banking_transaction_request=bulk_delete_incoming_banking_transaction_request)
        print("The response of IncomingBankingTransactionsApi->post_incomingbankingtransactions_bulk_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingBankingTransactionsApi->post_incomingbankingtransactions_bulk_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_delete_incoming_banking_transaction_request** | [**BulkDeleteIncomingBankingTransactionRequest**](BulkDeleteIncomingBankingTransactionRequest.md)| Request containing the details for bulk deletion. | [optional] 

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

# **post_incomingbankingtransactions_bulk_process**
> ApiResponseDTO post_incomingbankingtransactions_bulk_process(zf_tuuid, zf_ouuid, bulk_process_incoming_banking_transaction_request=bulk_process_incoming_banking_transaction_request)

Bulk processes incoming banking transactions based on the provided request.

Bulk processes incoming banking transactions based on the provided request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.api_response_dto import ApiResponseDTO
from billing_client.models.bulk_process_incoming_banking_transaction_request import BulkProcessIncomingBankingTransactionRequest
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
    api_instance = billing_client.IncomingBankingTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_process_incoming_banking_transaction_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"companyBankAccountId":"string","mutationDateTimeStart":"string","mutationDateTimeEnd":"string","openingBalanceDateStart":"string","openingBalanceDateEnd":"string"},"quickFilter":"string"} # BulkProcessIncomingBankingTransactionRequest | Request containing the details for bulk processing. (optional)

    try:
        # Bulk processes incoming banking transactions based on the provided request.
        api_response = api_instance.post_incomingbankingtransactions_bulk_process(zf_tuuid, zf_ouuid, bulk_process_incoming_banking_transaction_request=bulk_process_incoming_banking_transaction_request)
        print("The response of IncomingBankingTransactionsApi->post_incomingbankingtransactions_bulk_process:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingBankingTransactionsApi->post_incomingbankingtransactions_bulk_process: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_process_incoming_banking_transaction_request** | [**BulkProcessIncomingBankingTransactionRequest**](BulkProcessIncomingBankingTransactionRequest.md)| Request containing the details for bulk processing. | [optional] 

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

# **post_incomingbankingtransactions_export**
> IncomingBankingTransactionsExportDTOListApiResponseDTO post_incomingbankingtransactions_export(zf_tuuid, zf_ouuid, get_incoming_banking_transaction_export_request=get_incoming_banking_transaction_export_request)

Exports incoming banking transactions based on the provided request.

Exports incoming banking transactions based on the provided request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.get_incoming_banking_transaction_export_request import GetIncomingBankingTransactionExportRequest
from billing_client.models.incoming_banking_transactions_export_dto_list_api_response_dto import IncomingBankingTransactionsExportDTOListApiResponseDTO
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
    api_instance = billing_client.IncomingBankingTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    get_incoming_banking_transaction_export_request = {"incomingBankingTransactionIds":["string"]} # GetIncomingBankingTransactionExportRequest | Request containing the IDs of the transactions to export. (optional)

    try:
        # Exports incoming banking transactions based on the provided request.
        api_response = api_instance.post_incomingbankingtransactions_export(zf_tuuid, zf_ouuid, get_incoming_banking_transaction_export_request=get_incoming_banking_transaction_export_request)
        print("The response of IncomingBankingTransactionsApi->post_incomingbankingtransactions_export:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingBankingTransactionsApi->post_incomingbankingtransactions_export: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **get_incoming_banking_transaction_export_request** | [**GetIncomingBankingTransactionExportRequest**](GetIncomingBankingTransactionExportRequest.md)| Request containing the IDs of the transactions to export. | [optional] 

### Return type

[**IncomingBankingTransactionsExportDTOListApiResponseDTO**](IncomingBankingTransactionsExportDTOListApiResponseDTO.md)

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

# **post_incomingbankingtransactions_incomingbankingtransactionid_mutations_igno**
> IncomingMutationDTOPagedResponseModelDTOApiResponseDTO post_incomingbankingtransactions_incomingbankingtransactionid_mutations_igno(incoming_banking_transaction_id, zf_tuuid, zf_ouuid, ignore_incoming_mutations_request=ignore_incoming_mutations_request)

Ignores multiple incoming mutations for a specific incoming banking transaction.

Ignores multiple incoming mutations for a specific incoming banking transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.ignore_incoming_mutations_request import IgnoreIncomingMutationsRequest
from billing_client.models.incoming_mutation_dto_paged_response_model_dto_api_response_dto import IncomingMutationDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.IncomingBankingTransactionsApi(api_client)
    incoming_banking_transaction_id = 'incoming_banking_transaction_id_example' # str | ID of the incoming banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    ignore_incoming_mutations_request = {"incomingMutationIds":["string"]} # IgnoreIncomingMutationsRequest | Request containing the IDs of the mutations to ignore. (optional)

    try:
        # Ignores multiple incoming mutations for a specific incoming banking transaction.
        api_response = api_instance.post_incomingbankingtransactions_incomingbankingtransactionid_mutations_igno(incoming_banking_transaction_id, zf_tuuid, zf_ouuid, ignore_incoming_mutations_request=ignore_incoming_mutations_request)
        print("The response of IncomingBankingTransactionsApi->post_incomingbankingtransactions_incomingbankingtransactionid_mutations_igno:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingBankingTransactionsApi->post_incomingbankingtransactions_incomingbankingtransactionid_mutations_igno: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_banking_transaction_id** | **str**| ID of the incoming banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **ignore_incoming_mutations_request** | [**IgnoreIncomingMutationsRequest**](IgnoreIncomingMutationsRequest.md)| Request containing the IDs of the mutations to ignore. | [optional] 

### Return type

[**IncomingMutationDTOPagedResponseModelDTOApiResponseDTO**](IncomingMutationDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **post_incomingbankingtransactions_incomingbankingtransactionid_process**
> IncomingBankingTransactionDTOApiResponseDTO post_incomingbankingtransactions_incomingbankingtransactionid_process(incoming_banking_transaction_id, zf_tuuid, zf_ouuid)

Processes a specific incoming banking transaction by its ID.

Processes a specific incoming banking transaction by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_banking_transaction_dto_api_response_dto import IncomingBankingTransactionDTOApiResponseDTO
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
    api_instance = billing_client.IncomingBankingTransactionsApi(api_client)
    incoming_banking_transaction_id = 'incoming_banking_transaction_id_example' # str | ID of the incoming banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Processes a specific incoming banking transaction by its ID.
        api_response = api_instance.post_incomingbankingtransactions_incomingbankingtransactionid_process(incoming_banking_transaction_id, zf_tuuid, zf_ouuid)
        print("The response of IncomingBankingTransactionsApi->post_incomingbankingtransactions_incomingbankingtransactionid_process:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingBankingTransactionsApi->post_incomingbankingtransactions_incomingbankingtransactionid_process: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_banking_transaction_id** | **str**| ID of the incoming banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**IncomingBankingTransactionDTOApiResponseDTO**](IncomingBankingTransactionDTOApiResponseDTO.md)

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

# **post_incomingbankingtransactions_incomingbankingtransactionid_updateibanconf**
> IncomingBankingTransactionDTOApiResponseDTO post_incomingbankingtransactions_incomingbankingtransactionid_updateibanconf(incoming_banking_transaction_id, zf_tuuid, zf_ouuid, update_incoming_banking_transaction_iban_request=update_incoming_banking_transaction_iban_request)

Updates the IBAN confirmation of an Iban used in a specific incoming banking transaction.

Updates the IBAN confirmation of an Iban used in a specific incoming banking transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_banking_transaction_dto_api_response_dto import IncomingBankingTransactionDTOApiResponseDTO
from billing_client.models.update_incoming_banking_transaction_iban_request import UpdateIncomingBankingTransactionIbanRequest
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
    api_instance = billing_client.IncomingBankingTransactionsApi(api_client)
    incoming_banking_transaction_id = 'incoming_banking_transaction_id_example' # str | ID of the incoming banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_incoming_banking_transaction_iban_request = {"customerId":"string","iban":"string","confirm":true} # UpdateIncomingBankingTransactionIbanRequest | Request containing the IBAN confirmation details. (optional)

    try:
        # Updates the IBAN confirmation of an Iban used in a specific incoming banking transaction.
        api_response = api_instance.post_incomingbankingtransactions_incomingbankingtransactionid_updateibanconf(incoming_banking_transaction_id, zf_tuuid, zf_ouuid, update_incoming_banking_transaction_iban_request=update_incoming_banking_transaction_iban_request)
        print("The response of IncomingBankingTransactionsApi->post_incomingbankingtransactions_incomingbankingtransactionid_updateibanconf:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingBankingTransactionsApi->post_incomingbankingtransactions_incomingbankingtransactionid_updateibanconf: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_banking_transaction_id** | **str**| ID of the incoming banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_incoming_banking_transaction_iban_request** | [**UpdateIncomingBankingTransactionIbanRequest**](UpdateIncomingBankingTransactionIbanRequest.md)| Request containing the IBAN confirmation details. | [optional] 

### Return type

[**IncomingBankingTransactionDTOApiResponseDTO**](IncomingBankingTransactionDTOApiResponseDTO.md)

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

