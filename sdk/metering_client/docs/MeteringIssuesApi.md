# metering_client.MeteringIssuesApi

All URIs are relative to *https://api.zerofriction.co/api/me*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_meteringissues**](MeteringIssuesApi.md#get_meteringissues) | **GET** /MeteringIssues | Retrieves a paged list of metering issues based on specified filter criteria.
[**get_meteringissues_getallbymeter**](MeteringIssuesApi.md#get_meteringissues_getallbymeter) | **GET** /MeteringIssues/getAllByMeter | Retrieves a paged list of metering issues for a specific meter.
[**get_meteringissues_grouped**](MeteringIssuesApi.md#get_meteringissues_grouped) | **GET** /MeteringIssues/grouped | Retrieves a paged list of metering issues grouped by a specified property.
[**get_meteringissues_meters**](MeteringIssuesApi.md#get_meteringissues_meters) | **GET** /MeteringIssues/meters | Retrieves a paged list of meters that have metering issues.
[**get_meteringissues_overviewcount**](MeteringIssuesApi.md#get_meteringissues_overviewcount) | **GET** /MeteringIssues/overviewcount | Retrieves count statistics for metering issues based on specified filter criteria.
[**get_meteringissues_propertygroups**](MeteringIssuesApi.md#get_meteringissues_propertygroups) | **GET** /MeteringIssues/propertygroups | Retrieves a paged list of property groups that have metering issues.
[**post_meteringissues_bulk_ignore**](MeteringIssuesApi.md#post_meteringissues_bulk_ignore) | **POST** /MeteringIssues/bulk/ignore | Ignores multiple metering issues in bulk.
[**post_meteringissues_bulk_resolve**](MeteringIssuesApi.md#post_meteringissues_bulk_resolve) | **POST** /MeteringIssues/bulk/resolve | Resolves multiple metering issues in bulk.
[**post_meteringissues_issueid_ignore**](MeteringIssuesApi.md#post_meteringissues_issueid_ignore) | **POST** /MeteringIssues/{issueId}/ignore | Ignores a specific metering issue.
[**post_meteringissues_issueid_resolve**](MeteringIssuesApi.md#post_meteringissues_issueid_resolve) | **POST** /MeteringIssues/{issueId}/resolve | Resolves a specific metering issue.


# **get_meteringissues**
> MeteringIssueDTOPagedResponseModelDTOApiResponseDTO get_meteringissues(zf_tuuid, zf_ouuid, meter_ids=meter_ids, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, statuses=statuses, property_group_ids=property_group_ids, meter_model_ids=meter_model_ids, errors=errors, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, limit=limit, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

Retrieves a paged list of metering issues based on specified filter criteria.

Retrieves a paged list of metering issues based on specified filter criteria.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.metering_issue_dto_paged_response_model_dto_api_response_dto import MeteringIssueDTOPagedResponseModelDTOApiResponseDTO
from metering_client.models.metering_issue_error import MeteringIssueError
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
    api_instance = metering_client.MeteringIssuesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    meter_ids = ['meter_ids_example'] # List[str] |  (optional)
    noticed_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    noticed_end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    statuses = ['statuses_example'] # List[str] |  (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] |  (optional)
    meter_model_ids = ['meter_model_ids_example'] # List[str] |  (optional)
    errors = [metering_client.MeteringIssueError()] # List[MeteringIssueError] |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    limit = 56 # int | Format - int32. Maximum number of items to return. (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    order_by = 'order_by_example' # str | Property name to order results by. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)

    try:
        # Retrieves a paged list of metering issues based on specified filter criteria.
        api_response = api_instance.get_meteringissues(zf_tuuid, zf_ouuid, meter_ids=meter_ids, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, statuses=statuses, property_group_ids=property_group_ids, meter_model_ids=meter_model_ids, errors=errors, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, limit=limit, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of MeteringIssuesApi->get_meteringissues:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeteringIssuesApi->get_meteringissues: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **meter_ids** | [**List[str]**](str.md)|  | [optional] 
 **noticed_start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **noticed_end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **statuses** | [**List[str]**](str.md)|  | [optional] 
 **property_group_ids** | [**List[str]**](str.md)|  | [optional] 
 **meter_model_ids** | [**List[str]**](str.md)|  | [optional] 
 **errors** | [**List[MeteringIssueError]**](MeteringIssueError.md)|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **limit** | **int**| Format - int32. Maximum number of items to return. | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **order_by** | **str**| Property name to order results by. | [optional] 
 **continuation_token** | **str**| Token for pagination. | [optional] 

### Return type

[**MeteringIssueDTOPagedResponseModelDTOApiResponseDTO**](MeteringIssueDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_meteringissues_getallbymeter**
> MeteringIssueDTOPagedResponseModelDTOApiResponseDTO get_meteringissues_getallbymeter(zf_tuuid, zf_ouuid, servicelocation_ids=servicelocation_ids, property_group_ids=property_group_ids, meter_type_name=meter_type_name, meter_type_id=meter_type_id, received_metering_data_start=received_metering_data_start, received_metering_data_end=received_metering_data_end, next_expected_reading_date_start=next_expected_reading_date_start, next_expected_reading_date_end=next_expected_reading_date_end, parent_serial_number=parent_serial_number, filter_by_reading_frequency=filter_by_reading_frequency, reading_frequency_name=reading_frequency_name, reading_frequency_id=reading_frequency_id, customer_id=customer_id, meter_type_group=meter_type_group, meter_serial_number=meter_serial_number, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id)

Retrieves a paged list of metering issues for a specific meter.

Retrieves a paged list of metering issues for a specific meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.metering_issue_dto_paged_response_model_dto_api_response_dto import MeteringIssueDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = metering_client.MeteringIssuesApi(api_client)
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

    try:
        # Retrieves a paged list of metering issues for a specific meter.
        api_response = api_instance.get_meteringissues_getallbymeter(zf_tuuid, zf_ouuid, servicelocation_ids=servicelocation_ids, property_group_ids=property_group_ids, meter_type_name=meter_type_name, meter_type_id=meter_type_id, received_metering_data_start=received_metering_data_start, received_metering_data_end=received_metering_data_end, next_expected_reading_date_start=next_expected_reading_date_start, next_expected_reading_date_end=next_expected_reading_date_end, parent_serial_number=parent_serial_number, filter_by_reading_frequency=filter_by_reading_frequency, reading_frequency_name=reading_frequency_name, reading_frequency_id=reading_frequency_id, customer_id=customer_id, meter_type_group=meter_type_group, meter_serial_number=meter_serial_number, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id)
        print("The response of MeteringIssuesApi->get_meteringissues_getallbymeter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeteringIssuesApi->get_meteringissues_getallbymeter: %s\n" % e)
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

### Return type

[**MeteringIssueDTOPagedResponseModelDTOApiResponseDTO**](MeteringIssueDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_meteringissues_grouped**
> GroupedMeteringIssuesDTOPagedResponseModelDTOApiResponseDTO get_meteringissues_grouped(zf_tuuid, zf_ouuid, meter_ids=meter_ids, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, statuses=statuses, property_group_ids=property_group_ids, meter_model_ids=meter_model_ids, errors=errors, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, limit=limit, group_by=group_by, name=name, id=id, continuation_token=continuation_token)

Retrieves a paged list of metering issues grouped by a specified property.

Retrieves a paged list of metering issues grouped by a specified property.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.grouped_metering_issues_dto_paged_response_model_dto_api_response_dto import GroupedMeteringIssuesDTOPagedResponseModelDTOApiResponseDTO
from metering_client.models.metering_issue_error import MeteringIssueError
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
    api_instance = metering_client.MeteringIssuesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    meter_ids = ['meter_ids_example'] # List[str] |  (optional)
    noticed_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    noticed_end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    statuses = ['statuses_example'] # List[str] |  (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] |  (optional)
    meter_model_ids = ['meter_model_ids_example'] # List[str] |  (optional)
    errors = [metering_client.MeteringIssueError()] # List[MeteringIssueError] |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    limit = 56 # int | Format - int32. Maximum number of items to return. (optional)
    group_by = 'group_by_example' # str | Property name to group results by. (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)

    try:
        # Retrieves a paged list of metering issues grouped by a specified property.
        api_response = api_instance.get_meteringissues_grouped(zf_tuuid, zf_ouuid, meter_ids=meter_ids, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, statuses=statuses, property_group_ids=property_group_ids, meter_model_ids=meter_model_ids, errors=errors, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, limit=limit, group_by=group_by, name=name, id=id, continuation_token=continuation_token)
        print("The response of MeteringIssuesApi->get_meteringissues_grouped:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeteringIssuesApi->get_meteringissues_grouped: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **meter_ids** | [**List[str]**](str.md)|  | [optional] 
 **noticed_start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **noticed_end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **statuses** | [**List[str]**](str.md)|  | [optional] 
 **property_group_ids** | [**List[str]**](str.md)|  | [optional] 
 **meter_model_ids** | [**List[str]**](str.md)|  | [optional] 
 **errors** | [**List[MeteringIssueError]**](MeteringIssueError.md)|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **limit** | **int**| Format - int32. Maximum number of items to return. | [optional] 
 **group_by** | **str**| Property name to group results by. | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **continuation_token** | **str**| Token for pagination. | [optional] 

### Return type

[**GroupedMeteringIssuesDTOPagedResponseModelDTOApiResponseDTO**](GroupedMeteringIssuesDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_meteringissues_meters**
> MeterReferencePagedResponseModelDTOApiResponseDTO get_meteringissues_meters(zf_tuuid, zf_ouuid, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, property_group_ids=property_group_ids, name=name, id=id, flex_search=flex_search, continuation_token=continuation_token)

Retrieves a paged list of meters that have metering issues.

Retrieves a paged list of meters that have metering issues.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.meter_reference_paged_response_model_dto_api_response_dto import MeterReferencePagedResponseModelDTOApiResponseDTO
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
    api_instance = metering_client.MeteringIssuesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    noticed_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). Start date and time when issues were noticed. (optional)
    noticed_end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). End date and time when issues were noticed. (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] | Array of property group IDs to filter by. (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    flex_search = 'flex_search_example' # str | Flexible search term. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)

    try:
        # Retrieves a paged list of meters that have metering issues.
        api_response = api_instance.get_meteringissues_meters(zf_tuuid, zf_ouuid, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, property_group_ids=property_group_ids, name=name, id=id, flex_search=flex_search, continuation_token=continuation_token)
        print("The response of MeteringIssuesApi->get_meteringissues_meters:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeteringIssuesApi->get_meteringissues_meters: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **noticed_start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). Start date and time when issues were noticed. | [optional] 
 **noticed_end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). End date and time when issues were noticed. | [optional] 
 **property_group_ids** | [**List[str]**](str.md)| Array of property group IDs to filter by. | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **flex_search** | **str**| Flexible search term. | [optional] 
 **continuation_token** | **str**| Token for pagination. | [optional] 

### Return type

[**MeterReferencePagedResponseModelDTOApiResponseDTO**](MeterReferencePagedResponseModelDTOApiResponseDTO.md)

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

# **get_meteringissues_overviewcount**
> MeteringIssueOverviewCountDTOApiResponseDTO get_meteringissues_overviewcount(zf_tuuid, zf_ouuid, meter_ids=meter_ids, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, statuses=statuses, property_group_ids=property_group_ids, meter_model_ids=meter_model_ids, errors=errors, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Retrieves count statistics for metering issues based on specified filter criteria.

Retrieves count statistics for metering issues based on specified filter criteria.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.metering_issue_error import MeteringIssueError
from metering_client.models.metering_issue_overview_count_dto_api_response_dto import MeteringIssueOverviewCountDTOApiResponseDTO
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
    api_instance = metering_client.MeteringIssuesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    meter_ids = ['meter_ids_example'] # List[str] |  (optional)
    noticed_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    noticed_end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    statuses = ['statuses_example'] # List[str] |  (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] |  (optional)
    meter_model_ids = ['meter_model_ids_example'] # List[str] |  (optional)
    errors = [metering_client.MeteringIssueError()] # List[MeteringIssueError] |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Retrieves count statistics for metering issues based on specified filter criteria.
        api_response = api_instance.get_meteringissues_overviewcount(zf_tuuid, zf_ouuid, meter_ids=meter_ids, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, statuses=statuses, property_group_ids=property_group_ids, meter_model_ids=meter_model_ids, errors=errors, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of MeteringIssuesApi->get_meteringissues_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeteringIssuesApi->get_meteringissues_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **meter_ids** | [**List[str]**](str.md)|  | [optional] 
 **noticed_start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **noticed_end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **statuses** | [**List[str]**](str.md)|  | [optional] 
 **property_group_ids** | [**List[str]**](str.md)|  | [optional] 
 **meter_model_ids** | [**List[str]**](str.md)|  | [optional] 
 **errors** | [**List[MeteringIssueError]**](MeteringIssueError.md)|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**MeteringIssueOverviewCountDTOApiResponseDTO**](MeteringIssueOverviewCountDTOApiResponseDTO.md)

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

# **get_meteringissues_propertygroups**
> PropertyGroupReferencePagedResponseModelDTOApiResponseDTO get_meteringissues_propertygroups(zf_tuuid, zf_ouuid, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, meter_ids=meter_ids, name=name, id=id, flex_search=flex_search, continuation_token=continuation_token)

Retrieves a paged list of property groups that have metering issues.

Retrieves a paged list of property groups that have metering issues.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.property_group_reference_paged_response_model_dto_api_response_dto import PropertyGroupReferencePagedResponseModelDTOApiResponseDTO
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
    api_instance = metering_client.MeteringIssuesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    noticed_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). Start date and time when issues were noticed. (optional)
    noticed_end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). End date and time when issues were noticed. (optional)
    meter_ids = ['meter_ids_example'] # List[str] | Array of meter IDs to filter by. (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    flex_search = 'flex_search_example' # str | Flexible search term. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)

    try:
        # Retrieves a paged list of property groups that have metering issues.
        api_response = api_instance.get_meteringissues_propertygroups(zf_tuuid, zf_ouuid, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, meter_ids=meter_ids, name=name, id=id, flex_search=flex_search, continuation_token=continuation_token)
        print("The response of MeteringIssuesApi->get_meteringissues_propertygroups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeteringIssuesApi->get_meteringissues_propertygroups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **noticed_start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). Start date and time when issues were noticed. | [optional] 
 **noticed_end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). End date and time when issues were noticed. | [optional] 
 **meter_ids** | [**List[str]**](str.md)| Array of meter IDs to filter by. | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **flex_search** | **str**| Flexible search term. | [optional] 
 **continuation_token** | **str**| Token for pagination. | [optional] 

### Return type

[**PropertyGroupReferencePagedResponseModelDTOApiResponseDTO**](PropertyGroupReferencePagedResponseModelDTOApiResponseDTO.md)

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

# **post_meteringissues_bulk_ignore**
> BooleanApiResponseDTO post_meteringissues_bulk_ignore(zf_tuuid, zf_ouuid, bulk_ignore_metering_issue_request=bulk_ignore_metering_issue_request)

Ignores multiple metering issues in bulk.

Ignores multiple metering issues in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from metering_client.models.bulk_ignore_metering_issue_request import BulkIgnoreMeteringIssueRequest
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
    api_instance = metering_client.MeteringIssuesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_ignore_metering_issue_request = {"message":"string","onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"meterIds":["string"],"noticedStartDateTime":"string","noticedEndDateTime":"string","statuses":["string"],"propertyGroupIds":["string"],"meterModelIds":["string"],"errors":["consumptionnegative"]},"quickFilter":"string"} # BulkIgnoreMeteringIssueRequest | Bulk ignore details including filter criteria. (optional)

    try:
        # Ignores multiple metering issues in bulk.
        api_response = api_instance.post_meteringissues_bulk_ignore(zf_tuuid, zf_ouuid, bulk_ignore_metering_issue_request=bulk_ignore_metering_issue_request)
        print("The response of MeteringIssuesApi->post_meteringissues_bulk_ignore:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeteringIssuesApi->post_meteringissues_bulk_ignore: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_ignore_metering_issue_request** | [**BulkIgnoreMeteringIssueRequest**](BulkIgnoreMeteringIssueRequest.md)| Bulk ignore details including filter criteria. | [optional] 

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

# **post_meteringissues_bulk_resolve**
> BooleanApiResponseDTO post_meteringissues_bulk_resolve(zf_tuuid, zf_ouuid, bulk_resolve_metering_issue_request=bulk_resolve_metering_issue_request)

Resolves multiple metering issues in bulk.

Resolves multiple metering issues in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from metering_client.models.bulk_resolve_metering_issue_request import BulkResolveMeteringIssueRequest
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
    api_instance = metering_client.MeteringIssuesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_resolve_metering_issue_request = {"message":"string","resolutionValue":{},"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"meterIds":["string"],"noticedStartDateTime":"string","noticedEndDateTime":"string","statuses":["string"],"propertyGroupIds":["string"],"meterModelIds":["string"],"errors":["consumptionnegative"]},"quickFilter":"string"} # BulkResolveMeteringIssueRequest | Bulk resolution details including filter criteria. (optional)

    try:
        # Resolves multiple metering issues in bulk.
        api_response = api_instance.post_meteringissues_bulk_resolve(zf_tuuid, zf_ouuid, bulk_resolve_metering_issue_request=bulk_resolve_metering_issue_request)
        print("The response of MeteringIssuesApi->post_meteringissues_bulk_resolve:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeteringIssuesApi->post_meteringissues_bulk_resolve: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_resolve_metering_issue_request** | [**BulkResolveMeteringIssueRequest**](BulkResolveMeteringIssueRequest.md)| Bulk resolution details including filter criteria. | [optional] 

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

# **post_meteringissues_issueid_ignore**
> MeteringIssueDTOApiResponseDTO post_meteringissues_issueid_ignore(issue_id, zf_tuuid, zf_ouuid, ignore_metering_issue_request=ignore_metering_issue_request)

Ignores a specific metering issue.

Ignores a specific metering issue.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.ignore_metering_issue_request import IgnoreMeteringIssueRequest
from metering_client.models.metering_issue_dto_api_response_dto import MeteringIssueDTOApiResponseDTO
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
    api_instance = metering_client.MeteringIssuesApi(api_client)
    issue_id = 'issue_id_example' # str | ID of the metering issue to ignore.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    ignore_metering_issue_request = {"message":"string"} # IgnoreMeteringIssueRequest | Ignore details. (optional)

    try:
        # Ignores a specific metering issue.
        api_response = api_instance.post_meteringissues_issueid_ignore(issue_id, zf_tuuid, zf_ouuid, ignore_metering_issue_request=ignore_metering_issue_request)
        print("The response of MeteringIssuesApi->post_meteringissues_issueid_ignore:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeteringIssuesApi->post_meteringissues_issueid_ignore: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issue_id** | **str**| ID of the metering issue to ignore. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **ignore_metering_issue_request** | [**IgnoreMeteringIssueRequest**](IgnoreMeteringIssueRequest.md)| Ignore details. | [optional] 

### Return type

[**MeteringIssueDTOApiResponseDTO**](MeteringIssueDTOApiResponseDTO.md)

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

# **post_meteringissues_issueid_resolve**
> MeteringIssueDTOApiResponseDTO post_meteringissues_issueid_resolve(issue_id, zf_tuuid, zf_ouuid, resolve_metering_issue_request=resolve_metering_issue_request)

Resolves a specific metering issue.

Resolves a specific metering issue.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.metering_issue_dto_api_response_dto import MeteringIssueDTOApiResponseDTO
from metering_client.models.resolve_metering_issue_request import ResolveMeteringIssueRequest
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
    api_instance = metering_client.MeteringIssuesApi(api_client)
    issue_id = 'issue_id_example' # str | ID of the metering issue to resolve.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    resolve_metering_issue_request = {"message":"string","resolutionValue":{}} # ResolveMeteringIssueRequest | Resolution details. (optional)

    try:
        # Resolves a specific metering issue.
        api_response = api_instance.post_meteringissues_issueid_resolve(issue_id, zf_tuuid, zf_ouuid, resolve_metering_issue_request=resolve_metering_issue_request)
        print("The response of MeteringIssuesApi->post_meteringissues_issueid_resolve:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MeteringIssuesApi->post_meteringissues_issueid_resolve: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issue_id** | **str**| ID of the metering issue to resolve. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **resolve_metering_issue_request** | [**ResolveMeteringIssueRequest**](ResolveMeteringIssueRequest.md)| Resolution details. | [optional] 

### Return type

[**MeteringIssueDTOApiResponseDTO**](MeteringIssueDTOApiResponseDTO.md)

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

