# masterdata_client.MetersApi

All URIs are relative to *https://api.zerofriction.co/api/md*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_meters**](MetersApi.md#get_meters) | **GET** /Meters | Retrieve meters based on the provided query parameters.
[**get_meters_meteruuid**](MetersApi.md#get_meters_meteruuid) | **GET** /Meters/{meteruuid} | Retrieve a meter by its ID.
[**get_meters_overviewcount**](MetersApi.md#get_meters_overviewcount) | **GET** /Meters/overviewcount | Retrieve the overview count of meters based on the provided query parameters.
[**post_meters**](MetersApi.md#post_meters) | **POST** /Meters | Create new meter.
[**post_meters_bulk_uninstall**](MetersApi.md#post_meters_bulk_uninstall) | **POST** /Meters/bulk/uninstall | Uninstall multiple installed meters in bulk.
[**post_meters_entityid_customproperties**](MetersApi.md#post_meters_entityid_customproperties) | **POST** /Meters/{entityId}/customproperties | /Meters/{entityId}/customproperties - POST
[**post_meters_meteruuid_channels**](MetersApi.md#post_meters_meteruuid_channels) | **POST** /Meters/{meteruuid}/channels | Update channels configured on a meter.
[**post_meters_meteruuid_details**](MetersApi.md#post_meters_meteruuid_details) | **POST** /Meters/{meteruuid}/details | Update details of a meter.
[**post_meters_meteruuid_install**](MetersApi.md#post_meters_meteruuid_install) | **POST** /Meters/{meteruuid}/install | Install an uninstalled meter.
[**post_meters_meteruuid_metertag**](MetersApi.md#post_meters_meteruuid_metertag) | **POST** /Meters/{meteruuid}/metertag | Update meter tag.
[**post_meters_meteruuid_submeter_add**](MetersApi.md#post_meters_meteruuid_submeter_add) | **POST** /Meters/{meteruuid}/submeter/add | Set this meter as a parent meter of another meter.
[**post_meters_meteruuid_uninstall**](MetersApi.md#post_meters_meteruuid_uninstall) | **POST** /Meters/{meteruuid}/uninstall | Uninstall an installed meter.
[**post_meters_meteruuid_updateparentrelation**](MetersApi.md#post_meters_meteruuid_updateparentrelation) | **POST** /Meters/{meteruuid}/updateparentrelation | Set this meter as a sub-meter of another meter.
[**post_meters_meteruuid_validate**](MetersApi.md#post_meters_meteruuid_validate) | **POST** /Meters/{meteruuid}/validate | Trigger meter validation.


# **get_meters**
> MeterDTOPagedResponseModelDTOApiResponseDTO get_meters(zf_tuuid, zf_ouuid, servicelocation_ids=servicelocation_ids, property_group_ids=property_group_ids, meter_type_name=meter_type_name, meter_type_id=meter_type_id, received_metering_data_start=received_metering_data_start, received_metering_data_end=received_metering_data_end, next_expected_reading_date_start=next_expected_reading_date_start, next_expected_reading_date_end=next_expected_reading_date_end, parent_serial_number=parent_serial_number, filter_by_reading_frequency=filter_by_reading_frequency, reading_frequency_name=reading_frequency_name, reading_frequency_id=reading_frequency_id, customer_id=customer_id, meter_type_group=meter_type_group, meter_serial_number=meter_serial_number, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

Retrieve meters based on the provided query parameters.

Retrieve meters based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.meter_dto_paged_response_model_dto_api_response_dto import MeterDTOPagedResponseModelDTOApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.MetersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    servicelocation_ids = ['servicelocation_ids_example'] # List[str] |  (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] |  (optional)
    meter_type_name = 'meter_type_name_example' # str |  (optional)
    meter_type_id = 56 # int | Format - int32. (optional)
    received_metering_data_start = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    received_metering_data_end = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    next_expected_reading_date_start = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    next_expected_reading_date_end = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    parent_serial_number = 'parent_serial_number_example' # str |  (optional)
    filter_by_reading_frequency = True # bool |  (optional)
    reading_frequency_name = 'reading_frequency_name_example' # str |  (optional)
    reading_frequency_id = 56 # int | Format - int32. (optional)
    customer_id = 'customer_id_example' # str |  (optional)
    meter_type_group = 'meter_type_group_example' # str |  (optional)
    meter_serial_number = 'meter_serial_number_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    order_by = 'order_by_example' # str | Allows to order the meters. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieve meters based on the provided query parameters.
        api_response = api_instance.get_meters(zf_tuuid, zf_ouuid, servicelocation_ids=servicelocation_ids, property_group_ids=property_group_ids, meter_type_name=meter_type_name, meter_type_id=meter_type_id, received_metering_data_start=received_metering_data_start, received_metering_data_end=received_metering_data_end, next_expected_reading_date_start=next_expected_reading_date_start, next_expected_reading_date_end=next_expected_reading_date_end, parent_serial_number=parent_serial_number, filter_by_reading_frequency=filter_by_reading_frequency, reading_frequency_name=reading_frequency_name, reading_frequency_id=reading_frequency_id, customer_id=customer_id, meter_type_group=meter_type_group, meter_serial_number=meter_serial_number, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of MetersApi->get_meters:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetersApi->get_meters: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **servicelocation_ids** | [**List[str]**](str.md)|  | [optional] 
 **property_group_ids** | [**List[str]**](str.md)|  | [optional] 
 **meter_type_name** | **str**|  | [optional] 
 **meter_type_id** | **int**| Format - int32. | [optional] 
 **received_metering_data_start** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **received_metering_data_end** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **next_expected_reading_date_start** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **next_expected_reading_date_end** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **parent_serial_number** | **str**|  | [optional] 
 **filter_by_reading_frequency** | **bool**|  | [optional] 
 **reading_frequency_name** | **str**|  | [optional] 
 **reading_frequency_id** | **int**| Format - int32. | [optional] 
 **customer_id** | **str**|  | [optional] 
 **meter_type_group** | **str**|  | [optional] 
 **meter_serial_number** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **order_by** | **str**| Allows to order the meters. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**MeterDTOPagedResponseModelDTOApiResponseDTO**](MeterDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_meters_meteruuid**
> MeterDTOApiResponseDTO get_meters_meteruuid(meteruuid, zf_tuuid, zf_ouuid, show_hidden_channels=show_hidden_channels)

Retrieve a meter by its ID.

Retrieve a meter by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.meter_dto_api_response_dto import MeterDTOApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.MetersApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    show_hidden_channels = True # bool |  (optional)

    try:
        # Retrieve a meter by its ID.
        api_response = api_instance.get_meters_meteruuid(meteruuid, zf_tuuid, zf_ouuid, show_hidden_channels=show_hidden_channels)
        print("The response of MetersApi->get_meters_meteruuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetersApi->get_meters_meteruuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **show_hidden_channels** | **bool**|  | [optional] 

### Return type

[**MeterDTOApiResponseDTO**](MeterDTOApiResponseDTO.md)

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

# **get_meters_overviewcount**
> MeterOverviewCountDTOApiResponseDTO get_meters_overviewcount(zf_tuuid, zf_ouuid, servicelocation_ids=servicelocation_ids, property_group_ids=property_group_ids, meter_type_name=meter_type_name, meter_type_id=meter_type_id, received_metering_data_start=received_metering_data_start, received_metering_data_end=received_metering_data_end, next_expected_reading_date_start=next_expected_reading_date_start, next_expected_reading_date_end=next_expected_reading_date_end, parent_serial_number=parent_serial_number, filter_by_reading_frequency=filter_by_reading_frequency, reading_frequency_name=reading_frequency_name, reading_frequency_id=reading_frequency_id, customer_id=customer_id, meter_type_group=meter_type_group, meter_serial_number=meter_serial_number, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Retrieve the overview count of meters based on the provided query parameters.

Retrieve the overview count of meters based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.meter_overview_count_dto_api_response_dto import MeterOverviewCountDTOApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.MetersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    servicelocation_ids = ['servicelocation_ids_example'] # List[str] |  (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] |  (optional)
    meter_type_name = 'meter_type_name_example' # str |  (optional)
    meter_type_id = 56 # int | Format - int32. (optional)
    received_metering_data_start = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    received_metering_data_end = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    next_expected_reading_date_start = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    next_expected_reading_date_end = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    parent_serial_number = 'parent_serial_number_example' # str |  (optional)
    filter_by_reading_frequency = True # bool |  (optional)
    reading_frequency_name = 'reading_frequency_name_example' # str |  (optional)
    reading_frequency_id = 56 # int | Format - int32. (optional)
    customer_id = 'customer_id_example' # str |  (optional)
    meter_type_group = 'meter_type_group_example' # str |  (optional)
    meter_serial_number = 'meter_serial_number_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Retrieve the overview count of meters based on the provided query parameters.
        api_response = api_instance.get_meters_overviewcount(zf_tuuid, zf_ouuid, servicelocation_ids=servicelocation_ids, property_group_ids=property_group_ids, meter_type_name=meter_type_name, meter_type_id=meter_type_id, received_metering_data_start=received_metering_data_start, received_metering_data_end=received_metering_data_end, next_expected_reading_date_start=next_expected_reading_date_start, next_expected_reading_date_end=next_expected_reading_date_end, parent_serial_number=parent_serial_number, filter_by_reading_frequency=filter_by_reading_frequency, reading_frequency_name=reading_frequency_name, reading_frequency_id=reading_frequency_id, customer_id=customer_id, meter_type_group=meter_type_group, meter_serial_number=meter_serial_number, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of MetersApi->get_meters_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetersApi->get_meters_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **servicelocation_ids** | [**List[str]**](str.md)|  | [optional] 
 **property_group_ids** | [**List[str]**](str.md)|  | [optional] 
 **meter_type_name** | **str**|  | [optional] 
 **meter_type_id** | **int**| Format - int32. | [optional] 
 **received_metering_data_start** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **received_metering_data_end** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **next_expected_reading_date_start** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **next_expected_reading_date_end** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **parent_serial_number** | **str**|  | [optional] 
 **filter_by_reading_frequency** | **bool**|  | [optional] 
 **reading_frequency_name** | **str**|  | [optional] 
 **reading_frequency_id** | **int**| Format - int32. | [optional] 
 **customer_id** | **str**|  | [optional] 
 **meter_type_group** | **str**|  | [optional] 
 **meter_serial_number** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**MeterOverviewCountDTOApiResponseDTO**](MeterOverviewCountDTOApiResponseDTO.md)

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

# **post_meters**
> MeterDTOApiResponseDTO post_meters(zf_tuuid, zf_ouuid, create_meter_request=create_meter_request)

Create new meter.

Create new meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.create_meter_request import CreateMeterRequest
from masterdata_client.models.meter_dto_api_response_dto import MeterDTOApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.MetersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_meter_request = {"serialNumber":"string","meterType":{},"meterTag":"string","modelId":"string","mutationDateTime":"string","channels":[{"dataFrequency":{},"meteringType":{},"utilityType":{},"direction":{},"incrementationType":{},"timeOfUse":"string","unitOfMeasure":{},"externalIdentifier":"string","description":"string","relationExternalReference":"string"}],"readingFrequency":{},"nextExpectedReadingDate":"string","properties":{},"parentRelation":{"parentMeterId":"string","externalReference":"string"}} # CreateMeterRequest | The request containing meter details. (optional)

    try:
        # Create new meter.
        api_response = api_instance.post_meters(zf_tuuid, zf_ouuid, create_meter_request=create_meter_request)
        print("The response of MetersApi->post_meters:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetersApi->post_meters: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_meter_request** | [**CreateMeterRequest**](CreateMeterRequest.md)| The request containing meter details. | [optional] 

### Return type

[**MeterDTOApiResponseDTO**](MeterDTOApiResponseDTO.md)

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

# **post_meters_bulk_uninstall**
> BooleanApiResponseDTO post_meters_bulk_uninstall(zf_tuuid, zf_ouuid, bulk_uninstall_meter_request=bulk_uninstall_meter_request)

Uninstall multiple installed meters in bulk.

Uninstall multiple installed meters in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from masterdata_client.models.bulk_uninstall_meter_request import BulkUninstallMeterRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.MetersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_uninstall_meter_request = {"removeDate":"string","onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"servicelocationIds":["string"],"propertyGroupIds":["string"],"meterType":{},"receivedMeteringDataStart":"string","receivedMeteringDataEnd":"string","nextExpectedReadingDateStart":"string","nextExpectedReadingDateEnd":"string","parentSerialNumber":"string","filterByReadingFrequency":true,"readingFrequency":{},"customerId":"string","meterTypeGroup":"string","meterSerialNumber":"string"},"quickFilter":"string"} # BulkUninstallMeterRequest | The request containing bulk unintallation details and query parameters to filter the meters to be uninstalled. (optional)

    try:
        # Uninstall multiple installed meters in bulk.
        api_response = api_instance.post_meters_bulk_uninstall(zf_tuuid, zf_ouuid, bulk_uninstall_meter_request=bulk_uninstall_meter_request)
        print("The response of MetersApi->post_meters_bulk_uninstall:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetersApi->post_meters_bulk_uninstall: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_uninstall_meter_request** | [**BulkUninstallMeterRequest**](BulkUninstallMeterRequest.md)| The request containing bulk unintallation details and query parameters to filter the meters to be uninstalled. | [optional] 

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

# **post_meters_entityid_customproperties**
> MeterDTOApiResponseDTO post_meters_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)

/Meters/{entityId}/customproperties - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.meter_dto_api_response_dto import MeterDTOApiResponseDTO
from masterdata_client.models.update_custom_entity_properties_request import UpdateCustomEntityPropertiesRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.MetersApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_custom_entity_properties_request = {"properties":[{"customEntityPropertyTypeId":"string","values":[{"startDateTime":"string","endDateTime":"string","valueDecimal":0,"valueString":"string","valueBoolean":true,"valueNumber":0,"valueDateTime":"string","valueDropdown":["string"]}]}]} # UpdateCustomEntityPropertiesRequest |  (optional)

    try:
        # /Meters/{entityId}/customproperties - POST
        api_response = api_instance.post_meters_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)
        print("The response of MetersApi->post_meters_entityid_customproperties:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetersApi->post_meters_entityid_customproperties: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_custom_entity_properties_request** | [**UpdateCustomEntityPropertiesRequest**](UpdateCustomEntityPropertiesRequest.md)|  | [optional] 

### Return type

[**MeterDTOApiResponseDTO**](MeterDTOApiResponseDTO.md)

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

# **post_meters_meteruuid_channels**
> MeterDTOApiResponseDTO post_meters_meteruuid_channels(meteruuid, zf_tuuid, zf_ouuid, update_meter_channels_request=update_meter_channels_request)

Update channels configured on a meter.

Update channels configured on a meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.meter_dto_api_response_dto import MeterDTOApiResponseDTO
from masterdata_client.models.update_meter_channels_request import UpdateMeterChannelsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.MetersApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_meter_channels_request = {"mutationDateTime":"string","channelTemplates":[{"dataFrequency":{},"meteringType":{},"utilityType":{},"direction":{},"incrementationType":{},"timeOfUse":"string","unitOfMeasure":{},"externalIdentifier":"string","description":"string","relationExternalReference":"string"}]} # UpdateMeterChannelsRequest | The request containing all channels configured on a meter after the mutation date. (optional)

    try:
        # Update channels configured on a meter.
        api_response = api_instance.post_meters_meteruuid_channels(meteruuid, zf_tuuid, zf_ouuid, update_meter_channels_request=update_meter_channels_request)
        print("The response of MetersApi->post_meters_meteruuid_channels:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetersApi->post_meters_meteruuid_channels: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_meter_channels_request** | [**UpdateMeterChannelsRequest**](UpdateMeterChannelsRequest.md)| The request containing all channels configured on a meter after the mutation date. | [optional] 

### Return type

[**MeterDTOApiResponseDTO**](MeterDTOApiResponseDTO.md)

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

# **post_meters_meteruuid_details**
> MeterDTOApiResponseDTO post_meters_meteruuid_details(meteruuid, zf_tuuid, zf_ouuid, update_meter_details_request=update_meter_details_request)

Update details of a meter.

Update details of a meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.meter_dto_api_response_dto import MeterDTOApiResponseDTO
from masterdata_client.models.update_meter_details_request import UpdateMeterDetailsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.MetersApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_meter_details_request = {"meterType":{},"nextExpectedReadingDate":"string","meterReadingFrequency":{}} # UpdateMeterDetailsRequest | The request containing meter details. (optional)

    try:
        # Update details of a meter.
        api_response = api_instance.post_meters_meteruuid_details(meteruuid, zf_tuuid, zf_ouuid, update_meter_details_request=update_meter_details_request)
        print("The response of MetersApi->post_meters_meteruuid_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetersApi->post_meters_meteruuid_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_meter_details_request** | [**UpdateMeterDetailsRequest**](UpdateMeterDetailsRequest.md)| The request containing meter details. | [optional] 

### Return type

[**MeterDTOApiResponseDTO**](MeterDTOApiResponseDTO.md)

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

# **post_meters_meteruuid_install**
> MeterDTOApiResponseDTO post_meters_meteruuid_install(meteruuid, zf_tuuid, zf_ouuid, install_meter_request=install_meter_request)

Install an uninstalled meter.

Install an uninstalled meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.install_meter_request import InstallMeterRequest
from masterdata_client.models.meter_dto_api_response_dto import MeterDTOApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.MetersApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    install_meter_request = {"mutationDateTime":"string","serviceLocationId":"string","propertyGroupId":"string","addressInstalled":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":{},"localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"channelTemplates":[{"dataFrequency":{},"meteringType":{},"utilityType":{},"direction":{},"incrementationType":{},"timeOfUse":"string","unitOfMeasure":{},"externalIdentifier":"string","description":"string","relationExternalReference":"string"}],"nextExpectedReadingDate":"string","readingFrequency":{}} # InstallMeterRequest | The request containing installation details. (optional)

    try:
        # Install an uninstalled meter.
        api_response = api_instance.post_meters_meteruuid_install(meteruuid, zf_tuuid, zf_ouuid, install_meter_request=install_meter_request)
        print("The response of MetersApi->post_meters_meteruuid_install:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetersApi->post_meters_meteruuid_install: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **install_meter_request** | [**InstallMeterRequest**](InstallMeterRequest.md)| The request containing installation details. | [optional] 

### Return type

[**MeterDTOApiResponseDTO**](MeterDTOApiResponseDTO.md)

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

# **post_meters_meteruuid_metertag**
> MeterDTOApiResponseDTO post_meters_meteruuid_metertag(meteruuid, zf_tuuid, zf_ouuid, update_meter_tag_request=update_meter_tag_request)

Update meter tag.

Update meter tag.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.meter_dto_api_response_dto import MeterDTOApiResponseDTO
from masterdata_client.models.update_meter_tag_request import UpdateMeterTagRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.MetersApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_meter_tag_request = {"meterTag":"string"} # UpdateMeterTagRequest | The request containing new meter tag. (optional)

    try:
        # Update meter tag.
        api_response = api_instance.post_meters_meteruuid_metertag(meteruuid, zf_tuuid, zf_ouuid, update_meter_tag_request=update_meter_tag_request)
        print("The response of MetersApi->post_meters_meteruuid_metertag:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetersApi->post_meters_meteruuid_metertag: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_meter_tag_request** | [**UpdateMeterTagRequest**](UpdateMeterTagRequest.md)| The request containing new meter tag. | [optional] 

### Return type

[**MeterDTOApiResponseDTO**](MeterDTOApiResponseDTO.md)

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

# **post_meters_meteruuid_submeter_add**
> MeterDTOApiResponseDTO post_meters_meteruuid_submeter_add(meteruuid, zf_tuuid, zf_ouuid, add_sub_meter_request=add_sub_meter_request)

Set this meter as a parent meter of another meter.

Set this meter as a parent meter of another meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.add_sub_meter_request import AddSubMeterRequest
from masterdata_client.models.meter_dto_api_response_dto import MeterDTOApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.MetersApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter, which is supposed to be a parent meter.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    add_sub_meter_request = {"subMeterId":"string","externalReference":"string"} # AddSubMeterRequest | The request containing parent relation details, including the ID of the meter, which is supposed to be a sub-meter. (optional)

    try:
        # Set this meter as a parent meter of another meter.
        api_response = api_instance.post_meters_meteruuid_submeter_add(meteruuid, zf_tuuid, zf_ouuid, add_sub_meter_request=add_sub_meter_request)
        print("The response of MetersApi->post_meters_meteruuid_submeter_add:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetersApi->post_meters_meteruuid_submeter_add: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter, which is supposed to be a parent meter. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **add_sub_meter_request** | [**AddSubMeterRequest**](AddSubMeterRequest.md)| The request containing parent relation details, including the ID of the meter, which is supposed to be a sub-meter. | [optional] 

### Return type

[**MeterDTOApiResponseDTO**](MeterDTOApiResponseDTO.md)

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

# **post_meters_meteruuid_uninstall**
> MeterDTOApiResponseDTO post_meters_meteruuid_uninstall(meteruuid, zf_tuuid, zf_ouuid, uninstall_meter_request=uninstall_meter_request)

Uninstall an installed meter.

Uninstall an installed meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.meter_dto_api_response_dto import MeterDTOApiResponseDTO
from masterdata_client.models.uninstall_meter_request import UninstallMeterRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.MetersApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    uninstall_meter_request = {"removeDate":"string"} # UninstallMeterRequest | The request containing uninstallation details. (optional)

    try:
        # Uninstall an installed meter.
        api_response = api_instance.post_meters_meteruuid_uninstall(meteruuid, zf_tuuid, zf_ouuid, uninstall_meter_request=uninstall_meter_request)
        print("The response of MetersApi->post_meters_meteruuid_uninstall:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetersApi->post_meters_meteruuid_uninstall: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **uninstall_meter_request** | [**UninstallMeterRequest**](UninstallMeterRequest.md)| The request containing uninstallation details. | [optional] 

### Return type

[**MeterDTOApiResponseDTO**](MeterDTOApiResponseDTO.md)

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

# **post_meters_meteruuid_updateparentrelation**
> MeterDTOApiResponseDTO post_meters_meteruuid_updateparentrelation(meteruuid, zf_tuuid, zf_ouuid, update_parent_relation_request=update_parent_relation_request)

Set this meter as a sub-meter of another meter.

Set this meter as a sub-meter of another meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.meter_dto_api_response_dto import MeterDTOApiResponseDTO
from masterdata_client.models.update_parent_relation_request import UpdateParentRelationRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.MetersApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter, which is supposed to be a sub-meter.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_parent_relation_request = {"meterId":"string","externalReference":"string"} # UpdateParentRelationRequest | The request containing parent relation details, including the ID of the meter, which is supposed to be a parent meter. (optional)

    try:
        # Set this meter as a sub-meter of another meter.
        api_response = api_instance.post_meters_meteruuid_updateparentrelation(meteruuid, zf_tuuid, zf_ouuid, update_parent_relation_request=update_parent_relation_request)
        print("The response of MetersApi->post_meters_meteruuid_updateparentrelation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetersApi->post_meters_meteruuid_updateparentrelation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter, which is supposed to be a sub-meter. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_parent_relation_request** | [**UpdateParentRelationRequest**](UpdateParentRelationRequest.md)| The request containing parent relation details, including the ID of the meter, which is supposed to be a parent meter. | [optional] 

### Return type

[**MeterDTOApiResponseDTO**](MeterDTOApiResponseDTO.md)

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

# **post_meters_meteruuid_validate**
> MeterDTOApiResponseDTO post_meters_meteruuid_validate(meteruuid, zf_tuuid, zf_ouuid)

Trigger meter validation.

Trigger meter validation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.meter_dto_api_response_dto import MeterDTOApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.MetersApi(api_client)
    meteruuid = 'meteruuid_example' # str | The ID of the meter.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Trigger meter validation.
        api_response = api_instance.post_meters_meteruuid_validate(meteruuid, zf_tuuid, zf_ouuid)
        print("The response of MetersApi->post_meters_meteruuid_validate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetersApi->post_meters_meteruuid_validate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The ID of the meter. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**MeterDTOApiResponseDTO**](MeterDTOApiResponseDTO.md)

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

