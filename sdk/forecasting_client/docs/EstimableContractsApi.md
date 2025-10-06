# forecasting_client.EstimableContractsApi

All URIs are relative to *https://api.zerofriction.co/api/fct*

Method | HTTP request | Description
------------- | ------------- | -------------
[**estimate_eav**](EstimableContractsApi.md#estimate_eav) | **POST** /EstimableContracts/{estimablecontractid}/eav/{year}/estimate | Starts the estimation of the annual volume for a specific year of the specified estimable contract
[**estimate_eav_for_contract_for_current_and_next_year**](EstimableContractsApi.md#estimate_eav_for_contract_for_current_and_next_year) | **POST** /EstimableContracts/{estimablecontractid}/eav/currentandnextyear/estimate | Starts the estimation of the annual volume for the current and next year of the specified estimable contract
[**estimate_eav_for_service_location_for_current_and_next_year**](EstimableContractsApi.md#estimate_eav_for_service_location_for_current_and_next_year) | **POST** /EstimableContracts/servicelocations/{servicelocationid}/eav/currentandnextyear/estimate | Starts the estimation of the annual volume for the current and next year of the specified service location
[**get_estimable_contract**](EstimableContractsApi.md#get_estimable_contract) | **GET** /EstimableContracts/{estimablecontractid} | Retrieves a estimable contract by its identifier


# **estimate_eav**
> BooleanApiResponseDTO estimate_eav(estimablecontractid, year, zf_tuuid, zf_ouuid)

Starts the estimation of the annual volume for a specific year of the specified estimable contract

Starts the estimation of the annual volume for a specific year of the specified estimable contract

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
    api_instance = forecasting_client.EstimableContractsApi(api_client)
    estimablecontractid = 'estimablecontractid_example' # str | the unique identifier of the estimable contract
    year = 56 # int | Format - int32. The applicable year for the estimation
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Starts the estimation of the annual volume for a specific year of the specified estimable contract
        api_response = api_instance.estimate_eav(estimablecontractid, year, zf_tuuid, zf_ouuid)
        print("The response of EstimableContractsApi->estimate_eav:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EstimableContractsApi->estimate_eav: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **estimablecontractid** | **str**| the unique identifier of the estimable contract | 
 **year** | **int**| Format - int32. The applicable year for the estimation | 
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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **estimate_eav_for_contract_for_current_and_next_year**
> BooleanApiResponseDTO estimate_eav_for_contract_for_current_and_next_year(estimablecontractid, zf_tuuid, zf_ouuid)

Starts the estimation of the annual volume for the current and next year of the specified estimable contract

Starts the estimation of the annual volume for the current and next year of the specified estimable contract

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
    api_instance = forecasting_client.EstimableContractsApi(api_client)
    estimablecontractid = 'estimablecontractid_example' # str | the unique identifier of the estimable contract
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Starts the estimation of the annual volume for the current and next year of the specified estimable contract
        api_response = api_instance.estimate_eav_for_contract_for_current_and_next_year(estimablecontractid, zf_tuuid, zf_ouuid)
        print("The response of EstimableContractsApi->estimate_eav_for_contract_for_current_and_next_year:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EstimableContractsApi->estimate_eav_for_contract_for_current_and_next_year: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **estimablecontractid** | **str**| the unique identifier of the estimable contract | 
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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **estimate_eav_for_service_location_for_current_and_next_year**
> BooleanApiResponseDTO estimate_eav_for_service_location_for_current_and_next_year(servicelocationid, zf_tuuid, zf_ouuid)

Starts the estimation of the annual volume for the current and next year of the specified service location

Starts the estimation of the annual volume for the current and next year of the specified service location

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
    api_instance = forecasting_client.EstimableContractsApi(api_client)
    servicelocationid = 'servicelocationid_example' # str | the unique identifier of the estimable service location
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Starts the estimation of the annual volume for the current and next year of the specified service location
        api_response = api_instance.estimate_eav_for_service_location_for_current_and_next_year(servicelocationid, zf_tuuid, zf_ouuid)
        print("The response of EstimableContractsApi->estimate_eav_for_service_location_for_current_and_next_year:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EstimableContractsApi->estimate_eav_for_service_location_for_current_and_next_year: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicelocationid** | **str**| the unique identifier of the estimable service location | 
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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_estimable_contract**
> EstimableContractDTOApiResponseDTO get_estimable_contract(estimablecontractid, zf_tuuid, zf_ouuid)

Retrieves a estimable contract by its identifier

Retrieves a estimable contract by its identifier

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.estimable_contract_dto_api_response_dto import EstimableContractDTOApiResponseDTO
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
    api_instance = forecasting_client.EstimableContractsApi(api_client)
    estimablecontractid = 'estimablecontractid_example' # str | the unique identifier of the estimable contract
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a estimable contract by its identifier
        api_response = api_instance.get_estimable_contract(estimablecontractid, zf_tuuid, zf_ouuid)
        print("The response of EstimableContractsApi->get_estimable_contract:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EstimableContractsApi->get_estimable_contract: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **estimablecontractid** | **str**| the unique identifier of the estimable contract | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**EstimableContractDTOApiResponseDTO**](EstimableContractDTOApiResponseDTO.md)

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

