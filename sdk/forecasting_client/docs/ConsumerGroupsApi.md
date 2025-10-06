# forecasting_client.ConsumerGroupsApi

All URIs are relative to *https://api.zerofriction.co/api/fct*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_consumer_group**](ConsumerGroupsApi.md#delete_consumer_group) | **DELETE** /ConsumerGroups/{consumergroupid} | Deletes a consumer group by its identifier
[**get_available_utility_types**](ConsumerGroupsApi.md#get_available_utility_types) | **GET** /ConsumerGroups/availableutilitytypes | Retrieves the available utility types applicable for consumer groups
[**get_consumer_group**](ConsumerGroupsApi.md#get_consumer_group) | **GET** /ConsumerGroups/{consumergroupid} | Retrieves a specific consumer group by its identifier
[**get_consumer_group_and_convert**](ConsumerGroupsApi.md#get_consumer_group_and_convert) | **GET** /ConsumerGroups/{consumergroupid}/{uom} | Retrieves a specific consumer group by its identifier and converts to the specified unit of measure
[**get_consumergroups**](ConsumerGroupsApi.md#get_consumergroups) | **GET** /ConsumerGroups | Retrieves all consumer groups
[**get_service_location_matching_consumer_groups**](ConsumerGroupsApi.md#get_service_location_matching_consumer_groups) | **POST** /ConsumerGroups/servicelocation/matchingconsumergroups | Retrieves the matching consumer groups for a specific property group
[**post_consumergroups**](ConsumerGroupsApi.md#post_consumergroups) | **POST** /ConsumerGroups | Creates a new consumer group
[**update_consumer_group**](ConsumerGroupsApi.md#update_consumer_group) | **PUT** /ConsumerGroups/{consumergroupid} | Updates an existing consumer group


# **delete_consumer_group**
> BooleanApiResponseDTO delete_consumer_group(consumergroupid, zf_tuuid, zf_ouuid)

Deletes a consumer group by its identifier

Deletes a consumer group by its identifier

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from forecasting_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/fct
# See configuration.py for a list of all supported configuration parameters.
configuration = forecasting_client.Configuration(
    host = "https://api.zerofriction.co/api/fct"
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
with forecasting_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = forecasting_client.ConsumerGroupsApi(api_client)
    consumergroupid = 'consumergroupid_example' # str | The unique identifier of the consumer group to delete
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes a consumer group by its identifier
        api_response = api_instance.delete_consumer_group(consumergroupid, zf_tuuid, zf_ouuid)
        print("The response of ConsumerGroupsApi->delete_consumer_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumerGroupsApi->delete_consumer_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumergroupid** | **str**| The unique identifier of the consumer group to delete | 
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
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_available_utility_types**
> UtilityTypePagedResponseModelDTOApiResponseDTO get_available_utility_types(zf_tuuid, zf_ouuid)

Retrieves the available utility types applicable for consumer groups

Retrieves the available utility types applicable for consumer groups

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.utility_type_paged_response_model_dto_api_response_dto import UtilityTypePagedResponseModelDTOApiResponseDTO
from forecasting_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/fct
# See configuration.py for a list of all supported configuration parameters.
configuration = forecasting_client.Configuration(
    host = "https://api.zerofriction.co/api/fct"
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
with forecasting_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = forecasting_client.ConsumerGroupsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves the available utility types applicable for consumer groups
        api_response = api_instance.get_available_utility_types(zf_tuuid, zf_ouuid)
        print("The response of ConsumerGroupsApi->get_available_utility_types:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumerGroupsApi->get_available_utility_types: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**UtilityTypePagedResponseModelDTOApiResponseDTO**](UtilityTypePagedResponseModelDTOApiResponseDTO.md)

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

# **get_consumer_group**
> ConsumerGroupDTOApiResponseDTO get_consumer_group(consumergroupid, zf_tuuid, zf_ouuid)

Retrieves a specific consumer group by its identifier

Retrieves a specific consumer group by its identifier

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.consumer_group_dto_api_response_dto import ConsumerGroupDTOApiResponseDTO
from forecasting_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/fct
# See configuration.py for a list of all supported configuration parameters.
configuration = forecasting_client.Configuration(
    host = "https://api.zerofriction.co/api/fct"
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
with forecasting_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = forecasting_client.ConsumerGroupsApi(api_client)
    consumergroupid = 'consumergroupid_example' # str | The unique identifier of the consumer group
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific consumer group by its identifier
        api_response = api_instance.get_consumer_group(consumergroupid, zf_tuuid, zf_ouuid)
        print("The response of ConsumerGroupsApi->get_consumer_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumerGroupsApi->get_consumer_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumergroupid** | **str**| The unique identifier of the consumer group | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**ConsumerGroupDTOApiResponseDTO**](ConsumerGroupDTOApiResponseDTO.md)

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

# **get_consumer_group_and_convert**
> ConsumerGroupDTOApiResponseDTO get_consumer_group_and_convert(consumergroupid, uom, zf_tuuid, zf_ouuid)

Retrieves a specific consumer group by its identifier and converts to the specified unit of measure

Retrieves a specific consumer group by its identifier and converts to the specified unit of measure

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.consumer_group_dto_api_response_dto import ConsumerGroupDTOApiResponseDTO
from forecasting_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/fct
# See configuration.py for a list of all supported configuration parameters.
configuration = forecasting_client.Configuration(
    host = "https://api.zerofriction.co/api/fct"
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
with forecasting_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = forecasting_client.ConsumerGroupsApi(api_client)
    consumergroupid = 'consumergroupid_example' # str | The unique identifier of the consumer group
    uom = 'uom_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific consumer group by its identifier and converts to the specified unit of measure
        api_response = api_instance.get_consumer_group_and_convert(consumergroupid, uom, zf_tuuid, zf_ouuid)
        print("The response of ConsumerGroupsApi->get_consumer_group_and_convert:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumerGroupsApi->get_consumer_group_and_convert: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumergroupid** | **str**| The unique identifier of the consumer group | 
 **uom** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**ConsumerGroupDTOApiResponseDTO**](ConsumerGroupDTOApiResponseDTO.md)

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

# **get_consumergroups**
> ConsumerGroupDTOPagedResponseModelDTOApiResponseDTO get_consumergroups(zf_tuuid, zf_ouuid, show_deleted=show_deleted, origin=origin, utility_type=utility_type, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)

Retrieves all consumer groups

Retrieves all consumer groups

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.consumer_group_dto_paged_response_model_dto_api_response_dto import ConsumerGroupDTOPagedResponseModelDTOApiResponseDTO
from forecasting_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/fct
# See configuration.py for a list of all supported configuration parameters.
configuration = forecasting_client.Configuration(
    host = "https://api.zerofriction.co/api/fct"
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
with forecasting_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = forecasting_client.ConsumerGroupsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    show_deleted = True # bool | When true, includes deleted consumer groups in the results. (optional)
    origin = 'origin_example' # str | The origin of the consumer groups (optional)
    utility_type = 'utility_type_example' # str | Utility type of the consumer groups (optional)
    flex_search = 'flex_search_example' # str | Search term to filter accounts by various fields. (optional)
    order_by = 'order_by_example' # str | Sorting expression for the results. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves all consumer groups
        api_response = api_instance.get_consumergroups(zf_tuuid, zf_ouuid, show_deleted=show_deleted, origin=origin, utility_type=utility_type, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)
        print("The response of ConsumerGroupsApi->get_consumergroups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumerGroupsApi->get_consumergroups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **show_deleted** | **bool**| When true, includes deleted consumer groups in the results. | [optional] 
 **origin** | **str**| The origin of the consumer groups | [optional] 
 **utility_type** | **str**| Utility type of the consumer groups | [optional] 
 **flex_search** | **str**| Search term to filter accounts by various fields. | [optional] 
 **order_by** | **str**| Sorting expression for the results. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**ConsumerGroupDTOPagedResponseModelDTOApiResponseDTO**](ConsumerGroupDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_service_location_matching_consumer_groups**
> GetServiceLocationMatchingConsumerGroupsDTOApiResponseDTO get_service_location_matching_consumer_groups(zf_tuuid, zf_ouuid, get_service_location_matching_consumer_groups_request=get_service_location_matching_consumer_groups_request)

Retrieves the matching consumer groups for a specific property group

Retrieves the matching consumer groups for a specific property group

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.get_service_location_matching_consumer_groups_dto_api_response_dto import GetServiceLocationMatchingConsumerGroupsDTOApiResponseDTO
from forecasting_client.models.get_service_location_matching_consumer_groups_request import GetServiceLocationMatchingConsumerGroupsRequest
from forecasting_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/fct
# See configuration.py for a list of all supported configuration parameters.
configuration = forecasting_client.Configuration(
    host = "https://api.zerofriction.co/api/fct"
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
with forecasting_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = forecasting_client.ConsumerGroupsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    get_service_location_matching_consumer_groups_request = {"propertyGroupId":"string","productId":"string","utilityType":{}} # GetServiceLocationMatchingConsumerGroupsRequest | The request for retrieving matching consumer groups for a specific property group (optional)

    try:
        # Retrieves the matching consumer groups for a specific property group
        api_response = api_instance.get_service_location_matching_consumer_groups(zf_tuuid, zf_ouuid, get_service_location_matching_consumer_groups_request=get_service_location_matching_consumer_groups_request)
        print("The response of ConsumerGroupsApi->get_service_location_matching_consumer_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumerGroupsApi->get_service_location_matching_consumer_groups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **get_service_location_matching_consumer_groups_request** | [**GetServiceLocationMatchingConsumerGroupsRequest**](GetServiceLocationMatchingConsumerGroupsRequest.md)| The request for retrieving matching consumer groups for a specific property group | [optional] 

### Return type

[**GetServiceLocationMatchingConsumerGroupsDTOApiResponseDTO**](GetServiceLocationMatchingConsumerGroupsDTOApiResponseDTO.md)

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

# **post_consumergroups**
> ConsumerGroupDTOApiResponseDTO post_consumergroups(zf_tuuid, zf_ouuid, create_consumer_group_request=create_consumer_group_request)

Creates a new consumer group

Creates a new consumer group

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.consumer_group_dto_api_response_dto import ConsumerGroupDTOApiResponseDTO
from forecasting_client.models.create_consumer_group_request import CreateConsumerGroupRequest
from forecasting_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/fct
# See configuration.py for a list of all supported configuration parameters.
configuration = forecasting_client.Configuration(
    host = "https://api.zerofriction.co/api/fct"
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
with forecasting_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = forecasting_client.ConsumerGroupsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_consumer_group_request = {"code":"string","description":"string","utilityType":{},"unitOfMeasure":{},"estimatedAnnualVolume":0} # CreateConsumerGroupRequest | The details of the consumer group to create (optional)

    try:
        # Creates a new consumer group
        api_response = api_instance.post_consumergroups(zf_tuuid, zf_ouuid, create_consumer_group_request=create_consumer_group_request)
        print("The response of ConsumerGroupsApi->post_consumergroups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumerGroupsApi->post_consumergroups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_consumer_group_request** | [**CreateConsumerGroupRequest**](CreateConsumerGroupRequest.md)| The details of the consumer group to create | [optional] 

### Return type

[**ConsumerGroupDTOApiResponseDTO**](ConsumerGroupDTOApiResponseDTO.md)

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

# **update_consumer_group**
> ConsumerGroupDTOApiResponseDTO update_consumer_group(consumergroupid, zf_tuuid, zf_ouuid, update_consumer_group_request=update_consumer_group_request)

Updates an existing consumer group

Updates an existing consumer group

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.consumer_group_dto_api_response_dto import ConsumerGroupDTOApiResponseDTO
from forecasting_client.models.update_consumer_group_request import UpdateConsumerGroupRequest
from forecasting_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/fct
# See configuration.py for a list of all supported configuration parameters.
configuration = forecasting_client.Configuration(
    host = "https://api.zerofriction.co/api/fct"
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
with forecasting_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = forecasting_client.ConsumerGroupsApi(api_client)
    consumergroupid = 'consumergroupid_example' # str | The unique identifier of the consumer group to update
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_consumer_group_request = {"code":"string","utilityType":{},"unitOfMeasure":{},"description":"string","estimatedAnnualVolume":0} # UpdateConsumerGroupRequest | The updated consumer group details (optional)

    try:
        # Updates an existing consumer group
        api_response = api_instance.update_consumer_group(consumergroupid, zf_tuuid, zf_ouuid, update_consumer_group_request=update_consumer_group_request)
        print("The response of ConsumerGroupsApi->update_consumer_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumerGroupsApi->update_consumer_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumergroupid** | **str**| The unique identifier of the consumer group to update | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_consumer_group_request** | [**UpdateConsumerGroupRequest**](UpdateConsumerGroupRequest.md)| The updated consumer group details | [optional] 

### Return type

[**ConsumerGroupDTOApiResponseDTO**](ConsumerGroupDTOApiResponseDTO.md)

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
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

