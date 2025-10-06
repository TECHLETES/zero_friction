# metering_client.PrepaymentTransactionsApi

All URIs are relative to *https://api.zerofriction.co/api/me*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_prepayment_transaction**](PrepaymentTransactionsApi.md#create_prepayment_transaction) | **POST** /PrepaymentTransactions | Creates a new prepayment transaction.
[**get_all_prepayment_transactions**](PrepaymentTransactionsApi.md#get_all_prepayment_transactions) | **POST** /PrepaymentTransactions/filter | Retrieves a paged list of prepayment transactions based on specified filter criteria.


# **create_prepayment_transaction**
> PrepaymentTransactionDTOApiResponseDTO create_prepayment_transaction(zf_tuuid, zf_ouuid, create_prepayment_transaction_request=create_prepayment_transaction_request)

Creates a new prepayment transaction.

Creates a new prepayment transaction.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.create_prepayment_transaction_request import CreatePrepaymentTransactionRequest
from metering_client.models.prepayment_transaction_dto_api_response_dto import PrepaymentTransactionDTOApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.PrepaymentTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_prepayment_transaction_request = {"prepaymentAccountId":"string","processedDateTime":"string","origin":{},"type":{},"status":{},"amount":0} # CreatePrepaymentTransactionRequest | Details of the prepayment transaction to create. (optional)

    try:
        # Creates a new prepayment transaction.
        api_response = api_instance.create_prepayment_transaction(zf_tuuid, zf_ouuid, create_prepayment_transaction_request=create_prepayment_transaction_request)
        print("The response of PrepaymentTransactionsApi->create_prepayment_transaction:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PrepaymentTransactionsApi->create_prepayment_transaction: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_prepayment_transaction_request** | [**CreatePrepaymentTransactionRequest**](CreatePrepaymentTransactionRequest.md)| Details of the prepayment transaction to create. | [optional] 

### Return type

[**PrepaymentTransactionDTOApiResponseDTO**](PrepaymentTransactionDTOApiResponseDTO.md)

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

# **get_all_prepayment_transactions**
> PrepaymentTransactionDTOPagedResponseModelDTOApiResponseDTO get_all_prepayment_transactions(zf_tuuid, zf_ouuid, continuation_token=continuation_token, filter_prepayment_transaction_request=filter_prepayment_transaction_request)

Retrieves a paged list of prepayment transactions based on specified filter criteria.

Retrieves a paged list of prepayment transactions based on specified filter criteria.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.filter_prepayment_transaction_request import FilterPrepaymentTransactionRequest
from metering_client.models.prepayment_transaction_dto_paged_response_model_dto_api_response_dto import PrepaymentTransactionDTOPagedResponseModelDTOApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.PrepaymentTransactionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)
    filter_prepayment_transaction_request = {"meterId":"string","channelIdentifiers":["string"],"startDateTime":"string","endDateTime":"string","origin":{},"type":{},"limit":0,"orderBy":"string"} # FilterPrepaymentTransactionRequest | Filter criteria for transactions. (optional)

    try:
        # Retrieves a paged list of prepayment transactions based on specified filter criteria.
        api_response = api_instance.get_all_prepayment_transactions(zf_tuuid, zf_ouuid, continuation_token=continuation_token, filter_prepayment_transaction_request=filter_prepayment_transaction_request)
        print("The response of PrepaymentTransactionsApi->get_all_prepayment_transactions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PrepaymentTransactionsApi->get_all_prepayment_transactions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **continuation_token** | **str**| Token for pagination. | [optional] 
 **filter_prepayment_transaction_request** | [**FilterPrepaymentTransactionRequest**](FilterPrepaymentTransactionRequest.md)| Filter criteria for transactions. | [optional] 

### Return type

[**PrepaymentTransactionDTOPagedResponseModelDTOApiResponseDTO**](PrepaymentTransactionDTOPagedResponseModelDTOApiResponseDTO.md)

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

