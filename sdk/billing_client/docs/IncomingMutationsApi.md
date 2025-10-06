# billing_client.IncomingMutationsApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_incomingmutations_incomingmutationid_ignore**](IncomingMutationsApi.md#delete_incomingmutations_incomingmutationid_ignore) | **DELETE** /IncomingMutations/{incomingMutationId}/ignore | Ignores a specific incoming mutation.
[**get_incomingmutations_incomingmutationid**](IncomingMutationsApi.md#get_incomingmutations_incomingmutationid) | **GET** /IncomingMutations/{incomingMutationId} | Retrieves a specific incoming mutation by its ID.
[**get_incomingmutations_incomingmutationid_ibanstatus_calculate**](IncomingMutationsApi.md#get_incomingmutations_incomingmutationid_ibanstatus_calculate) | **GET** /IncomingMutations/{incomingMutationId}/ibanstatus/calculate | Calculates the IBAN confirmation status for a customer based on a specific incoming mutation.
[**post_incomingmutations_bulk_ignore**](IncomingMutationsApi.md#post_incomingmutations_bulk_ignore) | **POST** /IncomingMutations/bulk/ignore | Bulk ignores incoming mutations based on the provided request.
[**post_incomingmutations_bulk_reset**](IncomingMutationsApi.md#post_incomingmutations_bulk_reset) | **POST** /IncomingMutations/bulk/reset | Bulk resets the matching status of incoming mutations based on the provided request.
[**post_incomingmutations_incomingmutationid_manualmatch**](IncomingMutationsApi.md#post_incomingmutations_incomingmutationid_manualmatch) | **POST** /IncomingMutations/{incomingMutationId}/manualmatch | Manually matches a specific incoming mutation.
[**post_incomingmutations_incomingmutationid_reset**](IncomingMutationsApi.md#post_incomingmutations_incomingmutationid_reset) | **POST** /IncomingMutations/{incomingMutationId}/reset | Resets the matching status of a specific incoming mutation.


# **delete_incomingmutations_incomingmutationid_ignore**
> IncomingMutationDTOApiResponseDTO delete_incomingmutations_incomingmutationid_ignore(incoming_mutation_id, zf_tuuid, zf_ouuid)

Ignores a specific incoming mutation.

Ignores a specific incoming mutation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_mutation_dto_api_response_dto import IncomingMutationDTOApiResponseDTO
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
    api_instance = billing_client.IncomingMutationsApi(api_client)
    incoming_mutation_id = 'incoming_mutation_id_example' # str | ID of the incoming mutation.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Ignores a specific incoming mutation.
        api_response = api_instance.delete_incomingmutations_incomingmutationid_ignore(incoming_mutation_id, zf_tuuid, zf_ouuid)
        print("The response of IncomingMutationsApi->delete_incomingmutations_incomingmutationid_ignore:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingMutationsApi->delete_incomingmutations_incomingmutationid_ignore: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_mutation_id** | **str**| ID of the incoming mutation. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**IncomingMutationDTOApiResponseDTO**](IncomingMutationDTOApiResponseDTO.md)

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

# **get_incomingmutations_incomingmutationid**
> IncomingMutationDTOApiResponseDTO get_incomingmutations_incomingmutationid(incoming_mutation_id, zf_tuuid, zf_ouuid)

Retrieves a specific incoming mutation by its ID.

Retrieves a specific incoming mutation by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_mutation_dto_api_response_dto import IncomingMutationDTOApiResponseDTO
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
    api_instance = billing_client.IncomingMutationsApi(api_client)
    incoming_mutation_id = 'incoming_mutation_id_example' # str | ID of the incoming mutation.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific incoming mutation by its ID.
        api_response = api_instance.get_incomingmutations_incomingmutationid(incoming_mutation_id, zf_tuuid, zf_ouuid)
        print("The response of IncomingMutationsApi->get_incomingmutations_incomingmutationid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingMutationsApi->get_incomingmutations_incomingmutationid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_mutation_id** | **str**| ID of the incoming mutation. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**IncomingMutationDTOApiResponseDTO**](IncomingMutationDTOApiResponseDTO.md)

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

# **get_incomingmutations_incomingmutationid_ibanstatus_calculate**
> IncomingMutationIbanConfirmationStatusDTOApiResponseDTO get_incomingmutations_incomingmutationid_ibanstatus_calculate(incoming_mutation_id, zf_tuuid, zf_ouuid, customer_id=customer_id)

Calculates the IBAN confirmation status for a customer based on a specific incoming mutation.

Calculates the IBAN confirmation status for a customer based on a specific incoming mutation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_mutation_iban_confirmation_status_dto_api_response_dto import IncomingMutationIbanConfirmationStatusDTOApiResponseDTO
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
    api_instance = billing_client.IncomingMutationsApi(api_client)
    incoming_mutation_id = 'incoming_mutation_id_example' # str | ID of the incoming mutation.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    customer_id = 'customer_id_example' # str | ID of the customer. (optional)

    try:
        # Calculates the IBAN confirmation status for a customer based on a specific incoming mutation.
        api_response = api_instance.get_incomingmutations_incomingmutationid_ibanstatus_calculate(incoming_mutation_id, zf_tuuid, zf_ouuid, customer_id=customer_id)
        print("The response of IncomingMutationsApi->get_incomingmutations_incomingmutationid_ibanstatus_calculate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingMutationsApi->get_incomingmutations_incomingmutationid_ibanstatus_calculate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_mutation_id** | **str**| ID of the incoming mutation. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **customer_id** | **str**| ID of the customer. | [optional] 

### Return type

[**IncomingMutationIbanConfirmationStatusDTOApiResponseDTO**](IncomingMutationIbanConfirmationStatusDTOApiResponseDTO.md)

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

# **post_incomingmutations_bulk_ignore**
> ApiResponseDTO post_incomingmutations_bulk_ignore(zf_tuuid, zf_ouuid, bulk_ignore_incoming_mutations_request=bulk_ignore_incoming_mutations_request)

Bulk ignores incoming mutations based on the provided request.

Bulk ignores incoming mutations based on the provided request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.api_response_dto import ApiResponseDTO
from billing_client.models.bulk_ignore_incoming_mutations_request import BulkIgnoreIncomingMutationsRequest
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
    api_instance = billing_client.IncomingMutationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_ignore_incoming_mutations_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"status":"string","incomingMutationType":"string","incomingBankingTransactionId":"string","transactionDateStart":"string","transactionDateEnd":"string"},"quickFilter":"string"} # BulkIgnoreIncomingMutationsRequest | Request containing the details for bulk ignore. (optional)

    try:
        # Bulk ignores incoming mutations based on the provided request.
        api_response = api_instance.post_incomingmutations_bulk_ignore(zf_tuuid, zf_ouuid, bulk_ignore_incoming_mutations_request=bulk_ignore_incoming_mutations_request)
        print("The response of IncomingMutationsApi->post_incomingmutations_bulk_ignore:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingMutationsApi->post_incomingmutations_bulk_ignore: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_ignore_incoming_mutations_request** | [**BulkIgnoreIncomingMutationsRequest**](BulkIgnoreIncomingMutationsRequest.md)| Request containing the details for bulk ignore. | [optional] 

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

# **post_incomingmutations_bulk_reset**
> ApiResponseDTO post_incomingmutations_bulk_reset(zf_tuuid, zf_ouuid, bulk_reset_incoming_mutations_request=bulk_reset_incoming_mutations_request)

Bulk resets the matching status of incoming mutations based on the provided request.

Bulk resets the matching status of incoming mutations based on the provided request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.api_response_dto import ApiResponseDTO
from billing_client.models.bulk_reset_incoming_mutations_request import BulkResetIncomingMutationsRequest
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
    api_instance = billing_client.IncomingMutationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_reset_incoming_mutations_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"status":"string","incomingMutationType":"string","incomingBankingTransactionId":"string","transactionDateStart":"string","transactionDateEnd":"string"},"quickFilter":"string"} # BulkResetIncomingMutationsRequest | Request containing the details for bulk reset. (optional)

    try:
        # Bulk resets the matching status of incoming mutations based on the provided request.
        api_response = api_instance.post_incomingmutations_bulk_reset(zf_tuuid, zf_ouuid, bulk_reset_incoming_mutations_request=bulk_reset_incoming_mutations_request)
        print("The response of IncomingMutationsApi->post_incomingmutations_bulk_reset:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingMutationsApi->post_incomingmutations_bulk_reset: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_reset_incoming_mutations_request** | [**BulkResetIncomingMutationsRequest**](BulkResetIncomingMutationsRequest.md)| Request containing the details for bulk reset. | [optional] 

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

# **post_incomingmutations_incomingmutationid_manualmatch**
> IncomingMutationDTOApiResponseDTO post_incomingmutations_incomingmutationid_manualmatch(incoming_mutation_id, zf_tuuid, zf_ouuid, manual_match_incoming_mutation_request=manual_match_incoming_mutation_request)

Manually matches a specific incoming mutation.

Manually matches a specific incoming mutation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_mutation_dto_api_response_dto import IncomingMutationDTOApiResponseDTO
from billing_client.models.manual_match_incoming_mutation_request import ManualMatchIncomingMutationRequest
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
    api_instance = billing_client.IncomingMutationsApi(api_client)
    incoming_mutation_id = 'incoming_mutation_id_example' # str | ID of the incoming mutation.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    manual_match_incoming_mutation_request = {"outgoingBankingTransactionId":"string","outgoingMutationId":"string","customerId":"string","matchingTransactions":[{"matchingTransactionId":"string","amountToSettle":0}]} # ManualMatchIncomingMutationRequest | Request containing the details for manual matching. (optional)

    try:
        # Manually matches a specific incoming mutation.
        api_response = api_instance.post_incomingmutations_incomingmutationid_manualmatch(incoming_mutation_id, zf_tuuid, zf_ouuid, manual_match_incoming_mutation_request=manual_match_incoming_mutation_request)
        print("The response of IncomingMutationsApi->post_incomingmutations_incomingmutationid_manualmatch:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingMutationsApi->post_incomingmutations_incomingmutationid_manualmatch: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_mutation_id** | **str**| ID of the incoming mutation. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **manual_match_incoming_mutation_request** | [**ManualMatchIncomingMutationRequest**](ManualMatchIncomingMutationRequest.md)| Request containing the details for manual matching. | [optional] 

### Return type

[**IncomingMutationDTOApiResponseDTO**](IncomingMutationDTOApiResponseDTO.md)

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

# **post_incomingmutations_incomingmutationid_reset**
> IncomingMutationDTOApiResponseDTO post_incomingmutations_incomingmutationid_reset(incoming_mutation_id, zf_tuuid, zf_ouuid)

Resets the matching status of a specific incoming mutation.

Resets the matching status of a specific incoming mutation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_mutation_dto_api_response_dto import IncomingMutationDTOApiResponseDTO
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
    api_instance = billing_client.IncomingMutationsApi(api_client)
    incoming_mutation_id = 'incoming_mutation_id_example' # str | ID of the incoming mutation.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Resets the matching status of a specific incoming mutation.
        api_response = api_instance.post_incomingmutations_incomingmutationid_reset(incoming_mutation_id, zf_tuuid, zf_ouuid)
        print("The response of IncomingMutationsApi->post_incomingmutations_incomingmutationid_reset:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingMutationsApi->post_incomingmutations_incomingmutationid_reset: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_mutation_id** | **str**| ID of the incoming mutation. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**IncomingMutationDTOApiResponseDTO**](IncomingMutationDTOApiResponseDTO.md)

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

