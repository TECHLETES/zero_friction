# forecasting_client.DefaultApi

All URIs are relative to *https://api.zerofriction.co/api/fct*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_consumer_group**](DefaultApi.md#delete_consumer_group) | **DELETE** /ConsumerGroups/{consumergroupid} | Deletes a consumer group by its identifier
[**estimate_eav**](DefaultApi.md#estimate_eav) | **POST** /EstimableContracts/{estimablecontractid}/eav/{year}/estimate | Starts the estimation of the annual volume for a specific year of the specified estimable contract
[**estimate_eav_for_contract_for_current_and_next_year**](DefaultApi.md#estimate_eav_for_contract_for_current_and_next_year) | **POST** /EstimableContracts/{estimablecontractid}/eav/currentandnextyear/estimate | Starts the estimation of the annual volume for the current and next year of the specified estimable contract
[**estimate_eav_for_service_location_for_current_and_next_year**](DefaultApi.md#estimate_eav_for_service_location_for_current_and_next_year) | **POST** /EstimableContracts/servicelocations/{servicelocationid}/eav/currentandnextyear/estimate | Starts the estimation of the annual volume for the current and next year of the specified service location
[**get_available_utility_types**](DefaultApi.md#get_available_utility_types) | **GET** /ConsumerGroups/availableutilitytypes | Retrieves the available utility types applicable for consumer groups
[**get_bucketed_consumer_group_consumptions**](DefaultApi.md#get_bucketed_consumer_group_consumptions) | **POST** /ConsumerGroups/buckets/consumptions | Gets consumer group consumption data split into buckets
[**get_consumer_group**](DefaultApi.md#get_consumer_group) | **GET** /ConsumerGroups/{consumergroupid} | Retrieves a specific consumer group by its identifier
[**get_consumer_group_and_convert**](DefaultApi.md#get_consumer_group_and_convert) | **GET** /ConsumerGroups/{consumergroupid}/{uom} | Retrieves a specific consumer group by its identifier and converts to the specified unit of measure
[**get_consumergroups**](DefaultApi.md#get_consumergroups) | **GET** /ConsumerGroups | Retrieves all consumer groups
[**get_estimable_contract**](DefaultApi.md#get_estimable_contract) | **GET** /EstimableContracts/{estimablecontractid} | Retrieves a estimable contract by its identifier
[**get_estimations_servicelocations_sluuid_consumptions**](DefaultApi.md#get_estimations_servicelocations_sluuid_consumptions) | **GET** /Estimations/servicelocations/{sluuid}/consumptions | Retrieves the estimated consumptions for the specified service location
[**get_migrationadmin_latest_version**](DefaultApi.md#get_migrationadmin_latest_version) | **GET** /MigrationAdmin/latest-version | /MigrationAdmin/latest-version - GET
[**get_property_group_forecasting_config**](DefaultApi.md#get_property_group_forecasting_config) | **GET** /PropertyGroupForecastingConfiguration/{propertygroupid} | Retrieves the property group forecasting configuration by its identifier
[**get_service_location_matching_consumer_groups**](DefaultApi.md#get_service_location_matching_consumer_groups) | **POST** /ConsumerGroups/servicelocation/matchingconsumergroups | Retrieves the matching consumer groups for a specific property group
[**get_synthetic_load_profile**](DefaultApi.md#get_synthetic_load_profile) | **GET** /SyntheticLoadProfiles/{syntheticloadprofileid} | Retrieves a specific synthetic load profile by its identifier
[**get_syntheticloadprofiles**](DefaultApi.md#get_syntheticloadprofiles) | **GET** /SyntheticLoadProfiles | Retrieves all synthetic load profiles
[**post_consumergroups**](DefaultApi.md#post_consumergroups) | **POST** /ConsumerGroups | Creates a new consumer group
[**post_estimations_buckets_consumptions**](DefaultApi.md#post_estimations_buckets_consumptions) | **POST** /Estimations/buckets/consumptions | Retrieves the estimated consumptions for service locations grouped by buckets
[**update_consumer_group**](DefaultApi.md#update_consumer_group) | **PUT** /ConsumerGroups/{consumergroupid} | Updates an existing consumer group
[**update_property_group_config_consumer_groups**](DefaultApi.md#update_property_group_config_consumer_groups) | **POST** /PropertyGroupForecastingConfiguration/{propertygroupid}/consumergroups | Updates consumer group configuration an existing property group


# **delete_consumer_group**
> ApiResponseDTOOfboolean delete_consumer_group(consumergroupid, zf_tuuid, zf_ouuid)

Deletes a consumer group by its identifier

Deletes a consumer group by its identifier

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = forecasting_client.DefaultApi(api_client)
    consumergroupid = 'consumergroupid_example' # str | The unique identifier of the consumer group to delete
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Deletes a consumer group by its identifier
        api_response = api_instance.delete_consumer_group(consumergroupid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->delete_consumer_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_consumer_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumergroupid** | **str**| The unique identifier of the consumer group to delete | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

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

# **estimate_eav**
> ApiResponseDTOOfboolean estimate_eav(estimablecontractid, year, zf_tuuid, zf_ouuid)

Starts the estimation of the annual volume for a specific year of the specified estimable contract

Starts the estimation of the annual volume for a specific year of the specified estimable contract

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = forecasting_client.DefaultApi(api_client)
    estimablecontractid = 'estimablecontractid_example' # str | the unique identifier of the estimable contract
    year = 56 # int | The applicable year for the estimation
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Starts the estimation of the annual volume for a specific year of the specified estimable contract
        api_response = api_instance.estimate_eav(estimablecontractid, year, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->estimate_eav:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->estimate_eav: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **estimablecontractid** | **str**| the unique identifier of the estimable contract | 
 **year** | **int**| The applicable year for the estimation | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **estimate_eav_for_contract_for_current_and_next_year**
> ApiResponseDTOOfboolean estimate_eav_for_contract_for_current_and_next_year(estimablecontractid, zf_tuuid, zf_ouuid)

Starts the estimation of the annual volume for the current and next year of the specified estimable contract

Starts the estimation of the annual volume for the current and next year of the specified estimable contract

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = forecasting_client.DefaultApi(api_client)
    estimablecontractid = 'estimablecontractid_example' # str | the unique identifier of the estimable contract
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Starts the estimation of the annual volume for the current and next year of the specified estimable contract
        api_response = api_instance.estimate_eav_for_contract_for_current_and_next_year(estimablecontractid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->estimate_eav_for_contract_for_current_and_next_year:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->estimate_eav_for_contract_for_current_and_next_year: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **estimablecontractid** | **str**| the unique identifier of the estimable contract | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **estimate_eav_for_service_location_for_current_and_next_year**
> ApiResponseDTOOfboolean estimate_eav_for_service_location_for_current_and_next_year(servicelocationid, zf_tuuid, zf_ouuid)

Starts the estimation of the annual volume for the current and next year of the specified service location

Starts the estimation of the annual volume for the current and next year of the specified service location

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = forecasting_client.DefaultApi(api_client)
    servicelocationid = 'servicelocationid_example' # str | the unique identifier of the estimable service location
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Starts the estimation of the annual volume for the current and next year of the specified service location
        api_response = api_instance.estimate_eav_for_service_location_for_current_and_next_year(servicelocationid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->estimate_eav_for_service_location_for_current_and_next_year:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->estimate_eav_for_service_location_for_current_and_next_year: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicelocationid** | **str**| the unique identifier of the estimable service location | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_available_utility_types**
> ApiResponseDTOOfPagedResponseModelDTOOfUtilityType get_available_utility_types(zf_tuuid, zf_ouuid)

Retrieves the available utility types applicable for consumer groups

Retrieves the available utility types applicable for consumer groups

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dtoof_paged_response_model_dtoof_utility_type import ApiResponseDTOOfPagedResponseModelDTOOfUtilityType
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
    api_instance = forecasting_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Retrieves the available utility types applicable for consumer groups
        api_response = api_instance.get_available_utility_types(zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_available_utility_types:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_available_utility_types: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfUtilityType**](ApiResponseDTOOfPagedResponseModelDTOOfUtilityType.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The available utility types applicable for consumer groups |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_bucketed_consumer_group_consumptions**
> ApiResponseDTOOfListOfConsumerGroupConsumptionBucketDTO get_bucketed_consumer_group_consumptions(zf_tuuid, zf_ouuid, bucketed_consumer_group_consumption_request=bucketed_consumer_group_consumption_request)

Gets consumer group consumption data split into buckets

Gets consumer group consumption data split into buckets

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dtoof_list_of_consumer_group_consumption_bucket_dto import ApiResponseDTOOfListOfConsumerGroupConsumptionBucketDTO
from forecasting_client.models.bucketed_consumer_group_consumption_request import BucketedConsumerGroupConsumptionRequest
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
    api_instance = forecasting_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bucketed_consumer_group_consumption_request = {"contractId":"string","buckets":[{"startDateTime":"string","endDateTime":"string"}],"utilityType":"none","unitOfMeasure":"none"} # BucketedConsumerGroupConsumptionRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Gets consumer group consumption data split into buckets
        api_response = api_instance.get_bucketed_consumer_group_consumptions(zf_tuuid, zf_ouuid, bucketed_consumer_group_consumption_request=bucketed_consumer_group_consumption_request)
        print("The response of DefaultApi->get_bucketed_consumer_group_consumptions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_bucketed_consumer_group_consumptions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bucketed_consumer_group_consumption_request** | [**BucketedConsumerGroupConsumptionRequest**](BucketedConsumerGroupConsumptionRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfListOfConsumerGroupConsumptionBucketDTO**](ApiResponseDTOOfListOfConsumerGroupConsumptionBucketDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_consumer_group**
> ApiResponseDTOOfConsumerGroupDTO get_consumer_group(consumergroupid, zf_tuuid, zf_ouuid)

Retrieves a specific consumer group by its identifier

Retrieves a specific consumer group by its identifier

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dtoof_consumer_group_dto import ApiResponseDTOOfConsumerGroupDTO
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
    api_instance = forecasting_client.DefaultApi(api_client)
    consumergroupid = 'consumergroupid_example' # str | The unique identifier of the consumer group
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Retrieves a specific consumer group by its identifier
        api_response = api_instance.get_consumer_group(consumergroupid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_consumer_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_consumer_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumergroupid** | **str**| The unique identifier of the consumer group | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfConsumerGroupDTO**](ApiResponseDTOOfConsumerGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_consumer_group_and_convert**
> ApiResponseDTOOfConsumerGroupDTO get_consumer_group_and_convert(consumergroupid, uom, zf_tuuid, zf_ouuid)

Retrieves a specific consumer group by its identifier and converts to the specified unit of measure

Retrieves a specific consumer group by its identifier and converts to the specified unit of measure

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dtoof_consumer_group_dto import ApiResponseDTOOfConsumerGroupDTO
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
    api_instance = forecasting_client.DefaultApi(api_client)
    consumergroupid = 'consumergroupid_example' # str | The unique identifier of the consumer group
    uom = 'uom_example' # str | Unit of measure to convert to
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Retrieves a specific consumer group by its identifier and converts to the specified unit of measure
        api_response = api_instance.get_consumer_group_and_convert(consumergroupid, uom, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_consumer_group_and_convert:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_consumer_group_and_convert: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumergroupid** | **str**| The unique identifier of the consumer group | 
 **uom** | **str**| Unit of measure to convert to | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfConsumerGroupDTO**](ApiResponseDTOOfConsumerGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_consumergroups**
> ApiResponseDTOOfPagedResponseModelDTOOfConsumerGroupDTO get_consumergroups(zf_tuuid, zf_ouuid, show_deleted=show_deleted, origin=origin, utility_type=utility_type, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)

Retrieves all consumer groups

Retrieves all consumer groups

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dtoof_paged_response_model_dtoof_consumer_group_dto import ApiResponseDTOOfPagedResponseModelDTOOfConsumerGroupDTO
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
    api_instance = forecasting_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    show_deleted = True # bool | When true, includes deleted consumer groups in the results. (optional)
    origin = 'origin_example' # str | The origin of the consumer groups (optional)
    utility_type = 'utility_type_example' # str | Utility type of the consumer groups (optional)
    flex_search = 'flex_search_example' # str | Search term to filter accounts by various fields. (optional)
    order_by = 'order_by_example' # str | Sorting expression for the results. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves all consumer groups
        api_response = api_instance.get_consumergroups(zf_tuuid, zf_ouuid, show_deleted=show_deleted, origin=origin, utility_type=utility_type, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)
        print("The response of DefaultApi->get_consumergroups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_consumergroups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **show_deleted** | **bool**| When true, includes deleted consumer groups in the results. | [optional] 
 **origin** | **str**| The origin of the consumer groups | [optional] 
 **utility_type** | **str**| Utility type of the consumer groups | [optional] 
 **flex_search** | **str**| Search term to filter accounts by various fields. | [optional] 
 **order_by** | **str**| Sorting expression for the results. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfConsumerGroupDTO**](ApiResponseDTOOfPagedResponseModelDTOOfConsumerGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | All consumer groups |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_estimable_contract**
> ApiResponseDTOOfEstimableContractDTO get_estimable_contract(estimablecontractid, zf_tuuid, zf_ouuid)

Retrieves a estimable contract by its identifier

Retrieves a estimable contract by its identifier

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dtoof_estimable_contract_dto import ApiResponseDTOOfEstimableContractDTO
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
    api_instance = forecasting_client.DefaultApi(api_client)
    estimablecontractid = 'estimablecontractid_example' # str | the unique identifier of the estimable contract
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Retrieves a estimable contract by its identifier
        api_response = api_instance.get_estimable_contract(estimablecontractid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_estimable_contract:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_estimable_contract: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **estimablecontractid** | **str**| the unique identifier of the estimable contract | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfEstimableContractDTO**](ApiResponseDTOOfEstimableContractDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_estimations_servicelocations_sluuid_consumptions**
> ApiResponseDTOOfListOfEstimatedConsumptionDTO get_estimations_servicelocations_sluuid_consumptions(sluuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time, utility_type=utility_type, unit_of_measure=unit_of_measure, group_by_period=group_by_period)

Retrieves the estimated consumptions for the specified service location

Retrieves the estimated consumptions for the specified service location

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dtoof_list_of_estimated_consumption_dto import ApiResponseDTOOfListOfEstimatedConsumptionDTO
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
    api_instance = forecasting_client.DefaultApi(api_client)
    sluuid = 'sluuid_example' # str | The unique identifier of the service location
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Start datetime of the estimation (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | End datetime of the estimation (optional)
    utility_type = 'utility_type_example' # str | Utility type for which we are retrieving the estimation (optional)
    unit_of_measure = 'unit_of_measure_example' # str | Unit of measure for which are retrieving the estimation (optional)
    group_by_period = 'group_by_period_example' # str | Period on which the estimated consumptions will be grouped (optional)

    try:
        # Retrieves the estimated consumptions for the specified service location
        api_response = api_instance.get_estimations_servicelocations_sluuid_consumptions(sluuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time, utility_type=utility_type, unit_of_measure=unit_of_measure, group_by_period=group_by_period)
        print("The response of DefaultApi->get_estimations_servicelocations_sluuid_consumptions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_estimations_servicelocations_sluuid_consumptions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sluuid** | **str**| The unique identifier of the service location | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **start_date_time** | **datetime**| Start datetime of the estimation | [optional] 
 **end_date_time** | **datetime**| End datetime of the estimation | [optional] 
 **utility_type** | **str**| Utility type for which we are retrieving the estimation | [optional] 
 **unit_of_measure** | **str**| Unit of measure for which are retrieving the estimation | [optional] 
 **group_by_period** | **str**| Period on which the estimated consumptions will be grouped | [optional] 

### Return type

[**ApiResponseDTOOfListOfEstimatedConsumptionDTO**](ApiResponseDTOOfListOfEstimatedConsumptionDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_migrationadmin_latest_version**
> ApiResponseDTOOfMigrationLatestVersionDTO get_migrationadmin_latest_version()

/MigrationAdmin/latest-version - GET

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dtoof_migration_latest_version_dto import ApiResponseDTOOfMigrationLatestVersionDTO
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
    api_instance = forecasting_client.DefaultApi(api_client)

    try:
        # /MigrationAdmin/latest-version - GET
        api_response = api_instance.get_migrationadmin_latest_version()
        print("The response of DefaultApi->get_migrationadmin_latest_version:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_migrationadmin_latest_version: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiResponseDTOOfMigrationLatestVersionDTO**](ApiResponseDTOOfMigrationLatestVersionDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_property_group_forecasting_config**
> ApiResponseDTOOfPropertyGroupForecastingConfigurationDTO get_property_group_forecasting_config(propertygroupid, zf_tuuid, zf_ouuid)

Retrieves the property group forecasting configuration by its identifier

Retrieves the property group forecasting configuration by its identifier

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dtoof_property_group_forecasting_configuration_dto import ApiResponseDTOOfPropertyGroupForecastingConfigurationDTO
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
    api_instance = forecasting_client.DefaultApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The unique identifier of the property group
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Retrieves the property group forecasting configuration by its identifier
        api_response = api_instance.get_property_group_forecasting_config(propertygroupid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_property_group_forecasting_config:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_property_group_forecasting_config: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The unique identifier of the property group | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfPropertyGroupForecastingConfigurationDTO**](ApiResponseDTOOfPropertyGroupForecastingConfigurationDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_service_location_matching_consumer_groups**
> ApiResponseDTOOfGetServiceLocationMatchingConsumerGroupsDTO get_service_location_matching_consumer_groups(zf_tuuid, zf_ouuid, get_service_location_matching_consumer_groups_request=get_service_location_matching_consumer_groups_request)

Retrieves the matching consumer groups for a specific property group

Retrieves the matching consumer groups for a specific property group

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dtoof_get_service_location_matching_consumer_groups_dto import ApiResponseDTOOfGetServiceLocationMatchingConsumerGroupsDTO
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
    api_instance = forecasting_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    get_service_location_matching_consumer_groups_request = {"propertyGroupId":"string","productId":"string","utilityType":"none"} # GetServiceLocationMatchingConsumerGroupsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Retrieves the matching consumer groups for a specific property group
        api_response = api_instance.get_service_location_matching_consumer_groups(zf_tuuid, zf_ouuid, get_service_location_matching_consumer_groups_request=get_service_location_matching_consumer_groups_request)
        print("The response of DefaultApi->get_service_location_matching_consumer_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_service_location_matching_consumer_groups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **get_service_location_matching_consumer_groups_request** | [**GetServiceLocationMatchingConsumerGroupsRequest**](GetServiceLocationMatchingConsumerGroupsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfGetServiceLocationMatchingConsumerGroupsDTO**](ApiResponseDTOOfGetServiceLocationMatchingConsumerGroupsDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The matching consumer groups for a specific property group |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_synthetic_load_profile**
> ApiResponseDTOOfSyntheticLoadProfileDTO get_synthetic_load_profile(syntheticloadprofileid, zf_tuuid, zf_ouuid, show_deleted=show_deleted)

Retrieves a specific synthetic load profile by its identifier

Retrieves a specific synthetic load profile by its identifier

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dtoof_synthetic_load_profile_dto import ApiResponseDTOOfSyntheticLoadProfileDTO
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
    api_instance = forecasting_client.DefaultApi(api_client)
    syntheticloadprofileid = 'syntheticloadprofileid_example' # str | The unique identifier of the synthetic load profile
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    show_deleted = True # bool | When true, includes deleted synthetic load profiles in the results. (optional)

    try:
        # Retrieves a specific synthetic load profile by its identifier
        api_response = api_instance.get_synthetic_load_profile(syntheticloadprofileid, zf_tuuid, zf_ouuid, show_deleted=show_deleted)
        print("The response of DefaultApi->get_synthetic_load_profile:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_synthetic_load_profile: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **syntheticloadprofileid** | **str**| The unique identifier of the synthetic load profile | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **show_deleted** | **bool**| When true, includes deleted synthetic load profiles in the results. | [optional] 

### Return type

[**ApiResponseDTOOfSyntheticLoadProfileDTO**](ApiResponseDTOOfSyntheticLoadProfileDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_syntheticloadprofiles**
> ApiResponseDTOOfPagedResponseModelDTOOfSyntheticLoadProfileDTO get_syntheticloadprofiles(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)

Retrieves all synthetic load profiles

Retrieves all synthetic load profiles

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dtoof_paged_response_model_dtoof_synthetic_load_profile_dto import ApiResponseDTOOfPagedResponseModelDTOOfSyntheticLoadProfileDTO
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
    api_instance = forecasting_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    show_deleted = True # bool | When true, includes deleted synthetic load profiles in the results. (optional)
    flex_search = 'flex_search_example' # str | Search term to filter accounts by various fields. (optional)
    order_by = 'order_by_example' # str | Sorting expression for the results. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves all synthetic load profiles
        api_response = api_instance.get_syntheticloadprofiles(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)
        print("The response of DefaultApi->get_syntheticloadprofiles:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_syntheticloadprofiles: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **show_deleted** | **bool**| When true, includes deleted synthetic load profiles in the results. | [optional] 
 **flex_search** | **str**| Search term to filter accounts by various fields. | [optional] 
 **order_by** | **str**| Sorting expression for the results. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfSyntheticLoadProfileDTO**](ApiResponseDTOOfPagedResponseModelDTOOfSyntheticLoadProfileDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | All synthetic load profiles |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_consumergroups**
> ApiResponseDTOOfConsumerGroupDTO post_consumergroups(zf_tuuid, zf_ouuid, create_consumer_group_request=create_consumer_group_request)

Creates a new consumer group

Creates a new consumer group

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dtoof_consumer_group_dto import ApiResponseDTOOfConsumerGroupDTO
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
    api_instance = forecasting_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    create_consumer_group_request = {"code":"string","description":"string","utilityType":"none","unitOfMeasure":"none","estimatedAnnualVolume":0} # CreateConsumerGroupRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Creates a new consumer group
        api_response = api_instance.post_consumergroups(zf_tuuid, zf_ouuid, create_consumer_group_request=create_consumer_group_request)
        print("The response of DefaultApi->post_consumergroups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_consumergroups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **create_consumer_group_request** | [**CreateConsumerGroupRequest**](CreateConsumerGroupRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfConsumerGroupDTO**](ApiResponseDTOOfConsumerGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_estimations_buckets_consumptions**
> ApiResponseDTOOfListOfEstimatedConsumptionBucketDTO post_estimations_buckets_consumptions(zf_tuuid, zf_ouuid, bucketed_estimated_consumption_request=bucketed_estimated_consumption_request)

Retrieves the estimated consumptions for service locations grouped by buckets

Retrieves the estimated consumptions for service locations grouped by buckets

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dtoof_list_of_estimated_consumption_bucket_dto import ApiResponseDTOOfListOfEstimatedConsumptionBucketDTO
from forecasting_client.models.bucketed_estimated_consumption_request import BucketedEstimatedConsumptionRequest
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
    api_instance = forecasting_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bucketed_estimated_consumption_request = {"contractId":"string","serviceLocationIds":["string"],"buckets":[{"startDateTime":"string","endDateTime":"string"}],"utilityType":"none","unitOfMeasure":"none"} # BucketedEstimatedConsumptionRequest | Cancellation token (optional)

    try:
        # Retrieves the estimated consumptions for service locations grouped by buckets
        api_response = api_instance.post_estimations_buckets_consumptions(zf_tuuid, zf_ouuid, bucketed_estimated_consumption_request=bucketed_estimated_consumption_request)
        print("The response of DefaultApi->post_estimations_buckets_consumptions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_estimations_buckets_consumptions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bucketed_estimated_consumption_request** | [**BucketedEstimatedConsumptionRequest**](BucketedEstimatedConsumptionRequest.md)| Cancellation token | [optional] 

### Return type

[**ApiResponseDTOOfListOfEstimatedConsumptionBucketDTO**](ApiResponseDTOOfListOfEstimatedConsumptionBucketDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_consumer_group**
> ApiResponseDTOOfConsumerGroupDTO update_consumer_group(consumergroupid, zf_tuuid, zf_ouuid, update_consumer_group_request=update_consumer_group_request)

Updates an existing consumer group

Updates an existing consumer group

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dtoof_consumer_group_dto import ApiResponseDTOOfConsumerGroupDTO
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
    api_instance = forecasting_client.DefaultApi(api_client)
    consumergroupid = 'consumergroupid_example' # str | The unique identifier of the consumer group to update
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_consumer_group_request = {"code":"string","utilityType":"none","unitOfMeasure":"none","description":"string","estimatedAnnualVolume":0} # UpdateConsumerGroupRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Updates an existing consumer group
        api_response = api_instance.update_consumer_group(consumergroupid, zf_tuuid, zf_ouuid, update_consumer_group_request=update_consumer_group_request)
        print("The response of DefaultApi->update_consumer_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->update_consumer_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **consumergroupid** | **str**| The unique identifier of the consumer group to update | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_consumer_group_request** | [**UpdateConsumerGroupRequest**](UpdateConsumerGroupRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfConsumerGroupDTO**](ApiResponseDTOOfConsumerGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_property_group_config_consumer_groups**
> ApiResponseDTOOfPropertyGroupForecastingConfigurationDTO update_property_group_config_consumer_groups(propertygroupid, zf_tuuid, zf_ouuid, update_property_group_forecasting_config_consumer_groups_request=update_property_group_forecasting_config_consumer_groups_request)

Updates consumer group configuration an existing property group

Updates consumer group configuration an existing property group

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.api_response_dtoof_property_group_forecasting_configuration_dto import ApiResponseDTOOfPropertyGroupForecastingConfigurationDTO
from forecasting_client.models.update_property_group_forecasting_config_consumer_groups_request import UpdatePropertyGroupForecastingConfigConsumerGroupsRequest
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
    api_instance = forecasting_client.DefaultApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The unique identifier of the property group to update consumer group configuration on
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_property_group_forecasting_config_consumer_groups_request = {"consumerGroups":{}} # UpdatePropertyGroupForecastingConfigConsumerGroupsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Updates consumer group configuration an existing property group
        api_response = api_instance.update_property_group_config_consumer_groups(propertygroupid, zf_tuuid, zf_ouuid, update_property_group_forecasting_config_consumer_groups_request=update_property_group_forecasting_config_consumer_groups_request)
        print("The response of DefaultApi->update_property_group_config_consumer_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->update_property_group_config_consumer_groups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The unique identifier of the property group to update consumer group configuration on | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **update_property_group_forecasting_config_consumer_groups_request** | [**UpdatePropertyGroupForecastingConfigConsumerGroupsRequest**](UpdatePropertyGroupForecastingConfigConsumerGroupsRequest.md)| Propagates notification that operations should be canceled. | [optional] 

### Return type

[**ApiResponseDTOOfPropertyGroupForecastingConfigurationDTO**](ApiResponseDTOOfPropertyGroupForecastingConfigurationDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

