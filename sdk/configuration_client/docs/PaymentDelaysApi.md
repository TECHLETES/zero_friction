# configuration_client.PaymentDelaysApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_paymentdelays_paymentdelayuuid**](PaymentDelaysApi.md#delete_paymentdelays_paymentdelayuuid) | **DELETE** /PaymentDelays/{paymentdelayuuid} | Deletes a payment delay setting by its identifier.
[**get_paymentdelays**](PaymentDelaysApi.md#get_paymentdelays) | **GET** /PaymentDelays | Retrieves a paged list of payment delay settings.
[**get_paymentdelays_paymentdelayuuid**](PaymentDelaysApi.md#get_paymentdelays_paymentdelayuuid) | **GET** /PaymentDelays/{paymentdelayuuid} | Retrieves a specific payment delay setting by its identifier.
[**post_paymentdelays**](PaymentDelaysApi.md#post_paymentdelays) | **POST** /PaymentDelays | Creates a new payment delay setting.
[**post_paymentdelays_paymentdelayuuid**](PaymentDelaysApi.md#post_paymentdelays_paymentdelayuuid) | **POST** /PaymentDelays/{paymentdelayuuid} | Updates an existing payment delay setting.


# **delete_paymentdelays_paymentdelayuuid**
> BooleanApiResponseDTO delete_paymentdelays_paymentdelayuuid(paymentdelayuuid, zf_tuuid)

Deletes a payment delay setting by its identifier.

Deletes a payment delay setting by its identifier.

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
    api_instance = configuration_client.PaymentDelaysApi(api_client)
    paymentdelayuuid = 'paymentdelayuuid_example' # str | The unique identifier of the payment delay setting to delete.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID

    try:
        # Deletes a payment delay setting by its identifier.
        api_response = api_instance.delete_paymentdelays_paymentdelayuuid(paymentdelayuuid, zf_tuuid)
        print("The response of PaymentDelaysApi->delete_paymentdelays_paymentdelayuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentDelaysApi->delete_paymentdelays_paymentdelayuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentdelayuuid** | **str**| The unique identifier of the payment delay setting to delete. | 
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

# **get_paymentdelays**
> PaymentDelaySettingDTOPagedResponseModelDTOApiResponseDTO get_paymentdelays(zf_tuuid, zf_ouuid, continuation_token=continuation_token)

Retrieves a paged list of payment delay settings.

Retrieves a paged list of payment delay settings.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.payment_delay_setting_dto_paged_response_model_dto_api_response_dto import PaymentDelaySettingDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = configuration_client.PaymentDelaysApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of payment delay settings.
        api_response = api_instance.get_paymentdelays(zf_tuuid, zf_ouuid, continuation_token=continuation_token)
        print("The response of PaymentDelaysApi->get_paymentdelays:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentDelaysApi->get_paymentdelays: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**PaymentDelaySettingDTOPagedResponseModelDTOApiResponseDTO**](PaymentDelaySettingDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_paymentdelays_paymentdelayuuid**
> PaymentDelaySettingDTOApiResponseDTO get_paymentdelays_paymentdelayuuid(paymentdelayuuid, zf_tuuid, zf_ouuid)

Retrieves a specific payment delay setting by its identifier.

Retrieves a specific payment delay setting by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.payment_delay_setting_dto_api_response_dto import PaymentDelaySettingDTOApiResponseDTO
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
    api_instance = configuration_client.PaymentDelaysApi(api_client)
    paymentdelayuuid = 'paymentdelayuuid_example' # str | The unique identifier of the payment delay setting.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific payment delay setting by its identifier.
        api_response = api_instance.get_paymentdelays_paymentdelayuuid(paymentdelayuuid, zf_tuuid, zf_ouuid)
        print("The response of PaymentDelaysApi->get_paymentdelays_paymentdelayuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentDelaysApi->get_paymentdelays_paymentdelayuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentdelayuuid** | **str**| The unique identifier of the payment delay setting. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PaymentDelaySettingDTOApiResponseDTO**](PaymentDelaySettingDTOApiResponseDTO.md)

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

# **post_paymentdelays**
> PaymentDelaySettingDTOApiResponseDTO post_paymentdelays(zf_tuuid, zf_ouuid, create_payment_delay_request=create_payment_delay_request)

Creates a new payment delay setting.

Creates a new payment delay setting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.create_payment_delay_request import CreatePaymentDelayRequest
from configuration_client.models.payment_delay_setting_dto_api_response_dto import PaymentDelaySettingDTOApiResponseDTO
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
    api_instance = configuration_client.PaymentDelaysApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_payment_delay_request = {"invoiceType":{},"paymentDelay":{},"value":0} # CreatePaymentDelayRequest | The details of the payment delay setting to create. (optional)

    try:
        # Creates a new payment delay setting.
        api_response = api_instance.post_paymentdelays(zf_tuuid, zf_ouuid, create_payment_delay_request=create_payment_delay_request)
        print("The response of PaymentDelaysApi->post_paymentdelays:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentDelaysApi->post_paymentdelays: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_payment_delay_request** | [**CreatePaymentDelayRequest**](CreatePaymentDelayRequest.md)| The details of the payment delay setting to create. | [optional] 

### Return type

[**PaymentDelaySettingDTOApiResponseDTO**](PaymentDelaySettingDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_paymentdelays_paymentdelayuuid**
> PaymentDelaySettingDTOApiResponseDTO post_paymentdelays_paymentdelayuuid(paymentdelayuuid, zf_tuuid, zf_ouuid, update_payment_delay_request=update_payment_delay_request)

Updates an existing payment delay setting.

Updates an existing payment delay setting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.payment_delay_setting_dto_api_response_dto import PaymentDelaySettingDTOApiResponseDTO
from configuration_client.models.update_payment_delay_request import UpdatePaymentDelayRequest
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
    api_instance = configuration_client.PaymentDelaysApi(api_client)
    paymentdelayuuid = 'paymentdelayuuid_example' # str | The unique identifier of the payment delay setting to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_payment_delay_request = {"paymentDelay":{},"value":0} # UpdatePaymentDelayRequest | The updated payment delay setting details. (optional)

    try:
        # Updates an existing payment delay setting.
        api_response = api_instance.post_paymentdelays_paymentdelayuuid(paymentdelayuuid, zf_tuuid, zf_ouuid, update_payment_delay_request=update_payment_delay_request)
        print("The response of PaymentDelaysApi->post_paymentdelays_paymentdelayuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PaymentDelaysApi->post_paymentdelays_paymentdelayuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentdelayuuid** | **str**| The unique identifier of the payment delay setting to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_payment_delay_request** | [**UpdatePaymentDelayRequest**](UpdatePaymentDelayRequest.md)| The updated payment delay setting details. | [optional] 

### Return type

[**PaymentDelaySettingDTOApiResponseDTO**](PaymentDelaySettingDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

