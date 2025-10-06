# metering_client.ConsumptionsApi

All URIs are relative to *https://api.zerofriction.co/api/me*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_consumptions_extchuuid**](ConsumptionsApi.md#get_consumptions_extchuuid) | **GET** /Consumptions/{extchuuid} | Retrieves consumption values for a specific external channel within a date range.
[**get_consumptions_extchuuid_flat**](ConsumptionsApi.md#get_consumptions_extchuuid_flat) | **GET** /Consumptions/{extchuuid}/flat | Retrieves flat consumption values for a specific external channel with optional grouping by period.
[**post_consumptions_export_sum**](ConsumptionsApi.md#post_consumptions_export_sum) | **POST** /Consumptions/export/sum | Calculates and exports the sum of consumption values for a list of meters.
[**post_consumptions_extchuuid_recalculate**](ConsumptionsApi.md#post_consumptions_extchuuid_recalculate) | **POST** /Consumptions/{extchuuid}/recalculate | Recalculates consumption values for a specific channel within a given date range.


# **get_consumptions_extchuuid**
> FlatPagedConsumptionDTOPagedResponseModelDTOApiResponseDTO get_consumptions_extchuuid(extchuuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time, continuation_token=continuation_token)

Retrieves consumption values for a specific external channel within a date range.

Retrieves consumption values for a specific external channel within a date range.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.flat_paged_consumption_dto_paged_response_model_dto_api_response_dto import FlatPagedConsumptionDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = metering_client.ConsumptionsApi(api_client)
    extchuuid = 'extchuuid_example' # str | The external channel UUID to retrieve consumption data for.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). The start date and time for the consumption data range. (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). The end date and time for the consumption data range. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination of large result sets. (optional)

    try:
        # Retrieves consumption values for a specific external channel within a date range.
        api_response = api_instance.get_consumptions_extchuuid(extchuuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time, continuation_token=continuation_token)
        print("The response of ConsumptionsApi->get_consumptions_extchuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumptionsApi->get_consumptions_extchuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extchuuid** | **str**| The external channel UUID to retrieve consumption data for. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). The start date and time for the consumption data range. | [optional] 
 **end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). The end date and time for the consumption data range. | [optional] 
 **continuation_token** | **str**| Token for pagination of large result sets. | [optional] 

### Return type

[**FlatPagedConsumptionDTOPagedResponseModelDTOApiResponseDTO**](FlatPagedConsumptionDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_consumptions_extchuuid_flat**
> FlatConsumptionDTOPagedResponseModelDTOApiResponseDTO get_consumptions_extchuuid_flat(extchuuid, zf_tuuid, zf_ouuid, group_by_period=group_by_period, start_date_time=start_date_time, end_date_time=end_date_time)

Retrieves flat consumption values for a specific external channel with optional grouping by period.

Retrieves flat consumption values for a specific external channel with optional grouping by period.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.flat_consumption_dto_paged_response_model_dto_api_response_dto import FlatConsumptionDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = metering_client.ConsumptionsApi(api_client)
    extchuuid = 'extchuuid_example' # str | The external channel UUID to retrieve consumption data for.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    group_by_period = 'group_by_period_example' # str | Optional period for aggregating consumption data (daily, weekly, monthly, etc.). (optional)
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). The start date and time for the consumption data range. (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). The end date and time for the consumption data range. (optional)

    try:
        # Retrieves flat consumption values for a specific external channel with optional grouping by period.
        api_response = api_instance.get_consumptions_extchuuid_flat(extchuuid, zf_tuuid, zf_ouuid, group_by_period=group_by_period, start_date_time=start_date_time, end_date_time=end_date_time)
        print("The response of ConsumptionsApi->get_consumptions_extchuuid_flat:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumptionsApi->get_consumptions_extchuuid_flat: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extchuuid** | **str**| The external channel UUID to retrieve consumption data for. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **group_by_period** | **str**| Optional period for aggregating consumption data (daily, weekly, monthly, etc.). | [optional] 
 **start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). The start date and time for the consumption data range. | [optional] 
 **end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). The end date and time for the consumption data range. | [optional] 

### Return type

[**FlatConsumptionDTOPagedResponseModelDTOApiResponseDTO**](FlatConsumptionDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **post_consumptions_export_sum**
> AggregatedConsumptionsByMeterDTOListApiResponseDTO post_consumptions_export_sum(zf_tuuid, zf_ouuid, export_consumptions_for_meters_request=export_consumptions_for_meters_request)

Calculates and exports the sum of consumption values for a list of meters.

Calculates and exports the sum of consumption values for a list of meters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.aggregated_consumptions_by_meter_dto_list_api_response_dto import AggregatedConsumptionsByMeterDTOListApiResponseDTO
from metering_client.models.export_consumptions_for_meters_request import ExportConsumptionsForMetersRequest
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
    api_instance = metering_client.ConsumptionsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    export_consumptions_for_meters_request = {"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"servicelocationIds":["string"],"propertyGroupIds":["string"],"meterType":{},"receivedMeteringDataStart":"string","receivedMeteringDataEnd":"string","nextExpectedReadingDateStart":"string","nextExpectedReadingDateEnd":"string","parentSerialNumber":"string","filterByReadingFrequency":true,"readingFrequency":{},"customerId":"string","meterTypeGroup":"string","meterSerialNumber":"string"},"quickFilter":"string","meterIds":["string"],"startDateTime":"string","endDateTime":"string","onlyValidate":true} # ExportConsumptionsForMetersRequest | The request containing the list of meters, date range, and filtering parameters. (optional)

    try:
        # Calculates and exports the sum of consumption values for a list of meters.
        api_response = api_instance.post_consumptions_export_sum(zf_tuuid, zf_ouuid, export_consumptions_for_meters_request=export_consumptions_for_meters_request)
        print("The response of ConsumptionsApi->post_consumptions_export_sum:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumptionsApi->post_consumptions_export_sum: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **export_consumptions_for_meters_request** | [**ExportConsumptionsForMetersRequest**](ExportConsumptionsForMetersRequest.md)| The request containing the list of meters, date range, and filtering parameters. | [optional] 

### Return type

[**AggregatedConsumptionsByMeterDTOListApiResponseDTO**](AggregatedConsumptionsByMeterDTOListApiResponseDTO.md)

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

# **post_consumptions_extchuuid_recalculate**
> BooleanApiResponseDTO post_consumptions_extchuuid_recalculate(extchuuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time)

Recalculates consumption values for a specific channel within a given date range.

Recalculates consumption values for a specific channel within a given date range.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.boolean_api_response_dto import BooleanApiResponseDTO
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
    api_instance = metering_client.ConsumptionsApi(api_client)
    extchuuid = 'extchuuid_example' # str | The external channel UUID to recalculate consumption data for.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). The start date and time for the consumption data range to recalculate. (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). The end date and time for the consumption data range to recalculate. (optional)

    try:
        # Recalculates consumption values for a specific channel within a given date range.
        api_response = api_instance.post_consumptions_extchuuid_recalculate(extchuuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time)
        print("The response of ConsumptionsApi->post_consumptions_extchuuid_recalculate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumptionsApi->post_consumptions_extchuuid_recalculate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extchuuid** | **str**| The external channel UUID to recalculate consumption data for. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). The start date and time for the consumption data range to recalculate. | [optional] 
 **end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). The end date and time for the consumption data range to recalculate. | [optional] 

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

