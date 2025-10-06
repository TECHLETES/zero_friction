# configuration_client.CostComponentValuesApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_costcomponentvalues_costcomponentvalueuuid**](CostComponentValuesApi.md#delete_costcomponentvalues_costcomponentvalueuuid) | **DELETE** /CostComponentValues/{costcomponentvalueuuid} | Deletes a cost component value by its identifier.
[**get_costcomponentvalues_c_costcomponentuuid**](CostComponentValuesApi.md#get_costcomponentvalues_c_costcomponentuuid) | **GET** /CostComponentValues/c/{costcomponentuuid} | Retrieves a paged list of cost component values for a specific cost component with optional filtering and sorting.
[**get_costcomponentvalues_costcomponentvalueuuid**](CostComponentValuesApi.md#get_costcomponentvalues_costcomponentvalueuuid) | **GET** /CostComponentValues/{costcomponentvalueuuid} | Retrieves a specific cost component value by its identifier.
[**post_costcomponentvalues**](CostComponentValuesApi.md#post_costcomponentvalues) | **POST** /CostComponentValues | Creates a new cost component value.
[**post_costcomponentvalues_costcomponentvalueuuid**](CostComponentValuesApi.md#post_costcomponentvalues_costcomponentvalueuuid) | **POST** /CostComponentValues/{costcomponentvalueuuid} | Updates an existing cost component value.


# **delete_costcomponentvalues_costcomponentvalueuuid**
> BooleanApiResponseDTO delete_costcomponentvalues_costcomponentvalueuuid(costcomponentvalueuuid, zf_tuuid, zf_ouuid)

Deletes a cost component value by its identifier.

Deletes a cost component value by its identifier.

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
    api_instance = configuration_client.CostComponentValuesApi(api_client)
    costcomponentvalueuuid = 'costcomponentvalueuuid_example' # str | The unique identifier of the cost component value to delete.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes a cost component value by its identifier.
        api_response = api_instance.delete_costcomponentvalues_costcomponentvalueuuid(costcomponentvalueuuid, zf_tuuid, zf_ouuid)
        print("The response of CostComponentValuesApi->delete_costcomponentvalues_costcomponentvalueuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CostComponentValuesApi->delete_costcomponentvalues_costcomponentvalueuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **costcomponentvalueuuid** | **str**| The unique identifier of the cost component value to delete. | 
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

# **get_costcomponentvalues_c_costcomponentuuid**
> CostComponentValueDTOPagedResponseModelDTOApiResponseDTO get_costcomponentvalues_c_costcomponentuuid(costcomponentuuid, zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)

Retrieves a paged list of cost component values for a specific cost component with optional filtering and sorting.

Retrieves a paged list of cost component values for a specific cost component with optional filtering and sorting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.cost_component_value_dto_paged_response_model_dto_api_response_dto import CostComponentValueDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = configuration_client.CostComponentValuesApi(api_client)
    costcomponentuuid = 'costcomponentuuid_example' # str | The unique identifier of the cost component.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    show_deleted = True # bool | When true, includes deleted cost component values in the results. (optional)
    flex_search = 'flex_search_example' # str | Search term to filter cost component values by various fields. (optional)
    order_by = 'order_by_example' # str | Sorting expression for the results. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of cost component values for a specific cost component with optional filtering and sorting.
        api_response = api_instance.get_costcomponentvalues_c_costcomponentuuid(costcomponentuuid, zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)
        print("The response of CostComponentValuesApi->get_costcomponentvalues_c_costcomponentuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CostComponentValuesApi->get_costcomponentvalues_c_costcomponentuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **costcomponentuuid** | **str**| The unique identifier of the cost component. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **show_deleted** | **bool**| When true, includes deleted cost component values in the results. | [optional] 
 **flex_search** | **str**| Search term to filter cost component values by various fields. | [optional] 
 **order_by** | **str**| Sorting expression for the results. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**CostComponentValueDTOPagedResponseModelDTOApiResponseDTO**](CostComponentValueDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_costcomponentvalues_costcomponentvalueuuid**
> CostComponentValueDTOApiResponseDTO get_costcomponentvalues_costcomponentvalueuuid(costcomponentvalueuuid, zf_tuuid, zf_ouuid)

Retrieves a specific cost component value by its identifier.

Retrieves a specific cost component value by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.cost_component_value_dto_api_response_dto import CostComponentValueDTOApiResponseDTO
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
    api_instance = configuration_client.CostComponentValuesApi(api_client)
    costcomponentvalueuuid = 'costcomponentvalueuuid_example' # str | The unique identifier of the cost component value.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific cost component value by its identifier.
        api_response = api_instance.get_costcomponentvalues_costcomponentvalueuuid(costcomponentvalueuuid, zf_tuuid, zf_ouuid)
        print("The response of CostComponentValuesApi->get_costcomponentvalues_costcomponentvalueuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CostComponentValuesApi->get_costcomponentvalues_costcomponentvalueuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **costcomponentvalueuuid** | **str**| The unique identifier of the cost component value. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**CostComponentValueDTOApiResponseDTO**](CostComponentValueDTOApiResponseDTO.md)

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

# **post_costcomponentvalues**
> CostComponentValueDTOApiResponseDTO post_costcomponentvalues(zf_tuuid, zf_ouuid, create_cost_component_value_request=create_cost_component_value_request)

Creates a new cost component value.

Creates a new cost component value.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.cost_component_value_dto_api_response_dto import CostComponentValueDTOApiResponseDTO
from configuration_client.models.create_cost_component_value_request import CreateCostComponentValueRequest
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
    api_instance = configuration_client.CostComponentValuesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_cost_component_value_request = {"costComponentId":"string","startDateTime":"string","endDateTime":"string","value":0} # CreateCostComponentValueRequest | The details of the cost component value to create. (optional)

    try:
        # Creates a new cost component value.
        api_response = api_instance.post_costcomponentvalues(zf_tuuid, zf_ouuid, create_cost_component_value_request=create_cost_component_value_request)
        print("The response of CostComponentValuesApi->post_costcomponentvalues:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CostComponentValuesApi->post_costcomponentvalues: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_cost_component_value_request** | [**CreateCostComponentValueRequest**](CreateCostComponentValueRequest.md)| The details of the cost component value to create. | [optional] 

### Return type

[**CostComponentValueDTOApiResponseDTO**](CostComponentValueDTOApiResponseDTO.md)

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

# **post_costcomponentvalues_costcomponentvalueuuid**
> CostComponentValueDTOApiResponseDTO post_costcomponentvalues_costcomponentvalueuuid(costcomponentvalueuuid, zf_tuuid, zf_ouuid, update_cost_component_value_request=update_cost_component_value_request)

Updates an existing cost component value.

Updates an existing cost component value.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.cost_component_value_dto_api_response_dto import CostComponentValueDTOApiResponseDTO
from configuration_client.models.update_cost_component_value_request import UpdateCostComponentValueRequest
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
    api_instance = configuration_client.CostComponentValuesApi(api_client)
    costcomponentvalueuuid = 'costcomponentvalueuuid_example' # str | The unique identifier of the cost component value to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_cost_component_value_request = {"startDateTime":"string","endDateTime":"string","value":0} # UpdateCostComponentValueRequest | The updated cost component value details. (optional)

    try:
        # Updates an existing cost component value.
        api_response = api_instance.post_costcomponentvalues_costcomponentvalueuuid(costcomponentvalueuuid, zf_tuuid, zf_ouuid, update_cost_component_value_request=update_cost_component_value_request)
        print("The response of CostComponentValuesApi->post_costcomponentvalues_costcomponentvalueuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CostComponentValuesApi->post_costcomponentvalues_costcomponentvalueuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **costcomponentvalueuuid** | **str**| The unique identifier of the cost component value to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_cost_component_value_request** | [**UpdateCostComponentValueRequest**](UpdateCostComponentValueRequest.md)| The updated cost component value details. | [optional] 

### Return type

[**CostComponentValueDTOApiResponseDTO**](CostComponentValueDTOApiResponseDTO.md)

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

