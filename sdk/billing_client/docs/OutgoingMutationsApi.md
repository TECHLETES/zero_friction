# billing_client.OutgoingMutationsApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_outgoingmutations_outgoingmutationid**](OutgoingMutationsApi.md#delete_outgoingmutations_outgoingmutationid) | **DELETE** /OutgoingMutations/{outgoingMutationId} | Deletes an outgoing mutation by ID.
[**get_outgoingmutations_outgoingmutationid**](OutgoingMutationsApi.md#get_outgoingmutations_outgoingmutationid) | **GET** /OutgoingMutations/{outgoingMutationId} | Gets an outgoing mutation by ID.
[**get_outgoingmutations_search_outgoingmutationtype**](OutgoingMutationsApi.md#get_outgoingmutations_search_outgoingmutationtype) | **GET** /OutgoingMutations/search/{outgoingMutationType} | Gets all outgoing mutations by type.
[**post_outgoingmutations_bulk_delete**](OutgoingMutationsApi.md#post_outgoingmutations_bulk_delete) | **POST** /OutgoingMutations/bulk/delete | Bulk deletes outgoing mutations.
[**post_outgoingmutations_outgoingmutationid**](OutgoingMutationsApi.md#post_outgoingmutations_outgoingmutationid) | **POST** /OutgoingMutations/{outgoingMutationId} | Updates an outgoing mutation.


# **delete_outgoingmutations_outgoingmutationid**
> BooleanApiResponseDTO delete_outgoingmutations_outgoingmutationid(outgoing_mutation_id, zf_tuuid, zf_ouuid)

Deletes an outgoing mutation by ID.

Deletes an outgoing mutation by ID.

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
    api_instance = billing_client.OutgoingMutationsApi(api_client)
    outgoing_mutation_id = 'outgoing_mutation_id_example' # str | The ID of the outgoing mutation.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes an outgoing mutation by ID.
        api_response = api_instance.delete_outgoingmutations_outgoingmutationid(outgoing_mutation_id, zf_tuuid, zf_ouuid)
        print("The response of OutgoingMutationsApi->delete_outgoingmutations_outgoingmutationid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingMutationsApi->delete_outgoingmutations_outgoingmutationid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **outgoing_mutation_id** | **str**| The ID of the outgoing mutation. | 
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
**404** | Not Found |  -  |
**204** | No Content |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_outgoingmutations_outgoingmutationid**
> OutgoingMutationDTOApiResponseDTO get_outgoingmutations_outgoingmutationid(outgoing_mutation_id, zf_tuuid, zf_ouuid)

Gets an outgoing mutation by ID.

Gets an outgoing mutation by ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
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
    api_instance = billing_client.OutgoingMutationsApi(api_client)
    outgoing_mutation_id = 'outgoing_mutation_id_example' # str | The ID of the outgoing mutation.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Gets an outgoing mutation by ID.
        api_response = api_instance.get_outgoingmutations_outgoingmutationid(outgoing_mutation_id, zf_tuuid, zf_ouuid)
        print("The response of OutgoingMutationsApi->get_outgoingmutations_outgoingmutationid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingMutationsApi->get_outgoingmutations_outgoingmutationid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **outgoing_mutation_id** | **str**| The ID of the outgoing mutation. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**OutgoingMutationDTOApiResponseDTO**](OutgoingMutationDTOApiResponseDTO.md)

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

# **get_outgoingmutations_search_outgoingmutationtype**
> OutgoingMutationDTOPagedResponseModelDTOApiResponseDTO get_outgoingmutations_search_outgoingmutationtype(outgoing_mutation_type, zf_tuuid, zf_ouuid, iban=iban, status=status, order_by=order_by, continuation_token=continuation_token)

Gets all outgoing mutations by type.

Gets all outgoing mutations by type.

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
    api_instance = billing_client.OutgoingMutationsApi(api_client)
    outgoing_mutation_type = 'outgoing_mutation_type_example' # str | The type of the outgoing mutation.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    iban = 'iban_example' # str | The IBAN. (optional)
    status = 'status_example' # str | The status. (optional)
    order_by = 'order_by_example' # str | The order by. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token. (optional)

    try:
        # Gets all outgoing mutations by type.
        api_response = api_instance.get_outgoingmutations_search_outgoingmutationtype(outgoing_mutation_type, zf_tuuid, zf_ouuid, iban=iban, status=status, order_by=order_by, continuation_token=continuation_token)
        print("The response of OutgoingMutationsApi->get_outgoingmutations_search_outgoingmutationtype:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingMutationsApi->get_outgoingmutations_search_outgoingmutationtype: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **outgoing_mutation_type** | **str**| The type of the outgoing mutation. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **iban** | **str**| The IBAN. | [optional] 
 **status** | **str**| The status. | [optional] 
 **order_by** | **str**| The order by. | [optional] 
 **continuation_token** | **str**| The continuation token. | [optional] 

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

# **post_outgoingmutations_bulk_delete**
> OutgoingMutationDTOApiResponseDTO post_outgoingmutations_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_outgoing_mutation_request=bulk_delete_outgoing_mutation_request)

Bulk deletes outgoing mutations.

Bulk deletes outgoing mutations.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.bulk_delete_outgoing_mutation_request import BulkDeleteOutgoingMutationRequest
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
    api_instance = billing_client.OutgoingMutationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_delete_outgoing_mutation_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"outgoingBankingTransactionId":"string","status":"string","referenceType":"string"},"quickFilter":"string"} # BulkDeleteOutgoingMutationRequest | The bulk delete request. (optional)

    try:
        # Bulk deletes outgoing mutations.
        api_response = api_instance.post_outgoingmutations_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_outgoing_mutation_request=bulk_delete_outgoing_mutation_request)
        print("The response of OutgoingMutationsApi->post_outgoingmutations_bulk_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingMutationsApi->post_outgoingmutations_bulk_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_delete_outgoing_mutation_request** | [**BulkDeleteOutgoingMutationRequest**](BulkDeleteOutgoingMutationRequest.md)| The bulk delete request. | [optional] 

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
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_outgoingmutations_outgoingmutationid**
> OutgoingMutationDTOApiResponseDTO post_outgoingmutations_outgoingmutationid(outgoing_mutation_id, zf_tuuid, zf_ouuid, update_outgoing_mutation_entry_request=update_outgoing_mutation_entry_request)

Updates an outgoing mutation.

Updates an outgoing mutation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.outgoing_mutation_dto_api_response_dto import OutgoingMutationDTOApiResponseDTO
from billing_client.models.update_outgoing_mutation_entry_request import UpdateOutgoingMutationEntryRequest
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
    api_instance = billing_client.OutgoingMutationsApi(api_client)
    outgoing_mutation_id = 'outgoing_mutation_id_example' # str | The ID of the outgoing mutation.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_outgoing_mutation_entry_request = {"amount":0,"paymentReference":"string","iban":"string"} # UpdateOutgoingMutationEntryRequest | The update request. (optional)

    try:
        # Updates an outgoing mutation.
        api_response = api_instance.post_outgoingmutations_outgoingmutationid(outgoing_mutation_id, zf_tuuid, zf_ouuid, update_outgoing_mutation_entry_request=update_outgoing_mutation_entry_request)
        print("The response of OutgoingMutationsApi->post_outgoingmutations_outgoingmutationid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OutgoingMutationsApi->post_outgoingmutations_outgoingmutationid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **outgoing_mutation_id** | **str**| The ID of the outgoing mutation. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_outgoing_mutation_entry_request** | [**UpdateOutgoingMutationEntryRequest**](UpdateOutgoingMutationEntryRequest.md)| The update request. | [optional] 

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
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

