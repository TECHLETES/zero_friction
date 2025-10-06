# configuration_client.PaymentTermsApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payment_terms**](PaymentTermsApi.md#create_payment_terms) | **POST** /PaymentTerms | Creates a new payment term.
[**delete_payment_terms**](PaymentTermsApi.md#delete_payment_terms) | **DELETE** /PaymentTerms/{paymenttermuuid} | Deletes a payment term by its identifier.
[**get_all_payment_terms**](PaymentTermsApi.md#get_all_payment_terms) | **GET** /PaymentTerms | Retrieves a paged list of payment terms with optional filtering and sorting.
[**get_payment_terms**](PaymentTermsApi.md#get_payment_terms) | **GET** /PaymentTerms/{paymenttermuuid} | Retrieves a specific payment term by its identifier.
[**update_payment_terms**](PaymentTermsApi.md#update_payment_terms) | **POST** /PaymentTerms/{paymenttermuuid} | Updates an existing payment term.


# **create_payment_terms**
> PaymentTermsDTOApiResponseDTO create_payment_terms(zf_tuuid, zf_ouuid, payment_terms_request=payment_terms_request)

Creates a new payment term.

Creates a new payment term.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.payment_terms_dto_api_response_dto import PaymentTermsDTOApiResponseDTO
from configuration_client.models.payment_terms_request import PaymentTermsRequest
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
    api_instance = configuration_client.PaymentTermsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    payment_terms_request = {"name":"string","amount":0,"paymentTermsFrequency":{}} # PaymentTermsRequest | The details of the payment term to create. (optional)

    try:
        # Creates a new payment term.
        api_response = api_instance.create_payment_terms(zf_tuuid, zf_ouuid, payment_terms_request=payment_terms_request)
        print("The response of PaymentTermsApi->create_payment_terms:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentTermsApi->create_payment_terms: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **payment_terms_request** | [**PaymentTermsRequest**](PaymentTermsRequest.md)| The details of the payment term to create. | [optional] 

### Return type

[**PaymentTermsDTOApiResponseDTO**](PaymentTermsDTOApiResponseDTO.md)

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

# **delete_payment_terms**
> BooleanApiResponseDTO delete_payment_terms(paymenttermuuid, zf_tuuid)

Deletes a payment term by its identifier.

Deletes a payment term by its identifier.

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
    api_instance = configuration_client.PaymentTermsApi(api_client)
    paymenttermuuid = 'paymenttermuuid_example' # str | The unique identifier of the payment term to delete.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID

    try:
        # Deletes a payment term by its identifier.
        api_response = api_instance.delete_payment_terms(paymenttermuuid, zf_tuuid)
        print("The response of PaymentTermsApi->delete_payment_terms:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentTermsApi->delete_payment_terms: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymenttermuuid** | **str**| The unique identifier of the payment term to delete. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 

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

# **get_all_payment_terms**
> PaymentTermsDTOPagedResponseModelDTOApiResponseDTO get_all_payment_terms(zf_tuuid, zf_ouuid, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)

Retrieves a paged list of payment terms with optional filtering and sorting.

Retrieves a paged list of payment terms with optional filtering and sorting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.payment_terms_dto_paged_response_model_dto_api_response_dto import PaymentTermsDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = configuration_client.PaymentTermsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    flex_search = 'flex_search_example' # str | Search term to filter payment terms. (optional)
    order_by = 'order_by_example' # str | Field to order the payment terms by. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of payment terms with optional filtering and sorting.
        api_response = api_instance.get_all_payment_terms(zf_tuuid, zf_ouuid, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)
        print("The response of PaymentTermsApi->get_all_payment_terms:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentTermsApi->get_all_payment_terms: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **flex_search** | **str**| Search term to filter payment terms. | [optional] 
 **order_by** | **str**| Field to order the payment terms by. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**PaymentTermsDTOPagedResponseModelDTOApiResponseDTO**](PaymentTermsDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_payment_terms**
> PaymentTermsDTOApiResponseDTO get_payment_terms(paymenttermuuid, zf_tuuid, zf_ouuid)

Retrieves a specific payment term by its identifier.

Retrieves a specific payment term by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.payment_terms_dto_api_response_dto import PaymentTermsDTOApiResponseDTO
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
    api_instance = configuration_client.PaymentTermsApi(api_client)
    paymenttermuuid = 'paymenttermuuid_example' # str | The unique identifier of the payment term.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific payment term by its identifier.
        api_response = api_instance.get_payment_terms(paymenttermuuid, zf_tuuid, zf_ouuid)
        print("The response of PaymentTermsApi->get_payment_terms:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentTermsApi->get_payment_terms: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymenttermuuid** | **str**| The unique identifier of the payment term. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PaymentTermsDTOApiResponseDTO**](PaymentTermsDTOApiResponseDTO.md)

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

# **update_payment_terms**
> PaymentTermsDTOApiResponseDTO update_payment_terms(paymenttermuuid, zf_tuuid, zf_ouuid, payment_terms_request=payment_terms_request)

Updates an existing payment term.

Updates an existing payment term.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.payment_terms_dto_api_response_dto import PaymentTermsDTOApiResponseDTO
from configuration_client.models.payment_terms_request import PaymentTermsRequest
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
    api_instance = configuration_client.PaymentTermsApi(api_client)
    paymenttermuuid = 'paymenttermuuid_example' # str | The unique identifier of the payment term to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    payment_terms_request = {"name":"string","amount":0,"paymentTermsFrequency":{}} # PaymentTermsRequest | The updated payment term details. (optional)

    try:
        # Updates an existing payment term.
        api_response = api_instance.update_payment_terms(paymenttermuuid, zf_tuuid, zf_ouuid, payment_terms_request=payment_terms_request)
        print("The response of PaymentTermsApi->update_payment_terms:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentTermsApi->update_payment_terms: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymenttermuuid** | **str**| The unique identifier of the payment term to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **payment_terms_request** | [**PaymentTermsRequest**](PaymentTermsRequest.md)| The updated payment term details. | [optional] 

### Return type

[**PaymentTermsDTOApiResponseDTO**](PaymentTermsDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

