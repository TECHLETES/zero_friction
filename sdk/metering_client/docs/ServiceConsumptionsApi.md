# metering_client.ServiceConsumptionsApi

All URIs are relative to *https://api.zerofriction.co/api/me*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_consumption_date_ranges_for_service_location**](ServiceConsumptionsApi.md#get_consumption_date_ranges_for_service_location) | **GET** /ServiceConsumptions/{sluuid}/range/date-range-limit | Gets consumption date ranges available for a service location
[**get_consumptions_for_service_location_grouped_on_range**](ServiceConsumptionsApi.md#get_consumptions_for_service_location_grouped_on_range) | **GET** /ServiceConsumptions/{sluuid}/range | Gets consumption data for a service location grouped by range
[**get_serviceconsumptions_sluuid**](ServiceConsumptionsApi.md#get_serviceconsumptions_sluuid) | **GET** /ServiceConsumptions/{sluuid} | Gets paginated consumption data for a service location
[**get_serviceconsumptions_sluuid_flat**](ServiceConsumptionsApi.md#get_serviceconsumptions_sluuid_flat) | **GET** /ServiceConsumptions/{sluuid}/flat | Gets flat consumption data for a service location with optional grouping by period
[**get_serviceconsumptions_sluuid_raw**](ServiceConsumptionsApi.md#get_serviceconsumptions_sluuid_raw) | **GET** /ServiceConsumptions/{sluuid}/raw | Gets raw consumption data for a service location
[**get_serviceconsumptions_sluuid_types**](ServiceConsumptionsApi.md#get_serviceconsumptions_sluuid_types) | **GET** /ServiceConsumptions/{sluuid}/types | Gets available consumption types for a service location
[**post_serviceconsumptions_aggregatedperperiod**](ServiceConsumptionsApi.md#post_serviceconsumptions_aggregatedperperiod) | **POST** /ServiceConsumptions/aggregatedperperiod | Gets aggregated service consumptions per period for a list of service locations
[**post_serviceconsumptions_buckets**](ServiceConsumptionsApi.md#post_serviceconsumptions_buckets) | **POST** /ServiceConsumptions/buckets | Gets consumption data for a service locations grouped by provided buckets
[**post_serviceconsumptions_export_sum**](ServiceConsumptionsApi.md#post_serviceconsumptions_export_sum) | **POST** /ServiceConsumptions/export/sum | Gets sum of consumption values for a list of service locations
[**post_serviceconsumptions_yearlyaverage**](ServiceConsumptionsApi.md#post_serviceconsumptions_yearlyaverage) | **POST** /ServiceConsumptions/yearlyaverage | Gets yearly average consumption per service location


# **get_consumption_date_ranges_for_service_location**
> ServiceConsumptionGetDateRangeDTOApiResponseDTO get_consumption_date_ranges_for_service_location(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, start_date_time=start_date_time, end_date_time=end_date_time)

Gets consumption date ranges available for a service location

Gets consumption date ranges available for a service location

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.service_consumption_get_date_range_dto_api_response_dto import ServiceConsumptionGetDateRangeDTOApiResponseDTO
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
    api_instance = metering_client.ServiceConsumptionsApi(api_client)
    sluuid = 'sluuid_example' # str | Service location UUID
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    utility_type = 'utility_type_example' # str | Type of utility (optional)
    unit_of_measure = 'unit_of_measure_example' # str | Unit of measure (optional)
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). Start date and time for the search range (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). End date and time for the search range (optional)

    try:
        # Gets consumption date ranges available for a service location
        api_response = api_instance.get_consumption_date_ranges_for_service_location(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, start_date_time=start_date_time, end_date_time=end_date_time)
        print("The response of ServiceConsumptionsApi->get_consumption_date_ranges_for_service_location:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceConsumptionsApi->get_consumption_date_ranges_for_service_location: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sluuid** | **str**| Service location UUID | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **utility_type** | **str**| Type of utility | [optional] 
 **unit_of_measure** | **str**| Unit of measure | [optional] 
 **start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). Start date and time for the search range | [optional] 
 **end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). End date and time for the search range | [optional] 

### Return type

[**ServiceConsumptionGetDateRangeDTOApiResponseDTO**](ServiceConsumptionGetDateRangeDTOApiResponseDTO.md)

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

# **get_consumptions_for_service_location_grouped_on_range**
> GroupedServiceConsumptionDTOListApiResponseDTO get_consumptions_for_service_location_grouped_on_range(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, start_date_time=start_date_time, end_date_time=end_date_time, order_by=order_by, continuation_token=continuation_token)

Gets consumption data for a service location grouped by range

Gets consumption data for a service location grouped by range

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.grouped_service_consumption_dto_list_api_response_dto import GroupedServiceConsumptionDTOListApiResponseDTO
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
    api_instance = metering_client.ServiceConsumptionsApi(api_client)
    sluuid = 'sluuid_example' # str | Service location UUID
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    utility_type = 'utility_type_example' # str | Type of utility (optional)
    unit_of_measure = 'unit_of_measure_example' # str | Unit of measure (optional)
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). Start date and time for the data range (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). End date and time for the data range (optional)
    order_by = 'order_by_example' # str | Order by criteria (optional)
    continuation_token = 'continuation_token_example' # str | Token for paged results continuation (optional)

    try:
        # Gets consumption data for a service location grouped by range
        api_response = api_instance.get_consumptions_for_service_location_grouped_on_range(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, start_date_time=start_date_time, end_date_time=end_date_time, order_by=order_by, continuation_token=continuation_token)
        print("The response of ServiceConsumptionsApi->get_consumptions_for_service_location_grouped_on_range:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceConsumptionsApi->get_consumptions_for_service_location_grouped_on_range: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sluuid** | **str**| Service location UUID | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **utility_type** | **str**| Type of utility | [optional] 
 **unit_of_measure** | **str**| Unit of measure | [optional] 
 **start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). Start date and time for the data range | [optional] 
 **end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). End date and time for the data range | [optional] 
 **order_by** | **str**| Order by criteria | [optional] 
 **continuation_token** | **str**| Token for paged results continuation | [optional] 

### Return type

[**GroupedServiceConsumptionDTOListApiResponseDTO**](GroupedServiceConsumptionDTOListApiResponseDTO.md)

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

# **get_serviceconsumptions_sluuid**
> FlatPagedServiceConsumptionDTOPagedResponseModelDTOApiResponseDTO get_serviceconsumptions_sluuid(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, start_date_time=start_date_time, end_date_time=end_date_time, order_by=order_by, continuation_token=continuation_token)

Gets paginated consumption data for a service location

Gets paginated consumption data for a service location

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.flat_paged_service_consumption_dto_paged_response_model_dto_api_response_dto import FlatPagedServiceConsumptionDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = metering_client.ServiceConsumptionsApi(api_client)
    sluuid = 'sluuid_example' # str | Service location UUID
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    utility_type = 'utility_type_example' # str | Type of utility (optional)
    unit_of_measure = 'unit_of_measure_example' # str | Unit of measure (optional)
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). Start date and time for the data range (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). End date and time for the data range (optional)
    order_by = 'order_by_example' # str | Order by criteria (optional)
    continuation_token = 'continuation_token_example' # str | Token for paged results continuation (optional)

    try:
        # Gets paginated consumption data for a service location
        api_response = api_instance.get_serviceconsumptions_sluuid(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, start_date_time=start_date_time, end_date_time=end_date_time, order_by=order_by, continuation_token=continuation_token)
        print("The response of ServiceConsumptionsApi->get_serviceconsumptions_sluuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceConsumptionsApi->get_serviceconsumptions_sluuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sluuid** | **str**| Service location UUID | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **utility_type** | **str**| Type of utility | [optional] 
 **unit_of_measure** | **str**| Unit of measure | [optional] 
 **start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). Start date and time for the data range | [optional] 
 **end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). End date and time for the data range | [optional] 
 **order_by** | **str**| Order by criteria | [optional] 
 **continuation_token** | **str**| Token for paged results continuation | [optional] 

### Return type

[**FlatPagedServiceConsumptionDTOPagedResponseModelDTOApiResponseDTO**](FlatPagedServiceConsumptionDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_serviceconsumptions_sluuid_flat**
> FlatServiceConsumptionDTOListApiResponseDTO get_serviceconsumptions_sluuid_flat(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, group_by_period=group_by_period, start_date_time=start_date_time, end_date_time=end_date_time)

Gets flat consumption data for a service location with optional grouping by period

Gets flat consumption data for a service location with optional grouping by period

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.flat_service_consumption_dto_list_api_response_dto import FlatServiceConsumptionDTOListApiResponseDTO
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
    api_instance = metering_client.ServiceConsumptionsApi(api_client)
    sluuid = 'sluuid_example' # str | Service location UUID
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    utility_type = 'utility_type_example' # str | Type of utility (optional)
    unit_of_measure = 'unit_of_measure_example' # str | Unit of measure (optional)
    group_by_period = 'group_by_period_example' # str | Period to group data by (optional)
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). Start date and time for the data range (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). End date and time for the data range (optional)

    try:
        # Gets flat consumption data for a service location with optional grouping by period
        api_response = api_instance.get_serviceconsumptions_sluuid_flat(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, group_by_period=group_by_period, start_date_time=start_date_time, end_date_time=end_date_time)
        print("The response of ServiceConsumptionsApi->get_serviceconsumptions_sluuid_flat:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceConsumptionsApi->get_serviceconsumptions_sluuid_flat: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sluuid** | **str**| Service location UUID | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **utility_type** | **str**| Type of utility | [optional] 
 **unit_of_measure** | **str**| Unit of measure | [optional] 
 **group_by_period** | **str**| Period to group data by | [optional] 
 **start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). Start date and time for the data range | [optional] 
 **end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). End date and time for the data range | [optional] 

### Return type

[**FlatServiceConsumptionDTOListApiResponseDTO**](FlatServiceConsumptionDTOListApiResponseDTO.md)

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

# **get_serviceconsumptions_sluuid_raw**
> ServiceConsumptionDTOPagedResponseModelDTOApiResponseDTO get_serviceconsumptions_sluuid_raw(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, start_date_time=start_date_time, end_date_time=end_date_time, order_by=order_by, continuation_token=continuation_token)

Gets raw consumption data for a service location

Gets raw consumption data for a service location

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.service_consumption_dto_paged_response_model_dto_api_response_dto import ServiceConsumptionDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = metering_client.ServiceConsumptionsApi(api_client)
    sluuid = 'sluuid_example' # str | Service location UUID
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    utility_type = 'utility_type_example' # str | Type of utility (optional)
    unit_of_measure = 'unit_of_measure_example' # str | Unit of measure (optional)
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). Start date and time for the data range (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). End date and time for the data range (optional)
    order_by = 'order_by_example' # str | Order by criteria (optional)
    continuation_token = 'continuation_token_example' # str | Token for paged results continuation (optional)

    try:
        # Gets raw consumption data for a service location
        api_response = api_instance.get_serviceconsumptions_sluuid_raw(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, start_date_time=start_date_time, end_date_time=end_date_time, order_by=order_by, continuation_token=continuation_token)
        print("The response of ServiceConsumptionsApi->get_serviceconsumptions_sluuid_raw:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceConsumptionsApi->get_serviceconsumptions_sluuid_raw: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sluuid** | **str**| Service location UUID | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **utility_type** | **str**| Type of utility | [optional] 
 **unit_of_measure** | **str**| Unit of measure | [optional] 
 **start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). Start date and time for the data range | [optional] 
 **end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). End date and time for the data range | [optional] 
 **order_by** | **str**| Order by criteria | [optional] 
 **continuation_token** | **str**| Token for paged results continuation | [optional] 

