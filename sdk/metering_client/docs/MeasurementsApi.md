# metering_client.MeasurementsApi

All URIs are relative to *https://api.zerofriction.co/api/me*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_measurements_extchuuid_delete_measurementid**](MeasurementsApi.md#delete_measurements_extchuuid_delete_measurementid) | **DELETE** /Measurements/{extchuuid}/delete/{measurementId} | Deletes a specific measurement from an external channel.
[**get_measurements_extchuuid**](MeasurementsApi.md#get_measurements_extchuuid) | **GET** /Measurements/{extchuuid} | Gets measurement values for a specific external channel identifier within a date range.
[**get_measurements_extchuuid_flat**](MeasurementsApi.md#get_measurements_extchuuid_flat) | **GET** /Measurements/{extchuuid}/flat | Gets flat (non-paged) measurement values for a specific external channel within a date range.
[**get_measurements_m_meteruuid**](MeasurementsApi.md#get_measurements_m_meteruuid) | **GET** /Measurements/m/{meteruuid} | Gets adjacent measurement pairs for a meter at a specific measurement date.
[**post_measurements**](MeasurementsApi.md#post_measurements) | **POST** /Measurements | Adds a new measurement for an external channel.
[**post_measurements_bulk_delete**](MeasurementsApi.md#post_measurements_bulk_delete) | **POST** /Measurements/bulk/delete | Bulk deletes measurements based on specified criteria.
[**post_measurements_export_values**](MeasurementsApi.md#post_measurements_export_values) | **POST** /Measurements/export/values | Exports measurement values for a list of meters within a date range.
[**post_measurements_validate**](MeasurementsApi.md#post_measurements_validate) | **POST** /Measurements/validate | Validates measurements against business rules without persisting them.


# **delete_measurements_extchuuid_delete_measurementid**
> BooleanApiResponseDTO delete_measurements_extchuuid_delete_measurementid(extchuuid, measurement_id, zf_tuuid, zf_ouuid)

Deletes a specific measurement from an external channel.

Deletes a specific measurement from an external channel.

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
    api_instance = metering_client.MeasurementsApi(api_client)
    extchuuid = 'extchuuid_example' # str | The external channel identifier.
    measurement_id = 'measurement_id_example' # str | The ID of the measurement to delete.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes a specific measurement from an external channel.
        api_response = api_instance.delete_measurements_extchuuid_delete_measurementid(extchuuid, measurement_id, zf_tuuid, zf_ouuid)
        print("The response of MeasurementsApi->delete_measurements_extchuuid_delete_measurementid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeasurementsApi->delete_measurements_extchuuid_delete_measurementid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extchuuid** | **str**| The external channel identifier. | 
 **measurement_id** | **str**| The ID of the measurement to delete. | 
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
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_measurements_extchuuid**
> MeasurementDTOPagedResponseModelDTOApiResponseDTO get_measurements_extchuuid(extchuuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time, order_by=order_by, continuation_token=continuation_token)

Gets measurement values for a specific external channel identifier within a date range.

Gets measurement values for a specific external channel identifier within a date range.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.measurement_dto_paged_response_model_dto_api_response_dto import MeasurementDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = metering_client.MeasurementsApi(api_client)
    extchuuid = 'extchuuid_example' # str | The external channel identifier.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). The start date and time for the query range. (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). The end date and time for the query range. (optional)
    order_by = 'order_by_example' # str | Field to order the results by. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)

    try:
        # Gets measurement values for a specific external channel identifier within a date range.
        api_response = api_instance.get_measurements_extchuuid(extchuuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time, order_by=order_by, continuation_token=continuation_token)
        print("The response of MeasurementsApi->get_measurements_extchuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeasurementsApi->get_measurements_extchuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extchuuid** | **str**| The external channel identifier. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). The start date and time for the query range. | [optional] 
 **end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). The end date and time for the query range. | [optional] 
 **order_by** | **str**| Field to order the results by. | [optional] 
 **continuation_token** | **str**| Token for pagination. | [optional] 

### Return type

[**MeasurementDTOPagedResponseModelDTOApiResponseDTO**](MeasurementDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_measurements_extchuuid_flat**
> FlatMeasurementDTOListApiResponseDTO get_measurements_extchuuid_flat(extchuuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time)

Gets flat (non-paged) measurement values for a specific external channel within a date range.

Gets flat (non-paged) measurement values for a specific external channel within a date range.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.flat_measurement_dto_list_api_response_dto import FlatMeasurementDTOListApiResponseDTO
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
    api_instance = metering_client.MeasurementsApi(api_client)
    extchuuid = 'extchuuid_example' # str | The external channel identifier.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). The start date and time for the query range. (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). The end date and time for the query range. (optional)

    try:
        # Gets flat (non-paged) measurement values for a specific external channel within a date range.
        api_response = api_instance.get_measurements_extchuuid_flat(extchuuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time)
        print("The response of MeasurementsApi->get_measurements_extchuuid_flat:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeasurementsApi->get_measurements_extchuuid_flat: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extchuuid** | **str**| The external channel identifier. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). The start date and time for the query range. | [optional] 
 **end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). The end date and time for the query range. | [optional] 

### Return type

[**FlatMeasurementDTOListApiResponseDTO**](FlatMeasurementDTOListApiResponseDTO.md)

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

# **get_measurements_m_meteruuid**
> AdjacentMeasurementPairsDTOApiResponseDTO get_measurements_m_meteruuid(meteruuid, zf_tuuid, zf_ouuid, measurement_date=measurement_date, limit=limit)

Gets adjacent measurement pairs for a meter at a specific measurement date.

Gets adjacent measurement pairs for a meter at a specific measurement date.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.adjacent_measurement_pairs_dto_api_response_dto import AdjacentMeasurementPairsDTOApiResponseDTO
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
    api_instance = metering_client.MeasurementsApi(api_client)
    meteruuid = 'meteruuid_example' # str | The meter identifier.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    measurement_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). The reference measurement date. (optional)
    limit = 56 # int | Format - int32. The maximum number of pairs to return (defaults to 1). (optional)

    try:
        # Gets adjacent measurement pairs for a meter at a specific measurement date.
        api_response = api_instance.get_measurements_m_meteruuid(meteruuid, zf_tuuid, zf_ouuid, measurement_date=measurement_date, limit=limit)
        print("The response of MeasurementsApi->get_measurements_m_meteruuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeasurementsApi->get_measurements_m_meteruuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The meter identifier. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **measurement_date** | **datetime**| Format - date-time (as date-time in RFC3339). The reference measurement date. | [optional] 
 **limit** | **int**| Format - int32. The maximum number of pairs to return (defaults to 1). | [optional] 

### Return type

[**AdjacentMeasurementPairsDTOApiResponseDTO**](AdjacentMeasurementPairsDTOApiResponseDTO.md)

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

# **post_measurements**
> MeasurementDTOApiResponseDTO post_measurements(zf_tuuid, zf_ouuid, add_measurement_request=add_measurement_request)

Adds a new measurement for an external channel.

Adds a new measurement for an external channel.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.add_measurement_request import AddMeasurementRequest
from metering_client.models.measurement_dto_api_response_dto import MeasurementDTOApiResponseDTO
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
    api_instance = metering_client.MeasurementsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    add_measurement_request = {"endDateTime":"string","value":0,"externalChannelIdentifier":"string","meterId":"string","skipValidation":true,"resolveIssuesManually":true} # AddMeasurementRequest | The request containing measurement data to add. (optional)

    try:
        # Adds a new measurement for an external channel.
        api_response = api_instance.post_measurements(zf_tuuid, zf_ouuid, add_measurement_request=add_measurement_request)
        print("The response of MeasurementsApi->post_measurements:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeasurementsApi->post_measurements: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **add_measurement_request** | [**AddMeasurementRequest**](AddMeasurementRequest.md)| The request containing measurement data to add. | [optional] 

### Return type

[**MeasurementDTOApiResponseDTO**](MeasurementDTOApiResponseDTO.md)

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

# **post_measurements_bulk_delete**
> BooleanApiResponseDTO post_measurements_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_measurement_request=bulk_delete_measurement_request)

Bulk deletes measurements based on specified criteria.

Bulk deletes measurements based on specified criteria.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from metering_client.models.bulk_delete_measurement_request import BulkDeleteMeasurementRequest
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
    api_instance = metering_client.MeasurementsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_delete_measurement_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"externalChannelIdentifier":"string","startDateTime":"string","endDateTime":"string","showInvalid":true,"dataFrequency":{}},"quickFilter":"string"} # BulkDeleteMeasurementRequest | The request containing criteria for measurements to delete. (optional)

    try:
        # Bulk deletes measurements based on specified criteria.
        api_response = api_instance.post_measurements_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_measurement_request=bulk_delete_measurement_request)
        print("The response of MeasurementsApi->post_measurements_bulk_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeasurementsApi->post_measurements_bulk_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_delete_measurement_request** | [**BulkDeleteMeasurementRequest**](BulkDeleteMeasurementRequest.md)| The request containing criteria for measurements to delete. | [optional] 

### Return type

[**BooleanApiResponseDTO**](BooleanApiResponseDTO.md)

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

# **post_measurements_export_values**
> ExportMeasurementDTOListApiResponseDTO post_measurements_export_values(zf_tuuid, zf_ouuid, export_measurements_request=export_measurements_request)

Exports measurement values for a list of meters within a date range.

Exports measurement values for a list of meters within a date range.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.export_measurement_dto_list_api_response_dto import ExportMeasurementDTOListApiResponseDTO
from metering_client.models.export_measurements_request import ExportMeasurementsRequest
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
    api_instance = metering_client.MeasurementsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    export_measurements_request = {"meterIds":["string"],"startDateTime":"string","endDateTime":"string","orderBy":"string"} # ExportMeasurementsRequest | The request containing meter IDs and date range for export. (optional)

    try:
        # Exports measurement values for a list of meters within a date range.
        api_response = api_instance.post_measurements_export_values(zf_tuuid, zf_ouuid, export_measurements_request=export_measurements_request)
        print("The response of MeasurementsApi->post_measurements_export_values:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeasurementsApi->post_measurements_export_values: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **export_measurements_request** | [**ExportMeasurementsRequest**](ExportMeasurementsRequest.md)| The request containing meter IDs and date range for export. | [optional] 

### Return type

[**ExportMeasurementDTOListApiResponseDTO**](ExportMeasurementDTOListApiResponseDTO.md)

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

# **post_measurements_validate**
> ValidateMeasurementDTOApiResponseDTO post_measurements_validate(zf_tuuid, zf_ouuid, validate_measurement_request=validate_measurement_request)

Validates measurements against business rules without persisting them.

Validates measurements against business rules without persisting them.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.validate_measurement_dto_api_response_dto import ValidateMeasurementDTOApiResponseDTO
from metering_client.models.validate_measurement_request import ValidateMeasurementRequest
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
    api_instance = metering_client.MeasurementsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    validate_measurement_request = {"endDateTime":"string","value":0,"meterId":"string","externalChannelId":"string"} # ValidateMeasurementRequest | The request containing measurements to validate. (optional)

    try:
        # Validates measurements against business rules without persisting them.
        api_response = api_instance.post_measurements_validate(zf_tuuid, zf_ouuid, validate_measurement_request=validate_measurement_request)
        print("The response of MeasurementsApi->post_measurements_validate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeasurementsApi->post_measurements_validate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **validate_measurement_request** | [**ValidateMeasurementRequest**](ValidateMeasurementRequest.md)| The request containing measurements to validate. | [optional] 

### Return type

[**ValidateMeasurementDTOApiResponseDTO**](ValidateMeasurementDTOApiResponseDTO.md)

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

