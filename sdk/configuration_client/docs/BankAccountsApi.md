# configuration_client.BankAccountsApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_bankaccounts_bankaccuuid**](BankAccountsApi.md#delete_bankaccounts_bankaccuuid) | **DELETE** /BankAccounts/{bankaccuuid} | Deletes a bank account by its identifier.
[**get_all_bank_accounts**](BankAccountsApi.md#get_all_bank_accounts) | **GET** /BankAccounts | Retrieves a paged list of bank accounts with optional filtering and sorting.
[**get_bankaccounts_bankaccuuid**](BankAccountsApi.md#get_bankaccounts_bankaccuuid) | **GET** /BankAccounts/{bankaccuuid} | Retrieves a specific bank account by its identifier.
[**get_bankaccounts_count**](BankAccountsApi.md#get_bankaccounts_count) | **GET** /BankAccounts/count | Gets the total count of bank accounts within the organization.
[**post_bankaccounts**](BankAccountsApi.md#post_bankaccounts) | **POST** /BankAccounts | Creates a new bank account.
[**post_bankaccounts_bankaccuuid**](BankAccountsApi.md#post_bankaccounts_bankaccuuid) | **POST** /BankAccounts/{bankaccuuid} | Updates an existing bank account.


# **delete_bankaccounts_bankaccuuid**
> BooleanApiResponseDTO delete_bankaccounts_bankaccuuid(bankaccuuid, zf_tuuid, zf_ouuid)

Deletes a bank account by its identifier.

Deletes a bank account by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.BankAccountsApi(api_client)
    bankaccuuid = 'bankaccuuid_example' # str | The unique identifier of the bank account to delete.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes a bank account by its identifier.
        api_response = api_instance.delete_bankaccounts_bankaccuuid(bankaccuuid, zf_tuuid, zf_ouuid)
        print("The response of BankAccountsApi->delete_bankaccounts_bankaccuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BankAccountsApi->delete_bankaccounts_bankaccuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bankaccuuid** | **str**| The unique identifier of the bank account to delete. | 
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
**204** | No Content |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_bank_accounts**
> BankAccountDTOPagedResponseModelDTOApiResponseDTO get_all_bank_accounts(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)

Retrieves a paged list of bank accounts with optional filtering and sorting.

Retrieves a paged list of bank accounts with optional filtering and sorting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.bank_account_dto_paged_response_model_dto_api_response_dto import BankAccountDTOPagedResponseModelDTOApiResponseDTO
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.BankAccountsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    show_deleted = True # bool | When true, includes deleted bank accounts in the results. (optional)
    flex_search = 'flex_search_example' # str | Search term to filter accounts by various fields. (optional)
    order_by = 'order_by_example' # str | Sorting expression for the results. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of bank accounts with optional filtering and sorting.
        api_response = api_instance.get_all_bank_accounts(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)
        print("The response of BankAccountsApi->get_all_bank_accounts:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BankAccountsApi->get_all_bank_accounts: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **show_deleted** | **bool**| When true, includes deleted bank accounts in the results. | [optional] 
 **flex_search** | **str**| Search term to filter accounts by various fields. | [optional] 
 **order_by** | **str**| Sorting expression for the results. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**BankAccountDTOPagedResponseModelDTOApiResponseDTO**](BankAccountDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_bankaccounts_bankaccuuid**
> BankAccountDTOApiResponseDTO get_bankaccounts_bankaccuuid(bankaccuuid, zf_tuuid, zf_ouuid)

Retrieves a specific bank account by its identifier.

Retrieves a specific bank account by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.bank_account_dto_api_response_dto import BankAccountDTOApiResponseDTO
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.BankAccountsApi(api_client)
    bankaccuuid = 'bankaccuuid_example' # str | The unique identifier of the bank account.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific bank account by its identifier.
        api_response = api_instance.get_bankaccounts_bankaccuuid(bankaccuuid, zf_tuuid, zf_ouuid)
        print("The response of BankAccountsApi->get_bankaccounts_bankaccuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BankAccountsApi->get_bankaccounts_bankaccuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bankaccuuid** | **str**| The unique identifier of the bank account. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**BankAccountDTOApiResponseDTO**](BankAccountDTOApiResponseDTO.md)

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

# **get_bankaccounts_count**
> Int32ApiResponseDTO get_bankaccounts_count(zf_tuuid, zf_ouuid, count_deleted=count_deleted)

Gets the total count of bank accounts within the organization.

Gets the total count of bank accounts within the organization.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.int32_api_response_dto import Int32ApiResponseDTO
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.BankAccountsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    count_deleted = True # bool | When true, includes deleted bank accounts in the count. (optional)

    try:
        # Gets the total count of bank accounts within the organization.
        api_response = api_instance.get_bankaccounts_count(zf_tuuid, zf_ouuid, count_deleted=count_deleted)
        print("The response of BankAccountsApi->get_bankaccounts_count:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BankAccountsApi->get_bankaccounts_count: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **count_deleted** | **bool**| When true, includes deleted bank accounts in the count. | [optional] 

### Return type

[**Int32ApiResponseDTO**](Int32ApiResponseDTO.md)

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

# **post_bankaccounts**
> BankAccountDTOApiResponseDTO post_bankaccounts(zf_tuuid, zf_ouuid, create_bank_account_request=create_bank_account_request)

Creates a new bank account.

Creates a new bank account.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.bank_account_dto_api_response_dto import BankAccountDTOApiResponseDTO
from configuration_client.models.create_bank_account_request import CreateBankAccountRequest
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.BankAccountsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_bank_account_request = {"iban":"string","accountHolder":"string","bic":"string","sepaCreditorId":"string","isDefault":true} # CreateBankAccountRequest | The details of the bank account to create. (optional)

    try:
        # Creates a new bank account.
        api_response = api_instance.post_bankaccounts(zf_tuuid, zf_ouuid, create_bank_account_request=create_bank_account_request)
        print("The response of BankAccountsApi->post_bankaccounts:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BankAccountsApi->post_bankaccounts: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_bank_account_request** | [**CreateBankAccountRequest**](CreateBankAccountRequest.md)| The details of the bank account to create. | [optional] 

### Return type

[**BankAccountDTOApiResponseDTO**](BankAccountDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_bankaccounts_bankaccuuid**
> BankAccountDTOApiResponseDTO post_bankaccounts_bankaccuuid(bankaccuuid, zf_tuuid, zf_ouuid, update_bank_account_request=update_bank_account_request)

Updates an existing bank account.

Updates an existing bank account.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.bank_account_dto_api_response_dto import BankAccountDTOApiResponseDTO
from configuration_client.models.update_bank_account_request import UpdateBankAccountRequest
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.BankAccountsApi(api_client)
    bankaccuuid = 'bankaccuuid_example' # str | The unique identifier of the bank account to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_bank_account_request = {"bic":"string","accountHolder":"string","sepaCreditorId":"string","isDefault":true} # UpdateBankAccountRequest | The updated bank account details. (optional)

    try:
        # Updates an existing bank account.
        api_response = api_instance.post_bankaccounts_bankaccuuid(bankaccuuid, zf_tuuid, zf_ouuid, update_bank_account_request=update_bank_account_request)
        print("The response of BankAccountsApi->post_bankaccounts_bankaccuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BankAccountsApi->post_bankaccounts_bankaccuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bankaccuuid** | **str**| The unique identifier of the bank account to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_bank_account_request** | [**UpdateBankAccountRequest**](UpdateBankAccountRequest.md)| The updated bank account details. | [optional] 

### Return type

[**BankAccountDTOApiResponseDTO**](BankAccountDTOApiResponseDTO.md)

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