### Return type

[**ServiceConsumptionDTOPagedResponseModelDTOApiResponseDTO**](ServiceConsumptionDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_serviceconsumptions_sluuid_types**
> ConsumptionTypeDTOListApiResponseDTO get_serviceconsumptions_sluuid_types(sluuid, zf_tuuid, zf_ouuid)

Gets available consumption types for a service location

Gets available consumption types for a service location

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.consumption_type_dto_list_api_response_dto import ConsumptionTypeDTOListApiResponseDTO
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
    api_instance = metering_client.ServiceConsumptionsApi(api_client)
    sluuid = 'sluuid_example' # str | Service location UUID
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Gets available consumption types for a service location
        api_response = api_instance.get_serviceconsumptions_sluuid_types(sluuid, zf_tuuid, zf_ouuid)
        print("The response of ServiceConsumptionsApi->get_serviceconsumptions_sluuid_types:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceConsumptionsApi->get_serviceconsumptions_sluuid_types: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sluuid** | **str**| Service location UUID | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**ConsumptionTypeDTOListApiResponseDTO**](ConsumptionTypeDTOListApiResponseDTO.md)

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

# **post_serviceconsumptions_aggregatedperperiod**
> AggregatedServiceConsumptionsPerPeriodDTOListApiResponseDTO post_serviceconsumptions_aggregatedperperiod(zf_tuuid, zf_ouuid, aggregated_service_consumption_per_period_request=aggregated_service_consumption_per_period_request)

Gets aggregated service consumptions per period for a list of service locations

Gets aggregated service consumptions per period for a list of service locations

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.aggregated_service_consumption_per_period_request import AggregatedServiceConsumptionPerPeriodRequest
from metering_client.models.aggregated_service_consumptions_per_period_dto_list_api_response_dto import AggregatedServiceConsumptionsPerPeriodDTOListApiResponseDTO
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
    api_instance = metering_client.ServiceConsumptionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    aggregated_service_consumption_per_period_request = {"serviceLocationIds":["string"],"groupByPeriod":{}} # AggregatedServiceConsumptionPerPeriodRequest | Request containing service location IDs and grouping period (optional)

    try:
        # Gets aggregated service consumptions per period for a list of service locations
        api_response = api_instance.post_serviceconsumptions_aggregatedperperiod(zf_tuuid, zf_ouuid, aggregated_service_consumption_per_period_request=aggregated_service_consumption_per_period_request)
        print("The response of ServiceConsumptionsApi->post_serviceconsumptions_aggregatedperperiod:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceConsumptionsApi->post_serviceconsumptions_aggregatedperperiod: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **aggregated_service_consumption_per_period_request** | [**AggregatedServiceConsumptionPerPeriodRequest**](AggregatedServiceConsumptionPerPeriodRequest.md)| Request containing service location IDs and grouping period | [optional] 

### Return type

[**AggregatedServiceConsumptionsPerPeriodDTOListApiResponseDTO**](AggregatedServiceConsumptionsPerPeriodDTOListApiResponseDTO.md)

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

# **post_serviceconsumptions_buckets**
> ServiceConsumptionBucketDTOListApiResponseDTO post_serviceconsumptions_buckets(zf_tuuid, zf_ouuid, bucketed_service_consumption_request=bucketed_service_consumption_request)

Gets consumption data for a service locations grouped by provided buckets

Gets consumption data for a service locations grouped by provided buckets

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.bucketed_service_consumption_request import BucketedServiceConsumptionRequest
from metering_client.models.service_consumption_bucket_dto_list_api_response_dto import ServiceConsumptionBucketDTOListApiResponseDTO
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
    api_instance = metering_client.ServiceConsumptionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bucketed_service_consumption_request = {"serviceLocationIds":["string"],"buckets":[{"startDateTime":"string","endDateTime":"string"}],"utilityType":{},"unitOfMeasure":{}} # BucketedServiceConsumptionRequest | Request containing buckets and parameters needed to determine service consumption source (optional)

    try:
        # Gets consumption data for a service locations grouped by provided buckets
        api_response = api_instance.post_serviceconsumptions_buckets(zf_tuuid, zf_ouuid, bucketed_service_consumption_request=bucketed_service_consumption_request)
        print("The response of ServiceConsumptionsApi->post_serviceconsumptions_buckets:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceConsumptionsApi->post_serviceconsumptions_buckets: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bucketed_service_consumption_request** | [**BucketedServiceConsumptionRequest**](BucketedServiceConsumptionRequest.md)| Request containing buckets and parameters needed to determine service consumption source | [optional] 

### Return type

[**ServiceConsumptionBucketDTOListApiResponseDTO**](ServiceConsumptionBucketDTOListApiResponseDTO.md)

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

# **post_serviceconsumptions_export_sum**
> AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTOApiResponseDTO post_serviceconsumptions_export_sum(zf_tuuid, zf_ouuid, continuation_token=continuation_token, service_consumption_sum_request=service_consumption_sum_request)

Gets sum of consumption values for a list of service locations

Gets sum of consumption values for a list of service locations

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.aggregated_service_consumptions_by_service_location_dto_paged_response_model_dto_api_response_dto import AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTOApiResponseDTO
from metering_client.models.service_consumption_sum_request import ServiceConsumptionSumRequest
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
    api_instance = metering_client.ServiceConsumptionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    continuation_token = 'continuation_token_example' # str | Token for paged results continuation (optional)
    service_consumption_sum_request = {"locationIds":["string"],"quickFilter":"string","startDateTime":"string","endDateTime":"string","sumByUtilityType":true} # ServiceConsumptionSumRequest | Request containing service location IDs and date range (optional)

    try:
        # Gets sum of consumption values for a list of service locations
        api_response = api_instance.post_serviceconsumptions_export_sum(zf_tuuid, zf_ouuid, continuation_token=continuation_token, service_consumption_sum_request=service_consumption_sum_request)
        print("The response of ServiceConsumptionsApi->post_serviceconsumptions_export_sum:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceConsumptionsApi->post_serviceconsumptions_export_sum: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **continuation_token** | **str**| Token for paged results continuation | [optional] 
 **service_consumption_sum_request** | [**ServiceConsumptionSumRequest**](ServiceConsumptionSumRequest.md)| Request containing service location IDs and date range | [optional] 

### Return type

[**AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTOApiResponseDTO**](AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **post_serviceconsumptions_yearlyaverage**
> AverageServiceConsumptionPerServiceLocationDTOListApiResponseDTO post_serviceconsumptions_yearlyaverage(zf_tuuid, zf_ouuid, average_service_consumption_per_service_location_request=average_service_consumption_per_service_location_request)

Gets yearly average consumption per service location

Gets yearly average consumption per service location

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.average_service_consumption_per_service_location_dto_list_api_response_dto import AverageServiceConsumptionPerServiceLocationDTOListApiResponseDTO
from metering_client.models.average_service_consumption_per_service_location_request import AverageServiceConsumptionPerServiceLocationRequest
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
    api_instance = metering_client.ServiceConsumptionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    average_service_consumption_per_service_location_request = {"serviceLocationIds":["string"]} # AverageServiceConsumptionPerServiceLocationRequest | Request containing service location IDs (optional)

    try:
        # Gets yearly average consumption per service location
        api_response = api_instance.post_serviceconsumptions_yearlyaverage(zf_tuuid, zf_ouuid, average_service_consumption_per_service_location_request=average_service_consumption_per_service_location_request)
        print("The response of ServiceConsumptionsApi->post_serviceconsumptions_yearlyaverage:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceConsumptionsApi->post_serviceconsumptions_yearlyaverage: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **average_service_consumption_per_service_location_request** | [**AverageServiceConsumptionPerServiceLocationRequest**](AverageServiceConsumptionPerServiceLocationRequest.md)| Request containing service location IDs | [optional] 

### Return type

[**AverageServiceConsumptionPerServiceLocationDTOListApiResponseDTO**](AverageServiceConsumptionPerServiceLocationDTOListApiResponseDTO.md)

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

