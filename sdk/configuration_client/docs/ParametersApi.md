# configuration_client.ParametersApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_parameters_billing**](ParametersApi.md#get_parameters_billing) | **GET** /Parameters/billing | Retrieves the current billing parameters configuration.
[**get_parameters_communication**](ParametersApi.md#get_parameters_communication) | **GET** /Parameters/communication | Retrieves the current communication parameters configuration.
[**get_parameters_communication_domainauthentication**](ParametersApi.md#get_parameters_communication_domainauthentication) | **GET** /Parameters/communication/domainauthentication | Retrieves the current domain authentication parameters for communication.
[**get_parameters_metering**](ParametersApi.md#get_parameters_metering) | **GET** /Parameters/metering | Retrieves the current metering parameters configuration.
[**get_parameters_payment**](ParametersApi.md#get_parameters_payment) | **GET** /Parameters/payment | Retrieves the current payment parameters configuration.
[**post_parameters_billing**](ParametersApi.md#post_parameters_billing) | **POST** /Parameters/billing | Updates the billing parameters configuration.
[**post_parameters_communication**](ParametersApi.md#post_parameters_communication) | **POST** /Parameters/communication | Updates the communication parameters configuration.
[**post_parameters_communication_domainauthentication**](ParametersApi.md#post_parameters_communication_domainauthentication) | **POST** /Parameters/communication/domainauthentication | Updates the domain authentication parameters for communication.
[**post_parameters_communication_domainauthentication_verify**](ParametersApi.md#post_parameters_communication_domainauthentication_verify) | **POST** /Parameters/communication/domainauthentication/verify | Verifies the current domain authentication parameters.
[**post_parameters_communication_test**](ParametersApi.md#post_parameters_communication_test) | **POST** /Parameters/communication/test | Tests the communication parameters by sending a test email.
[**post_parameters_metering**](ParametersApi.md#post_parameters_metering) | **POST** /Parameters/metering | Updates the metering parameters configuration.
[**post_parameters_payment**](ParametersApi.md#post_parameters_payment) | **POST** /Parameters/payment | Updates the payment parameters configuration.


# **get_parameters_billing**
> BillingParametersDTOApiResponseDTO get_parameters_billing(zf_tuuid, zf_ouuid)

Retrieves the current billing parameters configuration.

Retrieves the current billing parameters configuration.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.billing_parameters_dto_api_response_dto import BillingParametersDTOApiResponseDTO
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
    api_instance = configuration_client.ParametersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves the current billing parameters configuration.
        api_response = api_instance.get_parameters_billing(zf_tuuid, zf_ouuid)
        print("The response of ParametersApi->get_parameters_billing:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ParametersApi->get_parameters_billing: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**BillingParametersDTOApiResponseDTO**](BillingParametersDTOApiResponseDTO.md)

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

# **get_parameters_communication**
> CommunicationParametersDTOApiResponseDTO get_parameters_communication(zf_tuuid, zf_ouuid)

Retrieves the current communication parameters configuration.

Retrieves the current communication parameters configuration.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.communication_parameters_dto_api_response_dto import CommunicationParametersDTOApiResponseDTO
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
    api_instance = configuration_client.ParametersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves the current communication parameters configuration.
        api_response = api_instance.get_parameters_communication(zf_tuuid, zf_ouuid)
        print("The response of ParametersApi->get_parameters_communication:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ParametersApi->get_parameters_communication: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**CommunicationParametersDTOApiResponseDTO**](CommunicationParametersDTOApiResponseDTO.md)

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

# **get_parameters_communication_domainauthentication**
> DomainAuthenticationParametersDTOApiResponseDTO get_parameters_communication_domainauthentication(zf_tuuid, zf_ouuid)

Retrieves the current domain authentication parameters for communication.

Retrieves the current domain authentication parameters for communication.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.domain_authentication_parameters_dto_api_response_dto import DomainAuthenticationParametersDTOApiResponseDTO
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
    api_instance = configuration_client.ParametersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves the current domain authentication parameters for communication.
        api_response = api_instance.get_parameters_communication_domainauthentication(zf_tuuid, zf_ouuid)
        print("The response of ParametersApi->get_parameters_communication_domainauthentication:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ParametersApi->get_parameters_communication_domainauthentication: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**DomainAuthenticationParametersDTOApiResponseDTO**](DomainAuthenticationParametersDTOApiResponseDTO.md)

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

# **get_parameters_metering**
> MeteringParametersDTOApiResponseDTO get_parameters_metering(zf_tuuid, zf_ouuid)

Retrieves the current metering parameters configuration.

Retrieves the current metering parameters configuration.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.metering_parameters_dto_api_response_dto import MeteringParametersDTOApiResponseDTO
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
    api_instance = configuration_client.ParametersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves the current metering parameters configuration.
        api_response = api_instance.get_parameters_metering(zf_tuuid, zf_ouuid)
        print("The response of ParametersApi->get_parameters_metering:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ParametersApi->get_parameters_metering: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**MeteringParametersDTOApiResponseDTO**](MeteringParametersDTOApiResponseDTO.md)

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

# **get_parameters_payment**
> PaymentParametersDTOApiResponseDTO get_parameters_payment(zf_tuuid, zf_ouuid)

Retrieves the current payment parameters configuration.

Retrieves the current payment parameters configuration.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.payment_parameters_dto_api_response_dto import PaymentParametersDTOApiResponseDTO
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
    api_instance = configuration_client.ParametersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves the current payment parameters configuration.
        api_response = api_instance.get_parameters_payment(zf_tuuid, zf_ouuid)
        print("The response of ParametersApi->get_parameters_payment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ParametersApi->get_parameters_payment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PaymentParametersDTOApiResponseDTO**](PaymentParametersDTOApiResponseDTO.md)

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

# **post_parameters_billing**
> BillingParametersDTOApiResponseDTO post_parameters_billing(zf_tuuid, zf_ouuid, update_billing_parameters_request=update_billing_parameters_request)

Updates the billing parameters configuration.

Updates the billing parameters configuration.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.billing_parameters_dto_api_response_dto import BillingParametersDTOApiResponseDTO
from configuration_client.models.update_billing_parameters_request import UpdateBillingParametersRequest
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
    api_instance = configuration_client.ParametersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_billing_parameters_request = {"skipApproval":true,"skipPayment":true,"enableUBL":true,"disableAutomaticBillingProcesses":true,"daysAfterInvoiceCheckpointDateToCreateInvoice":0,"daysBeforeAdvanceStartDateToCreateAdvance":0,"enableInvoiceCollection":true,"collectionBorderInvoiceCreatedDateTime":"string","collectionWriteOffHandling":{},"groupInvoiceCollectionByCustomer":true,"doNotCreditAdvancesWhenUnpaid":true,"advanceAmountLowerThreshold":0,"defaultTaxCodeForPersonAdvances":"string","defaultTaxCodeForOrganisationAdvances":"string","prepaymentParameters":{"emergencyCredit":0,"enableDeduction":true,"deductionRate":0},"advanceCalculationParameters":{"recalculationType":{},"advanceLimitType":{},"advanceLimitLowerThreshold":0,"advanceLimitUpperThreshold":0,"minimumAccuracy":{}}} # UpdateBillingParametersRequest | The updated billing parameters. (optional)

    try:
        # Updates the billing parameters configuration.
        api_response = api_instance.post_parameters_billing(zf_tuuid, zf_ouuid, update_billing_parameters_request=update_billing_parameters_request)
        print("The response of ParametersApi->post_parameters_billing:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ParametersApi->post_parameters_billing: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_billing_parameters_request** | [**UpdateBillingParametersRequest**](UpdateBillingParametersRequest.md)| The updated billing parameters. | [optional] 

### Return type

[**BillingParametersDTOApiResponseDTO**](BillingParametersDTOApiResponseDTO.md)

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

# **post_parameters_communication**
> CommunicationParametersDTOApiResponseDTO post_parameters_communication(zf_tuuid, zf_ouuid, update_communication_parameters_request=update_communication_parameters_request)

Updates the communication parameters configuration.

Updates the communication parameters configuration.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.communication_parameters_dto_api_response_dto import CommunicationParametersDTOApiResponseDTO
from configuration_client.models.update_communication_parameters_request import UpdateCommunicationParametersRequest
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
    api_instance = configuration_client.ParametersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_communication_parameters_request = {"enabled":true,"senderEmailAddress":"string","senderName":"string","replyToEmailAddress":"string","replyToName":"string","isSandboxed":true,"sandboxRecipientEmail":"string","sandboxRecipientPhoneNumber":"string"} # UpdateCommunicationParametersRequest | The updated communication parameters. (optional)

    try:
        # Updates the communication parameters configuration.
        api_response = api_instance.post_parameters_communication(zf_tuuid, zf_ouuid, update_communication_parameters_request=update_communication_parameters_request)
        print("The response of ParametersApi->post_parameters_communication:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ParametersApi->post_parameters_communication: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_communication_parameters_request** | [**UpdateCommunicationParametersRequest**](UpdateCommunicationParametersRequest.md)| The updated communication parameters. | [optional] 

### Return type

[**CommunicationParametersDTOApiResponseDTO**](CommunicationParametersDTOApiResponseDTO.md)

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

# **post_parameters_communication_domainauthentication**
> DomainAuthenticationParametersDTOApiResponseDTO post_parameters_communication_domainauthentication(zf_tuuid, zf_ouuid, update_domain_authentication_parameters_request=update_domain_authentication_parameters_request)

Updates the domain authentication parameters for communication.

Updates the domain authentication parameters for communication.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.domain_authentication_parameters_dto_api_response_dto import DomainAuthenticationParametersDTOApiResponseDTO
from configuration_client.models.update_domain_authentication_parameters_request import UpdateDomainAuthenticationParametersRequest
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
    api_instance = configuration_client.ParametersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_domain_authentication_parameters_request = {"domainName":"string"} # UpdateDomainAuthenticationParametersRequest | The updated domain authentication parameters. (optional)

    try:
        # Updates the domain authentication parameters for communication.
        api_response = api_instance.post_parameters_communication_domainauthentication(zf_tuuid, zf_ouuid, update_domain_authentication_parameters_request=update_domain_authentication_parameters_request)
        print("The response of ParametersApi->post_parameters_communication_domainauthentication:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ParametersApi->post_parameters_communication_domainauthentication: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_domain_authentication_parameters_request** | [**UpdateDomainAuthenticationParametersRequest**](UpdateDomainAuthenticationParametersRequest.md)| The updated domain authentication parameters. | [optional] 

### Return type

[**DomainAuthenticationParametersDTOApiResponseDTO**](DomainAuthenticationParametersDTOApiResponseDTO.md)

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

# **post_parameters_communication_domainauthentication_verify**
> DomainAuthenticationParametersDTOApiResponseDTO post_parameters_communication_domainauthentication_verify(zf_tuuid, zf_ouuid)

Verifies the current domain authentication parameters.

Verifies the current domain authentication parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.domain_authentication_parameters_dto_api_response_dto import DomainAuthenticationParametersDTOApiResponseDTO
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
    api_instance = configuration_client.ParametersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Verifies the current domain authentication parameters.
        api_response = api_instance.post_parameters_communication_domainauthentication_verify(zf_tuuid, zf_ouuid)
        print("The response of ParametersApi->post_parameters_communication_domainauthentication_verify:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ParametersApi->post_parameters_communication_domainauthentication_verify: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**DomainAuthenticationParametersDTOApiResponseDTO**](DomainAuthenticationParametersDTOApiResponseDTO.md)

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

# **post_parameters_communication_test**
> CommunicationParametersDTOApiResponseDTO post_parameters_communication_test(zf_tuuid, zf_ouuid, receiver_email_address=receiver_email_address)

Tests the communication parameters by sending a test email.

Tests the communication parameters by sending a test email.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.communication_parameters_dto_api_response_dto import CommunicationParametersDTOApiResponseDTO
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
    api_instance = configuration_client.ParametersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    receiver_email_address = 'receiver_email_address_example' # str | The email address to send the test message to. (optional)

    try:
        # Tests the communication parameters by sending a test email.
        api_response = api_instance.post_parameters_communication_test(zf_tuuid, zf_ouuid, receiver_email_address=receiver_email_address)
        print("The response of ParametersApi->post_parameters_communication_test:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ParametersApi->post_parameters_communication_test: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **receiver_email_address** | **str**| The email address to send the test message to. | [optional] 

### Return type

[**CommunicationParametersDTOApiResponseDTO**](CommunicationParametersDTOApiResponseDTO.md)

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

# **post_parameters_metering**
> MeteringParametersDTOApiResponseDTO post_parameters_metering(zf_tuuid, zf_ouuid, update_metering_parameters_request=update_metering_parameters_request)

Updates the metering parameters configuration.

Updates the metering parameters configuration.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.metering_parameters_dto_api_response_dto import MeteringParametersDTOApiResponseDTO
from configuration_client.models.update_metering_parameters_request import UpdateMeteringParametersRequest
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
    api_instance = configuration_client.ParametersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_metering_parameters_request = {"validationRules":[{"error":{},"enabled":true}]} # UpdateMeteringParametersRequest | The updated metering parameters. (optional)

    try:
        # Updates the metering parameters configuration.
        api_response = api_instance.post_parameters_metering(zf_tuuid, zf_ouuid, update_metering_parameters_request=update_metering_parameters_request)
        print("The response of ParametersApi->post_parameters_metering:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ParametersApi->post_parameters_metering: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_metering_parameters_request** | [**UpdateMeteringParametersRequest**](UpdateMeteringParametersRequest.md)| The updated metering parameters. | [optional] 

### Return type

[**MeteringParametersDTOApiResponseDTO**](MeteringParametersDTOApiResponseDTO.md)

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

# **post_parameters_payment**
> PaymentParametersDTOApiResponseDTO post_parameters_payment(zf_tuuid, zf_ouuid, update_payment_parameters_request=update_payment_parameters_request)

Updates the payment parameters configuration.

Updates the payment parameters configuration.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.payment_parameters_dto_api_response_dto import PaymentParametersDTOApiResponseDTO
from configuration_client.models.update_payment_parameters_request import UpdatePaymentParametersRequest
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
    api_instance = configuration_client.ParametersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_payment_parameters_request = {"retryParameters":[{"retryAttempt":0,"retryAction":{},"value":0}],"refundPaymentDelayInDays":0,"paymentTermsId":"string","defaultCollectionFlowId":"string","onlyUseInvoiceNumberInPaymentReferences":true} # UpdatePaymentParametersRequest | The updated payment parameters. (optional)

    try:
        # Updates the payment parameters configuration.
        api_response = api_instance.post_parameters_payment(zf_tuuid, zf_ouuid, update_payment_parameters_request=update_payment_parameters_request)
        print("The response of ParametersApi->post_parameters_payment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ParametersApi->post_parameters_payment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_payment_parameters_request** | [**UpdatePaymentParametersRequest**](UpdatePaymentParametersRequest.md)| The updated payment parameters. | [optional] 

### Return type

[**PaymentParametersDTOApiResponseDTO**](PaymentParametersDTOApiResponseDTO.md)

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

