# configuration_client.NumberSequencesApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_numbersequences**](NumberSequencesApi.md#get_numbersequences) | **GET** /NumberSequences | Retrieves a paged list of number sequences with optional filtering and sorting.
[**get_numbersequences_numbersequenceuuid**](NumberSequencesApi.md#get_numbersequences_numbersequenceuuid) | **GET** /NumberSequences/{numbersequenceuuid} | Retrieves a specific number sequence by its identifier.
[**post_numbersequences_numbersequenceuuid**](NumberSequencesApi.md#post_numbersequences_numbersequenceuuid) | **POST** /NumberSequences/{numbersequenceuuid} | Updates an existing number sequence configuration.
[**post_numbersequences_numbersequenceuuid_preview**](NumberSequencesApi.md#post_numbersequences_numbersequenceuuid_preview) | **POST** /NumberSequences/{numbersequenceuuid}/preview | Generates a preview of how a number sequence would appear after updating with the provided configuration.


# **get_numbersequences**
> NumberSequenceDTOPagedResponseModelDTOApiResponseDTO get_numbersequences(zf_tuuid, zf_ouuid, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)

Retrieves a paged list of number sequences with optional filtering and sorting.

Retrieves a paged list of number sequences with optional filtering and sorting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.number_sequence_dto_paged_response_model_dto_api_response_dto import NumberSequenceDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = configuration_client.NumberSequencesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    flex_search = 'flex_search_example' # str | Search term to filter number sequences. (optional)
    order_by = 'order_by_example' # str | Field to order the number sequences by. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of number sequences with optional filtering and sorting.
        api_response = api_instance.get_numbersequences(zf_tuuid, zf_ouuid, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)
        print("The response of NumberSequencesApi->get_numbersequences:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NumberSequencesApi->get_numbersequences: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **flex_search** | **str**| Search term to filter number sequences. | [optional] 
 **order_by** | **str**| Field to order the number sequences by. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**NumberSequenceDTOPagedResponseModelDTOApiResponseDTO**](NumberSequenceDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_numbersequences_numbersequenceuuid**
> NumberSequenceDTOApiResponseDTO get_numbersequences_numbersequenceuuid(numbersequenceuuid, zf_tuuid, zf_ouuid)

Retrieves a specific number sequence by its identifier.

Retrieves a specific number sequence by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.number_sequence_dto_api_response_dto import NumberSequenceDTOApiResponseDTO
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
    api_instance = configuration_client.NumberSequencesApi(api_client)
    numbersequenceuuid = 'numbersequenceuuid_example' # str | The unique identifier of the number sequence.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific number sequence by its identifier.
        api_response = api_instance.get_numbersequences_numbersequenceuuid(numbersequenceuuid, zf_tuuid, zf_ouuid)
        print("The response of NumberSequencesApi->get_numbersequences_numbersequenceuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NumberSequencesApi->get_numbersequences_numbersequenceuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **numbersequenceuuid** | **str**| The unique identifier of the number sequence. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**NumberSequenceDTOApiResponseDTO**](NumberSequenceDTOApiResponseDTO.md)

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

# **post_numbersequences_numbersequenceuuid**
> NumberSequenceDTOApiResponseDTO post_numbersequences_numbersequenceuuid(numbersequenceuuid, zf_tuuid, zf_ouuid, update_number_sequence_request=update_number_sequence_request)

Updates an existing number sequence configuration.

Updates an existing number sequence configuration.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.number_sequence_dto_api_response_dto import NumberSequenceDTOApiResponseDTO
from configuration_client.models.update_number_sequence_request import UpdateNumberSequenceRequest
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
    api_instance = configuration_client.NumberSequencesApi(api_client)
    numbersequenceuuid = 'numbersequenceuuid_example' # str | The unique identifier of the number sequence to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_number_sequence_request = {"lastValue":0,"segments":[{"segmentType":{},"segmentLookupValues":{}}],"formatString":"string","referenceEntity":{}} # UpdateNumberSequenceRequest | The updated number sequence configuration. (optional)

    try:
        # Updates an existing number sequence configuration.
        api_response = api_instance.post_numbersequences_numbersequenceuuid(numbersequenceuuid, zf_tuuid, zf_ouuid, update_number_sequence_request=update_number_sequence_request)
        print("The response of NumberSequencesApi->post_numbersequences_numbersequenceuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NumberSequencesApi->post_numbersequences_numbersequenceuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **numbersequenceuuid** | **str**| The unique identifier of the number sequence to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_number_sequence_request** | [**UpdateNumberSequenceRequest**](UpdateNumberSequenceRequest.md)| The updated number sequence configuration. | [optional] 

### Return type

[**NumberSequenceDTOApiResponseDTO**](NumberSequenceDTOApiResponseDTO.md)

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

# **post_numbersequences_numbersequenceuuid_preview**
> StringApiResponseDTO post_numbersequences_numbersequenceuuid_preview(numbersequenceuuid, zf_tuuid, zf_ouuid, update_number_sequence_request=update_number_sequence_request)

Generates a preview of how a number sequence would appear after updating with the provided configuration.

Generates a preview of how a number sequence would appear after updating with the provided configuration.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.string_api_response_dto import StringApiResponseDTO
from configuration_client.models.update_number_sequence_request import UpdateNumberSequenceRequest
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
    api_instance = configuration_client.NumberSequencesApi(api_client)
    numbersequenceuuid = 'numbersequenceuuid_example' # str | The unique identifier of the number sequence to preview.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_number_sequence_request = {"lastValue":0,"segments":[{"segmentType":{},"segmentLookupValues":{}}],"formatString":"string","referenceEntity":{}} # UpdateNumberSequenceRequest | The proposed changes to the number sequence configuration. (optional)

    try:
        # Generates a preview of how a number sequence would appear after updating with the provided configuration.
        api_response = api_instance.post_numbersequences_numbersequenceuuid_preview(numbersequenceuuid, zf_tuuid, zf_ouuid, update_number_sequence_request=update_number_sequence_request)
        print("The response of NumberSequencesApi->post_numbersequences_numbersequenceuuid_preview:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NumberSequencesApi->post_numbersequences_numbersequenceuuid_preview: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **numbersequenceuuid** | **str**| The unique identifier of the number sequence to preview. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_number_sequence_request** | [**UpdateNumberSequenceRequest**](UpdateNumberSequenceRequest.md)| The proposed changes to the number sequence configuration. | [optional] 

### Return type

[**StringApiResponseDTO**](StringApiResponseDTO.md)

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

