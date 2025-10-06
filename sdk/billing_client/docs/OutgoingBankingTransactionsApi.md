# billing_client.OutgoingBankingTransactionsApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_outgoingbankingtransactions_outgoingbankingtransactionid**](OutgoingBankingTransactionsApi.md#delete_outgoingbankingtransactions_outgoingbankingtransactionid) | **DELETE** /OutgoingBankingTransactions/{outgoingBankingTransactionId} | Deletes an outgoing banking transaction by its ID.
[**get_outgoingbankingtransactions**](OutgoingBankingTransactionsApi.md#get_outgoingbankingtransactions) | **GET** /OutgoingBankingTransactions | Retrieves all outgoing banking transactions with optional filters.
[**get_outgoingbankingtransactions_outgoingbankingtransactionid**](OutgoingBankingTransactionsApi.md#get_outgoingbankingtransactions_outgoingbankingtransactionid) | **GET** /OutgoingBankingTransactions/{outgoingBankingTransactionId} | Retrieves an outgoing banking transaction by its ID.
[**get_outgoingbankingtransactions_outgoingbankingtransactionid_mutations**](OutgoingBankingTransactionsApi.md#get_outgoingbankingtransactions_outgoingbankingtransactionid_mutations) | **GET** /OutgoingBankingTransactions/{outgoingBankingTransactionId}/mutations | Retrieves all mutations for a specific outgoing banking transaction.
[**get_outgoingbankingtransactions_outgoingbankingtransactionid_mutations_overv**](OutgoingBankingTransactionsApi.md#get_outgoingbankingtransactions_outgoingbankingtransactionid_mutations_overv) | **GET** /OutgoingBankingTransactions/{outgoingBankingTransactionId}/mutations/overviewcount | Retrieves the overview count of mutations for a specific outgoing banking transaction.
[**get_outgoingbankingtransactions_overviewcount**](OutgoingBankingTransactionsApi.md#get_outgoingbankingtransactions_overviewcount) | **GET** /OutgoingBankingTransactions/overviewcount | Retrieves the overview count of outgoing banking transactions.
[**post_outgoingbankingtransactions**](OutgoingBankingTransactionsApi.md#post_outgoingbankingtransactions) | **POST** /OutgoingBankingTransactions | Assigns invoices to new or existing outgoing banking transactions.
[**post_outgoingbankingtransactions_bulk_assigninvoices**](OutgoingBankingTransactionsApi.md#post_outgoingbankingtransactions_bulk_assigninvoices) | **POST** /OutgoingBankingTransactions/bulk/assigninvoices | Bulk assigns invoices to outgoing banking transactions.
[**post_outgoingbankingtransactions_bulk_delete**](OutgoingBankingTransactionsApi.md#post_outgoingbankingtransactions_bulk_delete) | **POST** /OutgoingBankingTransactions/bulk/delete | Bulk deletes outgoing banking transactions.
[**post_outgoingbankingtransactions_bulk_manuallycancel**](OutgoingBankingTransactionsApi.md#post_outgoingbankingtransactions_bulk_manuallycancel) | **POST** /OutgoingBankingTransactions/bulk/manuallycancel | Bulk manually cancels outgoing banking transactions.
[**post_outgoingbankingtransactions_bulk_manuallyconfirm**](OutgoingBankingTransactionsApi.md#post_outgoingbankingtransactions_bulk_manuallyconfirm) | **POST** /OutgoingBankingTransactions/bulk/manuallyconfirm | Bulk manually confirms outgoing banking transactions.
[**post_outgoingbankingtransactions_create**](OutgoingBankingTransactionsApi.md#post_outgoingbankingtransactions_create) | **POST** /OutgoingBankingTransactions/create | Creates a new outgoing banking transaction.
[**post_outgoingbankingtransactions_export**](OutgoingBankingTransactionsApi.md#post_outgoingbankingtransactions_export) | **POST** /OutgoingBankingTransactions/export | Exports outgoing banking transactions based on the provided request.
[**post_outgoingbankingtransactions_outgoingbankingtransactionid_bankaccount**](OutgoingBankingTransactionsApi.md#post_outgoingbankingtransactions_outgoingbankingtransactionid_bankaccount) | **POST** /OutgoingBankingTransactions/{outgoingBankingTransactionId}/bankaccount | Updates the company bank account for an outgoing banking transaction.
[**post_outgoingbankingtransactions_outgoingbankingtransactionid_collectiondate**](OutgoingBankingTransactionsApi.md#post_outgoingbankingtransactions_outgoingbankingtransactionid_collectiondate) | **POST** /OutgoingBankingTransactions/{outgoingBankingTransactionId}/collectiondate | Updates the collection date for an outgoing banking transaction.
[**post_outgoingbankingtransactions_outgoingbankingtransactionid_manuallycancel**](OutgoingBankingTransactionsApi.md#post_outgoingbankingtransactions_outgoingbankingtransactionid_manuallycancel) | **POST** /OutgoingBankingTransactions/{outgoingBankingTransactionId}/manuallycancel | Manually cancels an outgoing banking transaction.
[**post_outgoingbankingtransactions_outgoingbankingtransactionid_manuallyconfir**](OutgoingBankingTransactionsApi.md#post_outgoingbankingtransactions_outgoingbankingtransactionid_manuallyconfir) | **POST** /OutgoingBankingTransactions/{outgoingBankingTransactionId}/manuallyconfirm | Manually confirms an outgoing banking transaction.
[**post_outgoingbankingtransactions_outgoingbankingtransactionid_mutations**](OutgoingBankingTransactionsApi.md#post_outgoingbankingtransactions_outgoingbankingtransactionid_mutations) | **POST** /OutgoingBankingTransactions/{outgoingBankingTransactionId}/mutations | Adds an entry to an existing outgoing banking transaction.
[**post_outgoingbankingtransactions_preview**](OutgoingBankingTransactionsApi.md#post_outgoingbankingtransactions_preview) | **POST** /OutgoingBankingTransactions/preview | Provides a preview of the invoices to be assigned to outgoing banking transactions.


# **delete_outgoingbankingtransactions_outgoingbankingtransactionid**
> BooleanApiResponseDTO delete_outgoingbankingtransactions_outgoingbankingtransactionid(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid)

Deletes an outgoing banking transaction by its ID.

Deletes an outgoing banking transaction by its ID.

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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    outgoing_banking_transaction_id = 'outgoing_banking_transaction_id_example' # str | ID of the outgoing banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes an outgoing banking transaction by its ID.
        api_response = api_instance.delete_outgoingbankingtransactions_outgoingbankingtransactionid(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid)
        print("The response of OutgoingBankingTransactionsApi->delete_outgoingbankingtransactions_outgoingbankingtransactionid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->delete_outgoingbankingtransactions_outgoingbankingtransactionid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **outgoing_banking_transaction_id** | **str**| ID of the outgoing banking transaction. | 
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

# **get_outgoingbankingtransactions**
> OutgoingBankingTransactionDTOPagedResponseModelDTOApiResponseDTO get_outgoingbankingtransactions(zf_tuuid, zf_ouuid, company_bank_account_id=company_bank_account_id, outgoing_banking_transaction_type=outgoing_banking_transaction_type, mutation_date_time_start=mutation_date_time_start, mutation_date_time_end=mutation_date_time_end, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

Retrieves all outgoing banking transactions with optional filters.

Retrieves all outgoing banking transactions with optional filters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.outgoing_banking_transaction_dto_paged_response_model_dto_api_response_dto import OutgoingBankingTransactionDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    company_bank_account_id = 'company_bank_account_id_example' # str |  (optional)
    outgoing_banking_transaction_type = 'outgoing_banking_transaction_type_example' # str |  (optional)
    mutation_date_time_start = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    mutation_date_time_end = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    order_by = 'order_by_example' # str | Order by clause. (optional)
    continuation_token = 'continuation_token_example' # str | Continuation token for pagination. (optional)

    try:
        # Retrieves all outgoing banking transactions with optional filters.
        api_response = api_instance.get_outgoingbankingtransactions(zf_tuuid, zf_ouuid, company_bank_account_id=company_bank_account_id, outgoing_banking_transaction_type=outgoing_banking_transaction_type, mutation_date_time_start=mutation_date_time_start, mutation_date_time_end=mutation_date_time_end, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of OutgoingBankingTransactionsApi->get_outgoingbankingtransactions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->get_outgoingbankingtransactions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **company_bank_account_id** | **str**|  | [optional] 
 **outgoing_banking_transaction_type** | **str**|  | [optional] 
 **mutation_date_time_start** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **mutation_date_time_end** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **order_by** | **str**| Order by clause. | [optional] 
 **continuation_token** | **str**| Continuation token for pagination. | [optional] 

### Return type

[**OutgoingBankingTransactionDTOPagedResponseModelDTOApiResponseDTO**](OutgoingBankingTransactionDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_outgoingbankingtransactions_outgoingbankingtransactionid**
> OutgoingBankingTransactionDTOApiResponseDTO get_outgoingbankingtransactions_outgoingbankingtransactionid(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid)

Retrieves an outgoing banking transaction by its ID.

Retrieves an outgoing banking transaction by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.outgoing_banking_transaction_dto_api_response_dto import OutgoingBankingTransactionDTOApiResponseDTO
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    outgoing_banking_transaction_id = 'outgoing_banking_transaction_id_example' # str | ID of the outgoing banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves an outgoing banking transaction by its ID.
        api_response = api_instance.get_outgoingbankingtransactions_outgoingbankingtransactionid(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid)
        print("The response of OutgoingBankingTransactionsApi->get_outgoingbankingtransactions_outgoingbankingtransactionid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->get_outgoingbankingtransactions_outgoingbankingtransactionid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **outgoing_banking_transaction_id** | **str**| ID of the outgoing banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**OutgoingBankingTransactionDTOApiResponseDTO**](OutgoingBankingTransactionDTOApiResponseDTO.md)

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

# **get_outgoingbankingtransactions_outgoingbankingtransactionid_mutations**
> OutgoingMutationDTOPagedResponseModelDTOApiResponseDTO get_outgoingbankingtransactions_outgoingbankingtransactionid_mutations(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid, name=name, id=id, outgoing_banking_transaction_id2=outgoing_banking_transaction_id2, status=status, reference_type=reference_type, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, continuation_token=continuation_token)

Retrieves all mutations for a specific outgoing banking transaction.

Retrieves all mutations for a specific outgoing banking transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.outgoing_mutation_dto_paged_response_model_dto_api_response_dto import OutgoingMutationDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    outgoing_banking_transaction_id = 'outgoing_banking_transaction_id_example' # str | ID of the outgoing banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    outgoing_banking_transaction_id2 = 'outgoing_banking_transaction_id_example' # str |  (optional)
    status = 'status_example' # str |  (optional)
    reference_type = 'reference_type_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    order_by = 'order_by_example' # str | Order by clause. (optional)
    continuation_token = 'continuation_token_example' # str | Continuation token for pagination. (optional)

    try:
        # Retrieves all mutations for a specific outgoing banking transaction.
        api_response = api_instance.get_outgoingbankingtransactions_outgoingbankingtransactionid_mutations(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid, name=name, id=id, outgoing_banking_transaction_id2=outgoing_banking_transaction_id2, status=status, reference_type=reference_type, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, continuation_token=continuation_token)
        print("The response of OutgoingBankingTransactionsApi->get_outgoingbankingtransactions_outgoingbankingtransactionid_mutations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->get_outgoingbankingtransactions_outgoingbankingtransactionid_mutations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **outgoing_banking_transaction_id** | **str**| ID of the outgoing banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **outgoing_banking_transaction_id2** | **str**|  | [optional] 
 **status** | **str**|  | [optional] 
 **reference_type** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **order_by** | **str**| Order by clause. | [optional] 
 **continuation_token** | **str**| Continuation token for pagination. | [optional] 

### Return type

[**OutgoingMutationDTOPagedResponseModelDTOApiResponseDTO**](OutgoingMutationDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_outgoingbankingtransactions_outgoingbankingtransactionid_mutations_overv**
> OutgoingMutationsOverviewCountDTOApiResponseDTO get_outgoingbankingtransactions_outgoingbankingtransactionid_mutations_overv(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid, outgoing_banking_transaction_id2=outgoing_banking_transaction_id2, status=status, reference_type=reference_type, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Retrieves the overview count of mutations for a specific outgoing banking transaction.

Retrieves the overview count of mutations for a specific outgoing banking transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.outgoing_mutations_overview_count_dto_api_response_dto import OutgoingMutationsOverviewCountDTOApiResponseDTO
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    outgoing_banking_transaction_id = 'outgoing_banking_transaction_id_example' # str | ID of the outgoing banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    outgoing_banking_transaction_id2 = 'outgoing_banking_transaction_id_example' # str |  (optional)
    status = 'status_example' # str |  (optional)
    reference_type = 'reference_type_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Retrieves the overview count of mutations for a specific outgoing banking transaction.
        api_response = api_instance.get_outgoingbankingtransactions_outgoingbankingtransactionid_mutations_overv(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid, outgoing_banking_transaction_id2=outgoing_banking_transaction_id2, status=status, reference_type=reference_type, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of OutgoingBankingTransactionsApi->get_outgoingbankingtransactions_outgoingbankingtransactionid_mutations_overv:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->get_outgoingbankingtransactions_outgoingbankingtransactionid_mutations_overv: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **outgoing_banking_transaction_id** | **str**| ID of the outgoing banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **outgoing_banking_transaction_id2** | **str**|  | [optional] 
 **status** | **str**|  | [optional] 
 **reference_type** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**OutgoingMutationsOverviewCountDTOApiResponseDTO**](OutgoingMutationsOverviewCountDTOApiResponseDTO.md)

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

# **get_outgoingbankingtransactions_overviewcount**
> OutgoingBankingTransactionOverviewCountDTOApiResponseDTO get_outgoingbankingtransactions_overviewcount(zf_tuuid, zf_ouuid, company_bank_account_id=company_bank_account_id, outgoing_banking_transaction_type=outgoing_banking_transaction_type, mutation_date_time_start=mutation_date_time_start, mutation_date_time_end=mutation_date_time_end, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Retrieves the overview count of outgoing banking transactions.

Retrieves the overview count of outgoing banking transactions.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.outgoing_banking_transaction_overview_count_dto_api_response_dto import OutgoingBankingTransactionOverviewCountDTOApiResponseDTO
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    company_bank_account_id = 'company_bank_account_id_example' # str |  (optional)
    outgoing_banking_transaction_type = 'outgoing_banking_transaction_type_example' # str |  (optional)
    mutation_date_time_start = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    mutation_date_time_end = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Retrieves the overview count of outgoing banking transactions.
        api_response = api_instance.get_outgoingbankingtransactions_overviewcount(zf_tuuid, zf_ouuid, company_bank_account_id=company_bank_account_id, outgoing_banking_transaction_type=outgoing_banking_transaction_type, mutation_date_time_start=mutation_date_time_start, mutation_date_time_end=mutation_date_time_end, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of OutgoingBankingTransactionsApi->get_outgoingbankingtransactions_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->get_outgoingbankingtransactions_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **company_bank_account_id** | **str**|  | [optional] 
 **outgoing_banking_transaction_type** | **str**|  | [optional] 
 **mutation_date_time_start** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **mutation_date_time_end** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**OutgoingBankingTransactionOverviewCountDTOApiResponseDTO**](OutgoingBankingTransactionOverviewCountDTOApiResponseDTO.md)

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

# **post_outgoingbankingtransactions**
> BooleanApiResponseDTO post_outgoingbankingtransactions(zf_tuuid, zf_ouuid, assign_invoices_to_outgoing_banking_transaction_request=assign_invoices_to_outgoing_banking_transaction_request)

Assigns invoices to new or existing outgoing banking transactions.

Assigns invoices to new or existing outgoing banking transactions.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.assign_invoices_to_outgoing_banking_transaction_request import AssignInvoicesToOutgoingBankingTransactionRequest
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    assign_invoices_to_outgoing_banking_transaction_request = {"allApplicable":true,"outgoingBankingTransactionType":{},"invoiceIds":["string"],"addToNewOutgoingBankingTransactions":true,"overriddenCollectionDate":"string"} # AssignInvoicesToOutgoingBankingTransactionRequest | Request containing the assignment details. (optional)

    try:
        # Assigns invoices to new or existing outgoing banking transactions.
        api_response = api_instance.post_outgoingbankingtransactions(zf_tuuid, zf_ouuid, assign_invoices_to_outgoing_banking_transaction_request=assign_invoices_to_outgoing_banking_transaction_request)
        print("The response of OutgoingBankingTransactionsApi->post_outgoingbankingtransactions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->post_outgoingbankingtransactions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **assign_invoices_to_outgoing_banking_transaction_request** | [**AssignInvoicesToOutgoingBankingTransactionRequest**](AssignInvoicesToOutgoingBankingTransactionRequest.md)| Request containing the assignment details. | [optional] 

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

# **post_outgoingbankingtransactions_bulk_assigninvoices**
> ApiResponseDTO post_outgoingbankingtransactions_bulk_assigninvoices(zf_tuuid, zf_ouuid, bulk_assign_invoices_to_outgoing_banking_transaction_request=bulk_assign_invoices_to_outgoing_banking_transaction_request)

Bulk assigns invoices to outgoing banking transactions.

Bulk assigns invoices to outgoing banking transactions.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.api_response_dto import ApiResponseDTO
from billing_client.models.bulk_assign_invoices_to_outgoing_banking_transaction_request import BulkAssignInvoicesToOutgoingBankingTransactionRequest
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_assign_invoices_to_outgoing_banking_transaction_request = {"allApplicable":true,"outgoingBankingTransactionType":{},"invoiceIds":["string"],"addToNewOutgoingBankingTransactions":true,"overriddenCollectionDate":"string","onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"invoiceType":["string"],"propertyGroupIds":["string"],"productId":"string","customerId":"string","contractId":"string","invoiceStatus":["string"],"paymentProcessStatus":["string"],"billingCompletenessId":"string","paymentMethod":"string","startDateTime":"string","endDateTime":"string","periodStartDateTime":"string","periodEndDateTime":"string","periodStartDateTimeBegin":"string","periodStartDateTimeEnd":"string","periodEndDateTimeBegin":"string","periodEndDateTimeEnd":"string","paidDateTimeBegin":"string","exportStatus":"string","collectionCaseId":"string","customerGroupId":"string","companyBankAccountId":"string"},"quickFilter":"string"} # BulkAssignInvoicesToOutgoingBankingTransactionRequest | Request containing the assign invoices details. (optional)

    try:
        # Bulk assigns invoices to outgoing banking transactions.
        api_response = api_instance.post_outgoingbankingtransactions_bulk_assigninvoices(zf_tuuid, zf_ouuid, bulk_assign_invoices_to_outgoing_banking_transaction_request=bulk_assign_invoices_to_outgoing_banking_transaction_request)
        print("The response of OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_bulk_assigninvoices:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_bulk_assigninvoices: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_assign_invoices_to_outgoing_banking_transaction_request** | [**BulkAssignInvoicesToOutgoingBankingTransactionRequest**](BulkAssignInvoicesToOutgoingBankingTransactionRequest.md)| Request containing the assign invoices details. | [optional] 

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

# **post_outgoingbankingtransactions_bulk_delete**
> ApiResponseDTO post_outgoingbankingtransactions_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_outgoing_banking_transaction_request=bulk_delete_outgoing_banking_transaction_request)

Bulk deletes outgoing banking transactions.

Bulk deletes outgoing banking transactions.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.api_response_dto import ApiResponseDTO
from billing_client.models.bulk_delete_outgoing_banking_transaction_request import BulkDeleteOutgoingBankingTransactionRequest
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_delete_outgoing_banking_transaction_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"companyBankAccountId":"string","outgoingBankingTransactionType":"string","mutationDateTimeStart":"string","mutationDateTimeEnd":"string"},"quickFilter":"string"} # BulkDeleteOutgoingBankingTransactionRequest | Request containing the details for bulk deletion. (optional)

    try:
        # Bulk deletes outgoing banking transactions.
        api_response = api_instance.post_outgoingbankingtransactions_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_outgoing_banking_transaction_request=bulk_delete_outgoing_banking_transaction_request)
        print("The response of OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_bulk_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_bulk_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_delete_outgoing_banking_transaction_request** | [**BulkDeleteOutgoingBankingTransactionRequest**](BulkDeleteOutgoingBankingTransactionRequest.md)| Request containing the details for bulk deletion. | [optional] 

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

# **post_outgoingbankingtransactions_bulk_manuallycancel**
> ApiResponseDTO post_outgoingbankingtransactions_bulk_manuallycancel(zf_tuuid, zf_ouuid, bulk_manually_cancel_outgoing_banking_transaction_request=bulk_manually_cancel_outgoing_banking_transaction_request)

Bulk manually cancels outgoing banking transactions.

Bulk manually cancels outgoing banking transactions.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.api_response_dto import ApiResponseDTO
from billing_client.models.bulk_manually_cancel_outgoing_banking_transaction_request import BulkManuallyCancelOutgoingBankingTransactionRequest
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_manually_cancel_outgoing_banking_transaction_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"companyBankAccountId":"string","outgoingBankingTransactionType":"string","mutationDateTimeStart":"string","mutationDateTimeEnd":"string"},"quickFilter":"string"} # BulkManuallyCancelOutgoingBankingTransactionRequest | Request containing the details for bulk cancellation. (optional)

    try:
        # Bulk manually cancels outgoing banking transactions.
        api_response = api_instance.post_outgoingbankingtransactions_bulk_manuallycancel(zf_tuuid, zf_ouuid, bulk_manually_cancel_outgoing_banking_transaction_request=bulk_manually_cancel_outgoing_banking_transaction_request)
        print("The response of OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_bulk_manuallycancel:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_bulk_manuallycancel: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_manually_cancel_outgoing_banking_transaction_request** | [**BulkManuallyCancelOutgoingBankingTransactionRequest**](BulkManuallyCancelOutgoingBankingTransactionRequest.md)| Request containing the details for bulk cancellation. | [optional] 

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

# **post_outgoingbankingtransactions_bulk_manuallyconfirm**
> ApiResponseDTO post_outgoingbankingtransactions_bulk_manuallyconfirm(zf_tuuid, zf_ouuid, bulk_override_outgoing_banking_transaction_bank_confirmation_request=bulk_override_outgoing_banking_transaction_bank_confirmation_request)

Bulk manually confirms outgoing banking transactions.

Bulk manually confirms outgoing banking transactions.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.api_response_dto import ApiResponseDTO
from billing_client.models.bulk_override_outgoing_banking_transaction_bank_confirmation_request import BulkOverrideOutgoingBankingTransactionBankConfirmationRequest
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_override_outgoing_banking_transaction_bank_confirmation_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"companyBankAccountId":"string","outgoingBankingTransactionType":"string","mutationDateTimeStart":"string","mutationDateTimeEnd":"string"},"quickFilter":"string"} # BulkOverrideOutgoingBankingTransactionBankConfirmationRequest | Request containing the details for bulk confirmation. (optional)

    try:
        # Bulk manually confirms outgoing banking transactions.
        api_response = api_instance.post_outgoingbankingtransactions_bulk_manuallyconfirm(zf_tuuid, zf_ouuid, bulk_override_outgoing_banking_transaction_bank_confirmation_request=bulk_override_outgoing_banking_transaction_bank_confirmation_request)
        print("The response of OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_bulk_manuallyconfirm:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_bulk_manuallyconfirm: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_override_outgoing_banking_transaction_bank_confirmation_request** | [**BulkOverrideOutgoingBankingTransactionBankConfirmationRequest**](BulkOverrideOutgoingBankingTransactionBankConfirmationRequest.md)| Request containing the details for bulk confirmation. | [optional] 

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

# **post_outgoingbankingtransactions_create**
> OutgoingBankingTransactionDTOApiResponseDTO post_outgoingbankingtransactions_create(zf_tuuid, zf_ouuid, create_new_outgoing_banking_transaction_request=create_new_outgoing_banking_transaction_request)

Creates a new outgoing banking transaction.

Creates a new outgoing banking transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.create_new_outgoing_banking_transaction_request import CreateNewOutgoingBankingTransactionRequest
from billing_client.models.outgoing_banking_transaction_dto_api_response_dto import OutgoingBankingTransactionDTOApiResponseDTO
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_new_outgoing_banking_transaction_request = {"outgoingBankingTransactionType":{},"collectionDate":"string","companyBankAccountId":"string","entries":[{"invoiceId":"string","amount":0,"paymentReference":"string","iban":"string","customerId":"string","transactionId":"string"}]} # CreateNewOutgoingBankingTransactionRequest | Request containing the transaction details. (optional)

    try:
        # Creates a new outgoing banking transaction.
        api_response = api_instance.post_outgoingbankingtransactions_create(zf_tuuid, zf_ouuid, create_new_outgoing_banking_transaction_request=create_new_outgoing_banking_transaction_request)
        print("The response of OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_create:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_create: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_new_outgoing_banking_transaction_request** | [**CreateNewOutgoingBankingTransactionRequest**](CreateNewOutgoingBankingTransactionRequest.md)| Request containing the transaction details. | [optional] 

### Return type

[**OutgoingBankingTransactionDTOApiResponseDTO**](OutgoingBankingTransactionDTOApiResponseDTO.md)

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

# **post_outgoingbankingtransactions_export**
> OutgoingBankingTransactionsExportDTOListApiResponseDTO post_outgoingbankingtransactions_export(zf_tuuid, zf_ouuid, get_outgoing_banking_transaction_export_request=get_outgoing_banking_transaction_export_request)

Exports outgoing banking transactions based on the provided request.

Exports outgoing banking transactions based on the provided request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.get_outgoing_banking_transaction_export_request import GetOutgoingBankingTransactionExportRequest
from billing_client.models.outgoing_banking_transactions_export_dto_list_api_response_dto import OutgoingBankingTransactionsExportDTOListApiResponseDTO
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    get_outgoing_banking_transaction_export_request = {"outgoingBankingTransactionIds":["string"]} # GetOutgoingBankingTransactionExportRequest | Request containing the export details. (optional)

    try:
        # Exports outgoing banking transactions based on the provided request.
        api_response = api_instance.post_outgoingbankingtransactions_export(zf_tuuid, zf_ouuid, get_outgoing_banking_transaction_export_request=get_outgoing_banking_transaction_export_request)
        print("The response of OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_export:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_export: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **get_outgoing_banking_transaction_export_request** | [**GetOutgoingBankingTransactionExportRequest**](GetOutgoingBankingTransactionExportRequest.md)| Request containing the export details. | [optional] 

### Return type

[**OutgoingBankingTransactionsExportDTOListApiResponseDTO**](OutgoingBankingTransactionsExportDTOListApiResponseDTO.md)

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

# **post_outgoingbankingtransactions_outgoingbankingtransactionid_bankaccount**
> OutgoingBankingTransactionDTOApiResponseDTO post_outgoingbankingtransactions_outgoingbankingtransactionid_bankaccount(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid, update_outgoing_banking_transaction_bank_account_request=update_outgoing_banking_transaction_bank_account_request)

Updates the company bank account for an outgoing banking transaction.

Updates the company bank account for an outgoing banking transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.outgoing_banking_transaction_dto_api_response_dto import OutgoingBankingTransactionDTOApiResponseDTO
from billing_client.models.update_outgoing_banking_transaction_bank_account_request import UpdateOutgoingBankingTransactionBankAccountRequest
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    outgoing_banking_transaction_id = 'outgoing_banking_transaction_id_example' # str | ID of the outgoing banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_outgoing_banking_transaction_bank_account_request = {"companyBankAccountId":"string"} # UpdateOutgoingBankingTransactionBankAccountRequest | Request containing the bank account details. (optional)

    try:
        # Updates the company bank account for an outgoing banking transaction.
        api_response = api_instance.post_outgoingbankingtransactions_outgoingbankingtransactionid_bankaccount(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid, update_outgoing_banking_transaction_bank_account_request=update_outgoing_banking_transaction_bank_account_request)
        print("The response of OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_outgoingbankingtransactionid_bankaccount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_outgoingbankingtransactionid_bankaccount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **outgoing_banking_transaction_id** | **str**| ID of the outgoing banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_outgoing_banking_transaction_bank_account_request** | [**UpdateOutgoingBankingTransactionBankAccountRequest**](UpdateOutgoingBankingTransactionBankAccountRequest.md)| Request containing the bank account details. | [optional] 

### Return type

[**OutgoingBankingTransactionDTOApiResponseDTO**](OutgoingBankingTransactionDTOApiResponseDTO.md)

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

# **post_outgoingbankingtransactions_outgoingbankingtransactionid_collectiondate**
> OutgoingBankingTransactionDTOApiResponseDTO post_outgoingbankingtransactions_outgoingbankingtransactionid_collectiondate(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid, update_outgoing_banking_transaction_collection_date_request=update_outgoing_banking_transaction_collection_date_request)

Updates the collection date for an outgoing banking transaction.

Updates the collection date for an outgoing banking transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.outgoing_banking_transaction_dto_api_response_dto import OutgoingBankingTransactionDTOApiResponseDTO
from billing_client.models.update_outgoing_banking_transaction_collection_date_request import UpdateOutgoingBankingTransactionCollectionDateRequest
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    outgoing_banking_transaction_id = 'outgoing_banking_transaction_id_example' # str | ID of the outgoing banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_outgoing_banking_transaction_collection_date_request = {"collectionDate":"string"} # UpdateOutgoingBankingTransactionCollectionDateRequest | Request containing the collection date details. (optional)

    try:
        # Updates the collection date for an outgoing banking transaction.
        api_response = api_instance.post_outgoingbankingtransactions_outgoingbankingtransactionid_collectiondate(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid, update_outgoing_banking_transaction_collection_date_request=update_outgoing_banking_transaction_collection_date_request)
        print("The response of OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_outgoingbankingtransactionid_collectiondate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_outgoingbankingtransactionid_collectiondate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **outgoing_banking_transaction_id** | **str**| ID of the outgoing banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_outgoing_banking_transaction_collection_date_request** | [**UpdateOutgoingBankingTransactionCollectionDateRequest**](UpdateOutgoingBankingTransactionCollectionDateRequest.md)| Request containing the collection date details. | [optional] 

### Return type

[**OutgoingBankingTransactionDTOApiResponseDTO**](OutgoingBankingTransactionDTOApiResponseDTO.md)

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

# **post_outgoingbankingtransactions_outgoingbankingtransactionid_manuallycancel**
> OutgoingBankingTransactionDTOApiResponseDTO post_outgoingbankingtransactions_outgoingbankingtransactionid_manuallycancel(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid)

Manually cancels an outgoing banking transaction.

Manually cancels an outgoing banking transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.outgoing_banking_transaction_dto_api_response_dto import OutgoingBankingTransactionDTOApiResponseDTO
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    outgoing_banking_transaction_id = 'outgoing_banking_transaction_id_example' # str | ID of the outgoing banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Manually cancels an outgoing banking transaction.
        api_response = api_instance.post_outgoingbankingtransactions_outgoingbankingtransactionid_manuallycancel(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid)
        print("The response of OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_outgoingbankingtransactionid_manuallycancel:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_outgoingbankingtransactionid_manuallycancel: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **outgoing_banking_transaction_id** | **str**| ID of the outgoing banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**OutgoingBankingTransactionDTOApiResponseDTO**](OutgoingBankingTransactionDTOApiResponseDTO.md)

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

# **post_outgoingbankingtransactions_outgoingbankingtransactionid_manuallyconfir**
> OutgoingBankingTransactionDTOApiResponseDTO post_outgoingbankingtransactions_outgoingbankingtransactionid_manuallyconfir(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid)

Manually confirms an outgoing banking transaction.

Manually confirms an outgoing banking transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.outgoing_banking_transaction_dto_api_response_dto import OutgoingBankingTransactionDTOApiResponseDTO
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    outgoing_banking_transaction_id = 'outgoing_banking_transaction_id_example' # str | ID of the outgoing banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Manually confirms an outgoing banking transaction.
        api_response = api_instance.post_outgoingbankingtransactions_outgoingbankingtransactionid_manuallyconfir(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid)
        print("The response of OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_outgoingbankingtransactionid_manuallyconfir:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_outgoingbankingtransactionid_manuallyconfir: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **outgoing_banking_transaction_id** | **str**| ID of the outgoing banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**OutgoingBankingTransactionDTOApiResponseDTO**](OutgoingBankingTransactionDTOApiResponseDTO.md)

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

# **post_outgoingbankingtransactions_outgoingbankingtransactionid_mutations**
> OutgoingMutationDTOApiResponseDTO post_outgoingbankingtransactions_outgoingbankingtransactionid_mutations(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid, add_entry_to_outgoing_banking_transaction_request=add_entry_to_outgoing_banking_transaction_request)

Adds an entry to an existing outgoing banking transaction.

Adds an entry to an existing outgoing banking transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.add_entry_to_outgoing_banking_transaction_request import AddEntryToOutgoingBankingTransactionRequest
from billing_client.models.outgoing_mutation_dto_api_response_dto import OutgoingMutationDTOApiResponseDTO
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    outgoing_banking_transaction_id = 'outgoing_banking_transaction_id_example' # str | ID of the outgoing banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    add_entry_to_outgoing_banking_transaction_request = {"invoiceId":"string","amount":0,"paymentReference":"string","iban":"string","customerId":"string","transactionId":"string"} # AddEntryToOutgoingBankingTransactionRequest | Request containing the entry details. (optional)

    try:
        # Adds an entry to an existing outgoing banking transaction.
        api_response = api_instance.post_outgoingbankingtransactions_outgoingbankingtransactionid_mutations(outgoing_banking_transaction_id, zf_tuuid, zf_ouuid, add_entry_to_outgoing_banking_transaction_request=add_entry_to_outgoing_banking_transaction_request)
        print("The response of OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_outgoingbankingtransactionid_mutations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_outgoingbankingtransactionid_mutations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **outgoing_banking_transaction_id** | **str**| ID of the outgoing banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **add_entry_to_outgoing_banking_transaction_request** | [**AddEntryToOutgoingBankingTransactionRequest**](AddEntryToOutgoingBankingTransactionRequest.md)| Request containing the entry details. | [optional] 

### Return type

[**OutgoingMutationDTOApiResponseDTO**](OutgoingMutationDTOApiResponseDTO.md)

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

# **post_outgoingbankingtransactions_preview**
> OutgoingBankingTransactionPreviewDTOApiResponseDTO post_outgoingbankingtransactions_preview(zf_tuuid, zf_ouuid, name=name, id=id, get_invoices_query_params=get_invoices_query_params)

Provides a preview of the invoices to be assigned to outgoing banking transactions.

Provides a preview of the invoices to be assigned to outgoing banking transactions.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.get_invoices_query_params import GetInvoicesQueryParams
from billing_client.models.outgoing_banking_transaction_preview_dto_api_response_dto import OutgoingBankingTransactionPreviewDTOApiResponseDTO
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
    api_instance = billing_client.OutgoingBankingTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    get_invoices_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"invoiceType":["string"],"propertyGroupIds":["string"],"productId":"string","customerId":"string","contractId":"string","invoiceStatus":["string"],"paymentProcessStatus":["string"],"billingCompletenessId":"string","paymentMethod":"string","startDateTime":"string","endDateTime":"string","periodStartDateTime":"string","periodEndDateTime":"string","periodStartDateTimeBegin":"string","periodStartDateTimeEnd":"string","periodEndDateTimeBegin":"string","periodEndDateTimeEnd":"string","paidDateTimeBegin":"string","exportStatus":"string","collectionCaseId":"string","customerGroupId":"string","companyBankAccountId":"string"} # GetInvoicesQueryParams | Query parameters for filtering invoices. (optional)

    try:
        # Provides a preview of the invoices to be assigned to outgoing banking transactions.
        api_response = api_instance.post_outgoingbankingtransactions_preview(zf_tuuid, zf_ouuid, name=name, id=id, get_invoices_query_params=get_invoices_query_params)
        print("The response of OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_preview:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingBankingTransactionsApi->post_outgoingbankingtransactions_preview: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **get_invoices_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md)| Query parameters for filtering invoices. | [optional] 

### Return type

[**OutgoingBankingTransactionPreviewDTOApiResponseDTO**](OutgoingBankingTransactionPreviewDTOApiResponseDTO.md)

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

