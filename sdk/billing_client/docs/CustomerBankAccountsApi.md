# billing_client.CustomerBankAccountsApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add**](CustomerBankAccountsApi.md#add) | **POST** /CustomerBankAccounts/c/{customeruuid}/add | Adds a new bank account for a specific customer.
[**confirm**](CustomerBankAccountsApi.md#confirm) | **POST** /CustomerBankAccounts/{customerBankAccountId}/confirm | Confirms a specific customer bank account.
[**delete**](CustomerBankAccountsApi.md#delete) | **DELETE** /CustomerBankAccounts/{customerBankAccountId}/delete | Deletes a specific customer bank account.
[**get_customerbankaccounts_c_customeruuid**](CustomerBankAccountsApi.md#get_customerbankaccounts_c_customeruuid) | **GET** /CustomerBankAccounts/c/{customeruuid} | Retrieves all bank accounts for a specific customer.
[**update**](CustomerBankAccountsApi.md#update) | **POST** /CustomerBankAccounts/{customerBankAccountId}/update | Updates a specific customer bank account.


# **add**
> CustomerBankAccountDTOApiResponseDTO add(customeruuid, zf_tuuid, zf_ouuid, add_customer_bank_account_request=add_customer_bank_account_request)

Adds a new bank account for a specific customer.

Adds a new bank account for a specific customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.add_customer_bank_account_request import AddCustomerBankAccountRequest
from billing_client.models.customer_bank_account_dto_api_response_dto import CustomerBankAccountDTOApiResponseDTO
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
    api_instance = billing_client.CustomerBankAccountsApi(api_client)
    customeruuid = 'customeruuid_example' # str | The UUID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    add_customer_bank_account_request = {"iban":"string","bic":"string","isDefault":true,"activeMandate":{"type":{},"signedDateTime":"string"}} # AddCustomerBankAccountRequest | The request containing the details for the new bank account. (optional)

    try:
        # Adds a new bank account for a specific customer.
        api_response = api_instance.add(customeruuid, zf_tuuid, zf_ouuid, add_customer_bank_account_request=add_customer_bank_account_request)
        print("The response of CustomerBankAccountsApi->add:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomerBankAccountsApi->add: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The UUID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **add_customer_bank_account_request** | [**AddCustomerBankAccountRequest**](AddCustomerBankAccountRequest.md)| The request containing the details for the new bank account. | [optional] 

### Return type

[**CustomerBankAccountDTOApiResponseDTO**](CustomerBankAccountDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **confirm**
> CustomerBankAccountDTOApiResponseDTO confirm(customer_bank_account_id, zf_tuuid, zf_ouuid)

Confirms a specific customer bank account.

Confirms a specific customer bank account.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.customer_bank_account_dto_api_response_dto import CustomerBankAccountDTOApiResponseDTO
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
    api_instance = billing_client.CustomerBankAccountsApi(api_client)
    customer_bank_account_id = 'customer_bank_account_id_example' # str | The ID of the customer bank account.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Confirms a specific customer bank account.
        api_response = api_instance.confirm(customer_bank_account_id, zf_tuuid, zf_ouuid)
        print("The response of CustomerBankAccountsApi->confirm:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomerBankAccountsApi->confirm: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_bank_account_id** | **str**| The ID of the customer bank account. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**CustomerBankAccountDTOApiResponseDTO**](CustomerBankAccountDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> BooleanApiResponseDTO delete(customer_bank_account_id, zf_tuuid, zf_ouuid)

Deletes a specific customer bank account.

Deletes a specific customer bank account.

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
    api_instance = billing_client.CustomerBankAccountsApi(api_client)
    customer_bank_account_id = 'customer_bank_account_id_example' # str | The ID of the customer bank account.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes a specific customer bank account.
        api_response = api_instance.delete(customer_bank_account_id, zf_tuuid, zf_ouuid)
        print("The response of CustomerBankAccountsApi->delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomerBankAccountsApi->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_bank_account_id** | **str**| The ID of the customer bank account. | 
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
**400** | Bad Request |  -  |
**204** | No Content |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_customerbankaccounts_c_customeruuid**
> CustomerBankAccountDTOPagedResponseModelDTOApiResponseDTO get_customerbankaccounts_c_customeruuid(customeruuid, zf_tuuid, zf_ouuid, has_mandate=has_mandate, order_by=order_by, continuation_token=continuation_token)

Retrieves all bank accounts for a specific customer.

Retrieves all bank accounts for a specific customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.customer_bank_account_dto_paged_response_model_dto_api_response_dto import CustomerBankAccountDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.CustomerBankAccountsApi(api_client)
    customeruuid = 'customeruuid_example' # str | The UUID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    has_mandate = True # bool | Optional filter to include only bank accounts with a mandate. (optional)
    order_by = 'order_by_example' # str | The order by clause. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)

    try:
        # Retrieves all bank accounts for a specific customer.
        api_response = api_instance.get_customerbankaccounts_c_customeruuid(customeruuid, zf_tuuid, zf_ouuid, has_mandate=has_mandate, order_by=order_by, continuation_token=continuation_token)
        print("The response of CustomerBankAccountsApi->get_customerbankaccounts_c_customeruuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomerBankAccountsApi->get_customerbankaccounts_c_customeruuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The UUID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **has_mandate** | **bool**| Optional filter to include only bank accounts with a mandate. | [optional] 
 **order_by** | **str**| The order by clause. | [optional] 
 **continuation_token** | **str**| The continuation token for pagination. | [optional] 

### Return type

[**CustomerBankAccountDTOPagedResponseModelDTOApiResponseDTO**](CustomerBankAccountDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **update**
> CustomerBankAccountDTOApiResponseDTO update(customer_bank_account_id, zf_tuuid, zf_ouuid, update_customer_bank_account_request=update_customer_bank_account_request)

Updates a specific customer bank account.

Updates a specific customer bank account.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.customer_bank_account_dto_api_response_dto import CustomerBankAccountDTOApiResponseDTO
from billing_client.models.update_customer_bank_account_request import UpdateCustomerBankAccountRequest
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
    api_instance = billing_client.CustomerBankAccountsApi(api_client)
    customer_bank_account_id = 'customer_bank_account_id_example' # str | The ID of the customer bank account.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_customer_bank_account_request = {"iban":"string","bic":"string","isDefault":true,"activeMandate":{"number":"string","type":{},"signedDateTime":"string"}} # UpdateCustomerBankAccountRequest | The request containing the updated details for the bank account. (optional)

    try:
        # Updates a specific customer bank account.
        api_response = api_instance.update(customer_bank_account_id, zf_tuuid, zf_ouuid, update_customer_bank_account_request=update_customer_bank_account_request)
        print("The response of CustomerBankAccountsApi->update:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomerBankAccountsApi->update: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_bank_account_id** | **str**| The ID of the customer bank account. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_customer_bank_account_request** | [**UpdateCustomerBankAccountRequest**](UpdateCustomerBankAccountRequest.md)| The request containing the updated details for the bank account. | [optional] 

### Return type

[**CustomerBankAccountDTOApiResponseDTO**](CustomerBankAccountDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

