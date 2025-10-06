# masterdata_client.MoveRequestsApi

All URIs are relative to *https://api.zerofriction.co/api/md*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_moverequests**](MoveRequestsApi.md#delete_moverequests) | **DELETE** /MoveRequests | Delete multiple move requests in bulk.
[**delete_moverequests_moverequestuuid**](MoveRequestsApi.md#delete_moverequests_moverequestuuid) | **DELETE** /MoveRequests/{moverequestuuid} | Delete move request.
[**get_moverequests**](MoveRequestsApi.md#get_moverequests) | **GET** /MoveRequests | Retrieve move requests based on the provided query parameters.
[**get_moverequests_externalid_externalid**](MoveRequestsApi.md#get_moverequests_externalid_externalid) | **GET** /MoveRequests/externalid/{externalId} | Retrieve a move request by its external ID.
[**get_moverequests_moverequestuuid**](MoveRequestsApi.md#get_moverequests_moverequestuuid) | **GET** /MoveRequests/{moverequestuuid} | Retrieve a move request by its ID.
[**get_moverequests_overviewcount**](MoveRequestsApi.md#get_moverequests_overviewcount) | **GET** /MoveRequests/overviewcount | Retrieve the overview count of move requests based on the provided query parameters.
[**post_moverequests**](MoveRequestsApi.md#post_moverequests) | **POST** /MoveRequests | Create new move request.
[**post_moverequests_bulk_reject**](MoveRequestsApi.md#post_moverequests_bulk_reject) | **POST** /MoveRequests/bulk/reject | Reject multiple uncompleted move requests in bulk.
[**post_moverequests_bulk_setnew**](MoveRequestsApi.md#post_moverequests_bulk_setnew) | **POST** /MoveRequests/bulk/setnew | Mark multiple uncompleted move requests as new in bulk.
[**post_moverequests_bulk_setpending**](MoveRequestsApi.md#post_moverequests_bulk_setpending) | **POST** /MoveRequests/bulk/setpending | Mark multiple uncompleted move requests as pending in bulk.
[**post_moverequests_moverequestuuid_process**](MoveRequestsApi.md#post_moverequests_moverequestuuid_process) | **POST** /MoveRequests/{moverequestuuid}/process | Process uncompleted move request.
[**post_moverequests_moverequestuuid_reject**](MoveRequestsApi.md#post_moverequests_moverequestuuid_reject) | **POST** /MoveRequests/{moverequestuuid}/reject | Reject uncompleted move request.
[**post_moverequests_moverequestuuid_setnew**](MoveRequestsApi.md#post_moverequests_moverequestuuid_setnew) | **POST** /MoveRequests/{moverequestuuid}/setnew | Mark uncompleted move request as new.
[**post_moverequests_moverequestuuid_setpending**](MoveRequestsApi.md#post_moverequests_moverequestuuid_setpending) | **POST** /MoveRequests/{moverequestuuid}/setpending | Mark uncompleted move request as pending.
[**post_moverequests_moverequestuuid_updatecustomerdetails**](MoveRequestsApi.md#post_moverequests_moverequestuuid_updatecustomerdetails) | **POST** /MoveRequests/{moverequestuuid}/updatecustomerdetails | Update customer details of a move request.
[**post_moverequests_moverequestuuid_updatedetails**](MoveRequestsApi.md#post_moverequests_moverequestuuid_updatedetails) | **POST** /MoveRequests/{moverequestuuid}/updatedetails | Update details of a move request.
[**post_moverequests_moverequestuuid_updatemeasurementdetails**](MoveRequestsApi.md#post_moverequests_moverequestuuid_updatemeasurementdetails) | **POST** /MoveRequests/{moverequestuuid}/updatemeasurementdetails | Update measurement details of a move request.
[**post_moverequests_moverequestuuid_updatemutationdatetime**](MoveRequestsApi.md#post_moverequests_moverequestuuid_updatemutationdatetime) | **POST** /MoveRequests/{moverequestuuid}/updateMutationDateTime | Update mutation date of a move request.
[**post_moverequests_moverequestuuid_updateservicelocationdetails**](MoveRequestsApi.md#post_moverequests_moverequestuuid_updateservicelocationdetails) | **POST** /MoveRequests/{moverequestuuid}/updateservicelocationdetails | Update location details of a move request.


# **delete_moverequests**
> BooleanApiResponseDTO delete_moverequests(zf_tuuid, zf_ouuid, bulk_delete_move_request_request=bulk_delete_move_request_request)

Delete multiple move requests in bulk.

This action is irreversible.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from masterdata_client.models.bulk_delete_move_request_request import BulkDeleteMoveRequestRequest
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_delete_move_request_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"locationId":"string","moveRequestTypeId":"string"},"quickFilter":"string"} # BulkDeleteMoveRequestRequest | The request containing bulk deletion details and query parameters to filter the move requests to be deleted. (optional)

    try:
        # Delete multiple move requests in bulk.
        api_response = api_instance.delete_moverequests(zf_tuuid, zf_ouuid, bulk_delete_move_request_request=bulk_delete_move_request_request)
        print("The response of MoveRequestsApi->delete_moverequests:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->delete_moverequests: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_delete_move_request_request** | [**BulkDeleteMoveRequestRequest**](BulkDeleteMoveRequestRequest.md)| The request containing bulk deletion details and query parameters to filter the move requests to be deleted. | [optional] 

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
**404** | Not Found |  -  |
**204** | No Content |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_moverequests_moverequestuuid**
> BooleanApiResponseDTO delete_moverequests_moverequestuuid(moverequestuuid, zf_tuuid, zf_ouuid)

Delete move request.

This action is irreversible.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.boolean_api_response_dto import BooleanApiResponseDTO
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Delete move request.
        api_response = api_instance.delete_moverequests_moverequestuuid(moverequestuuid, zf_tuuid, zf_ouuid)
        print("The response of MoveRequestsApi->delete_moverequests_moverequestuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->delete_moverequests_moverequestuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
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

# **get_moverequests**
> MoveRequestDTOPagedResponseModelDTOApiResponseDTO get_moverequests(zf_tuuid, zf_ouuid, location_id=location_id, move_request_type_id=move_request_type_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

Retrieve move requests based on the provided query parameters.

Retrieve move requests based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.move_request_dto_paged_response_model_dto_api_response_dto import MoveRequestDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    location_id = 'location_id_example' # str |  (optional)
    move_request_type_id = 'move_request_type_id_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    order_by = 'order_by_example' # str | Allows to order the move requests. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieve move requests based on the provided query parameters.
        api_response = api_instance.get_moverequests(zf_tuuid, zf_ouuid, location_id=location_id, move_request_type_id=move_request_type_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of MoveRequestsApi->get_moverequests:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->get_moverequests: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **location_id** | **str**|  | [optional] 
 **move_request_type_id** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **order_by** | **str**| Allows to order the move requests. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**MoveRequestDTOPagedResponseModelDTOApiResponseDTO**](MoveRequestDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_moverequests_externalid_externalid**
> MoveRequestDTOApiResponseDTO get_moverequests_externalid_externalid(external_id, zf_tuuid, zf_ouuid)

Retrieve a move request by its external ID.

Retrieve a move request by its external ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.move_request_dto_api_response_dto import MoveRequestDTOApiResponseDTO
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    external_id = 'external_id_example' # str | The external ID of the move request.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieve a move request by its external ID.
        api_response = api_instance.get_moverequests_externalid_externalid(external_id, zf_tuuid, zf_ouuid)
        print("The response of MoveRequestsApi->get_moverequests_externalid_externalid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->get_moverequests_externalid_externalid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **external_id** | **str**| The external ID of the move request. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**MoveRequestDTOApiResponseDTO**](MoveRequestDTOApiResponseDTO.md)

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

# **get_moverequests_moverequestuuid**
> MoveRequestDTOApiResponseDTO get_moverequests_moverequestuuid(moverequestuuid, zf_tuuid, zf_ouuid)

Retrieve a move request by its ID.

Retrieve a move request by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.move_request_dto_api_response_dto import MoveRequestDTOApiResponseDTO
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieve a move request by its ID.
        api_response = api_instance.get_moverequests_moverequestuuid(moverequestuuid, zf_tuuid, zf_ouuid)
        print("The response of MoveRequestsApi->get_moverequests_moverequestuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->get_moverequests_moverequestuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**MoveRequestDTOApiResponseDTO**](MoveRequestDTOApiResponseDTO.md)

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

# **get_moverequests_overviewcount**
> MoveRequestOverviewCountDTOApiResponseDTO get_moverequests_overviewcount(zf_tuuid, zf_ouuid, location_id=location_id, move_request_type_id=move_request_type_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Retrieve the overview count of move requests based on the provided query parameters.

Retrieve the overview count of move requests based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.move_request_overview_count_dto_api_response_dto import MoveRequestOverviewCountDTOApiResponseDTO
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    location_id = 'location_id_example' # str |  (optional)
    move_request_type_id = 'move_request_type_id_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Retrieve the overview count of move requests based on the provided query parameters.
        api_response = api_instance.get_moverequests_overviewcount(zf_tuuid, zf_ouuid, location_id=location_id, move_request_type_id=move_request_type_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of MoveRequestsApi->get_moverequests_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->get_moverequests_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **location_id** | **str**|  | [optional] 
 **move_request_type_id** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**MoveRequestOverviewCountDTOApiResponseDTO**](MoveRequestOverviewCountDTOApiResponseDTO.md)

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

# **post_moverequests**
> MoveRequestDTOApiResponseDTO post_moverequests(zf_tuuid, zf_ouuid, create_move_request_request=create_move_request_request)

Create new move request.

Create new move request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.create_move_request_request import CreateMoveRequestRequest
from masterdata_client.models.move_request_dto_api_response_dto import MoveRequestDTOApiResponseDTO
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_move_request_request = {"moveRequestType":{},"mutationDateTime":"string","customerDetails":{"internalId":"string","accountNumber":"string","salutation":"string","initials":"string","firstName":"string","lastName":"string","birthDate":"string","ssin":"string","ssinCountry":{},"customerType":{},"companyName":"string","organizationNumber":"string","vatNumber":"string","defaultPaymentMethod":{},"invoiceAddress":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":{},"localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"bankAccount":"string","emailAddress":"string","telephoneNumber":"string","mobileTelephoneNumber":"string","website":"string","culture":{}},"externalContractId":"string","externalId":"string","serviceLocationDetails":{"address":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":{},"localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"services":[{"externalIdentifier":"string","utilityType":{}}],"internalId":"string"},"measurementDetails":[{"internalMeterId":"string","externalChannelIdentifier":"string","meterSerialNumber":"string","utilityType":{},"unitOfMeasure":{},"timeOfUse":"string","value":0}],"attachmentSignatures":[{"origin":{},"culture":{},"productAttachmentId":"string","entityAttachmentGroupId":"string","signDate":"string","viewedDate":"string"}],"customMessage":"string","productId":"string"} # CreateMoveRequestRequest | The request containing move request details. (optional)

    try:
        # Create new move request.
        api_response = api_instance.post_moverequests(zf_tuuid, zf_ouuid, create_move_request_request=create_move_request_request)
        print("The response of MoveRequestsApi->post_moverequests:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->post_moverequests: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_move_request_request** | [**CreateMoveRequestRequest**](CreateMoveRequestRequest.md)| The request containing move request details. | [optional] 

### Return type

[**MoveRequestDTOApiResponseDTO**](MoveRequestDTOApiResponseDTO.md)

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

# **post_moverequests_bulk_reject**
> ApiResponseDTO post_moverequests_bulk_reject(zf_tuuid, zf_ouuid, bulk_reject_move_request=bulk_reject_move_request)

Reject multiple uncompleted move requests in bulk.

This action is irreversible.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_reject_move_request import BulkRejectMoveRequest
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_reject_move_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"locationId":"string","moveRequestTypeId":"string"},"quickFilter":"string"} # BulkRejectMoveRequest | The request containing bulk rejection details and query parameters to filter the move requests to be rejected. (optional)

    try:
        # Reject multiple uncompleted move requests in bulk.
        api_response = api_instance.post_moverequests_bulk_reject(zf_tuuid, zf_ouuid, bulk_reject_move_request=bulk_reject_move_request)
        print("The response of MoveRequestsApi->post_moverequests_bulk_reject:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->post_moverequests_bulk_reject: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_reject_move_request** | [**BulkRejectMoveRequest**](BulkRejectMoveRequest.md)| The request containing bulk rejection details and query parameters to filter the move requests to be rejected. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

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

# **post_moverequests_bulk_setnew**
> ApiResponseDTO post_moverequests_bulk_setnew(zf_tuuid, zf_ouuid, bulk_set_move_request_to_new=bulk_set_move_request_to_new)

Mark multiple uncompleted move requests as new in bulk.

Mark multiple uncompleted move requests as new in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_set_move_request_to_new import BulkSetMoveRequestToNew
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_set_move_request_to_new = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"locationId":"string","moveRequestTypeId":"string"},"quickFilter":"string"} # BulkSetMoveRequestToNew | The request containing query parameters to filter the move requests to be marked as new. (optional)

    try:
        # Mark multiple uncompleted move requests as new in bulk.
        api_response = api_instance.post_moverequests_bulk_setnew(zf_tuuid, zf_ouuid, bulk_set_move_request_to_new=bulk_set_move_request_to_new)
        print("The response of MoveRequestsApi->post_moverequests_bulk_setnew:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->post_moverequests_bulk_setnew: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_set_move_request_to_new** | [**BulkSetMoveRequestToNew**](BulkSetMoveRequestToNew.md)| The request containing query parameters to filter the move requests to be marked as new. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

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

# **post_moverequests_bulk_setpending**
> ApiResponseDTO post_moverequests_bulk_setpending(zf_tuuid, zf_ouuid, bulk_set_move_request_to_pending_request=bulk_set_move_request_to_pending_request)

Mark multiple uncompleted move requests as pending in bulk.

Mark multiple uncompleted move requests as pending in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_set_move_request_to_pending_request import BulkSetMoveRequestToPendingRequest
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_set_move_request_to_pending_request = {"newStatus":{},"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"locationId":"string","moveRequestTypeId":"string"},"quickFilter":"string"} # BulkSetMoveRequestToPendingRequest | The request containing bulk pending details and query parameters to filter the move requests to be marked as pending. (optional)

    try:
        # Mark multiple uncompleted move requests as pending in bulk.
        api_response = api_instance.post_moverequests_bulk_setpending(zf_tuuid, zf_ouuid, bulk_set_move_request_to_pending_request=bulk_set_move_request_to_pending_request)
        print("The response of MoveRequestsApi->post_moverequests_bulk_setpending:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->post_moverequests_bulk_setpending: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_set_move_request_to_pending_request** | [**BulkSetMoveRequestToPendingRequest**](BulkSetMoveRequestToPendingRequest.md)| The request containing bulk pending details and query parameters to filter the move requests to be marked as pending. | [optional] 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

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

# **post_moverequests_moverequestuuid_process**
> MoveRequestDTOApiResponseDTO post_moverequests_moverequestuuid_process(moverequestuuid, zf_tuuid, zf_ouuid)

Process uncompleted move request.

This action can only be executed on move requests, which are not yet rejected or processed.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.move_request_dto_api_response_dto import MoveRequestDTOApiResponseDTO
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Process uncompleted move request.
        api_response = api_instance.post_moverequests_moverequestuuid_process(moverequestuuid, zf_tuuid, zf_ouuid)
        print("The response of MoveRequestsApi->post_moverequests_moverequestuuid_process:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->post_moverequests_moverequestuuid_process: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**MoveRequestDTOApiResponseDTO**](MoveRequestDTOApiResponseDTO.md)

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

# **post_moverequests_moverequestuuid_reject**
> MoveRequestDTOApiResponseDTO post_moverequests_moverequestuuid_reject(moverequestuuid, zf_tuuid, zf_ouuid)

Reject uncompleted move request.

This action is irreversible.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.move_request_dto_api_response_dto import MoveRequestDTOApiResponseDTO
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Reject uncompleted move request.
        api_response = api_instance.post_moverequests_moverequestuuid_reject(moverequestuuid, zf_tuuid, zf_ouuid)
        print("The response of MoveRequestsApi->post_moverequests_moverequestuuid_reject:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->post_moverequests_moverequestuuid_reject: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**MoveRequestDTOApiResponseDTO**](MoveRequestDTOApiResponseDTO.md)

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

# **post_moverequests_moverequestuuid_setnew**
> MoveRequestDTOApiResponseDTO post_moverequests_moverequestuuid_setnew(moverequestuuid, zf_tuuid, zf_ouuid)

Mark uncompleted move request as new.

This action can only be executed on move requests, which are not yet rejected or processed.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.move_request_dto_api_response_dto import MoveRequestDTOApiResponseDTO
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Mark uncompleted move request as new.
        api_response = api_instance.post_moverequests_moverequestuuid_setnew(moverequestuuid, zf_tuuid, zf_ouuid)
        print("The response of MoveRequestsApi->post_moverequests_moverequestuuid_setnew:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->post_moverequests_moverequestuuid_setnew: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**MoveRequestDTOApiResponseDTO**](MoveRequestDTOApiResponseDTO.md)

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

# **post_moverequests_moverequestuuid_setpending**
> MoveRequestDTOApiResponseDTO post_moverequests_moverequestuuid_setpending(moverequestuuid, zf_tuuid, zf_ouuid, set_move_request_to_pending_request=set_move_request_to_pending_request)

Mark uncompleted move request as pending.

This action can only be executed on move requests, which are not yet rejected or processed.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.move_request_dto_api_response_dto import MoveRequestDTOApiResponseDTO
from masterdata_client.models.set_move_request_to_pending_request import SetMoveRequestToPendingRequest
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    set_move_request_to_pending_request = {"newStatus":{}} # SetMoveRequestToPendingRequest | The request containing pending details. (optional)

    try:
        # Mark uncompleted move request as pending.
        api_response = api_instance.post_moverequests_moverequestuuid_setpending(moverequestuuid, zf_tuuid, zf_ouuid, set_move_request_to_pending_request=set_move_request_to_pending_request)
        print("The response of MoveRequestsApi->post_moverequests_moverequestuuid_setpending:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->post_moverequests_moverequestuuid_setpending: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **set_move_request_to_pending_request** | [**SetMoveRequestToPendingRequest**](SetMoveRequestToPendingRequest.md)| The request containing pending details. | [optional] 

### Return type

[**MoveRequestDTOApiResponseDTO**](MoveRequestDTOApiResponseDTO.md)

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

# **post_moverequests_moverequestuuid_updatecustomerdetails**
> MoveRequestDTOApiResponseDTO post_moverequests_moverequestuuid_updatecustomerdetails(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_customer_details_request=update_move_request_customer_details_request)

Update customer details of a move request.

Update customer details of a move request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.move_request_dto_api_response_dto import MoveRequestDTOApiResponseDTO
from masterdata_client.models.update_move_request_customer_details_request import UpdateMoveRequestCustomerDetailsRequest
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_move_request_customer_details_request = {"accountNumber":"string","salutation":"string","initials":"string","firstName":"string","lastName":"string","birthDate":"string","ssin":"string","ssinCountry":{},"customerType":{},"companyName":"string","organizationNumber":"string","vatNumber":"string","defaultPaymentMethod":{},"invoiceAddress":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":{},"localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"bankAccount":"string","emailAddress":"string","telephoneNumber":"string","mobileTelephoneNumber":"string","website":"string","culture":{},"internalId":"string","customerGroupId":"string"} # UpdateMoveRequestCustomerDetailsRequest | The request containing customer details. (optional)

    try:
        # Update customer details of a move request.
        api_response = api_instance.post_moverequests_moverequestuuid_updatecustomerdetails(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_customer_details_request=update_move_request_customer_details_request)
        print("The response of MoveRequestsApi->post_moverequests_moverequestuuid_updatecustomerdetails:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->post_moverequests_moverequestuuid_updatecustomerdetails: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_move_request_customer_details_request** | [**UpdateMoveRequestCustomerDetailsRequest**](UpdateMoveRequestCustomerDetailsRequest.md)| The request containing customer details. | [optional] 

### Return type

[**MoveRequestDTOApiResponseDTO**](MoveRequestDTOApiResponseDTO.md)

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

# **post_moverequests_moverequestuuid_updatedetails**
> MoveRequestDTOApiResponseDTO post_moverequests_moverequestuuid_updatedetails(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_request=update_move_request_request)

Update details of a move request.

Update details of a move request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.move_request_dto_api_response_dto import MoveRequestDTOApiResponseDTO
from masterdata_client.models.update_move_request_request import UpdateMoveRequestRequest
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_move_request_request = {"productId":"string","usePropertyGroupProduct":true,"contractNumber":"string","estimations":[{"utilityType":{},"unitOfMeasure":{},"meteringType":{},"value":0,"consumerGroupId":"string"}],"billingProperties":{"billingMethod":{}}} # UpdateMoveRequestRequest | The request containing move request details. (optional)

    try:
        # Update details of a move request.
        api_response = api_instance.post_moverequests_moverequestuuid_updatedetails(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_request=update_move_request_request)
        print("The response of MoveRequestsApi->post_moverequests_moverequestuuid_updatedetails:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->post_moverequests_moverequestuuid_updatedetails: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_move_request_request** | [**UpdateMoveRequestRequest**](UpdateMoveRequestRequest.md)| The request containing move request details. | [optional] 

### Return type

[**MoveRequestDTOApiResponseDTO**](MoveRequestDTOApiResponseDTO.md)

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

# **post_moverequests_moverequestuuid_updatemeasurementdetails**
> MoveRequestDTOApiResponseDTO post_moverequests_moverequestuuid_updatemeasurementdetails(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_measurement_details_request=update_move_request_measurement_details_request)

Update measurement details of a move request.

Update measurement details of a move request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.move_request_dto_api_response_dto import MoveRequestDTOApiResponseDTO
from masterdata_client.models.update_move_request_measurement_details_request import UpdateMoveRequestMeasurementDetailsRequest
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_move_request_measurement_details_request = {"measurements":[{"internalMeterId":"string","externalChannelIdentifier":"string","meterSerialNumber":"string","utilityType":{},"unitOfMeasure":{},"timeOfUse":"string","value":0}]} # UpdateMoveRequestMeasurementDetailsRequest | The request containing measurement details. (optional)

    try:
        # Update measurement details of a move request.
        api_response = api_instance.post_moverequests_moverequestuuid_updatemeasurementdetails(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_measurement_details_request=update_move_request_measurement_details_request)
        print("The response of MoveRequestsApi->post_moverequests_moverequestuuid_updatemeasurementdetails:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->post_moverequests_moverequestuuid_updatemeasurementdetails: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_move_request_measurement_details_request** | [**UpdateMoveRequestMeasurementDetailsRequest**](UpdateMoveRequestMeasurementDetailsRequest.md)| The request containing measurement details. | [optional] 

### Return type

[**MoveRequestDTOApiResponseDTO**](MoveRequestDTOApiResponseDTO.md)

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

# **post_moverequests_moverequestuuid_updatemutationdatetime**
> MoveRequestDTOApiResponseDTO post_moverequests_moverequestuuid_updatemutationdatetime(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_mutation_date_time_request=update_move_request_mutation_date_time_request)

Update mutation date of a move request.

Mutation date is a sign date in case of move-in requests, or termination date in case of move-out request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.move_request_dto_api_response_dto import MoveRequestDTOApiResponseDTO
from masterdata_client.models.update_move_request_mutation_date_time_request import UpdateMoveRequestMutationDateTimeRequest
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_move_request_mutation_date_time_request = {"mutationDateTime":"string"} # UpdateMoveRequestMutationDateTimeRequest | The request containing new mutation date. (optional)

    try:
        # Update mutation date of a move request.
        api_response = api_instance.post_moverequests_moverequestuuid_updatemutationdatetime(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_mutation_date_time_request=update_move_request_mutation_date_time_request)
        print("The response of MoveRequestsApi->post_moverequests_moverequestuuid_updatemutationdatetime:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->post_moverequests_moverequestuuid_updatemutationdatetime: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_move_request_mutation_date_time_request** | [**UpdateMoveRequestMutationDateTimeRequest**](UpdateMoveRequestMutationDateTimeRequest.md)| The request containing new mutation date. | [optional] 

### Return type

[**MoveRequestDTOApiResponseDTO**](MoveRequestDTOApiResponseDTO.md)

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

# **post_moverequests_moverequestuuid_updateservicelocationdetails**
> MoveRequestDTOApiResponseDTO post_moverequests_moverequestuuid_updateservicelocationdetails(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_service_location_details_request=update_move_request_service_location_details_request)

Update location details of a move request.

Update location details of a move request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.move_request_dto_api_response_dto import MoveRequestDTOApiResponseDTO
from masterdata_client.models.update_move_request_service_location_details_request import UpdateMoveRequestServiceLocationDetailsRequest
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
    api_instance = masterdata_client.MoveRequestsApi(api_client)
    moverequestuuid = 'moverequestuuid_example' # str | The ID of the move request.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_move_request_service_location_details_request = {"address":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":{},"localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"services":[{"externalIdentifier":"string","utilityType":{}}],"internalId":"string"} # UpdateMoveRequestServiceLocationDetailsRequest | The request containing location details. (optional)

    try:
        # Update location details of a move request.
        api_response = api_instance.post_moverequests_moverequestuuid_updateservicelocationdetails(moverequestuuid, zf_tuuid, zf_ouuid, update_move_request_service_location_details_request=update_move_request_service_location_details_request)
        print("The response of MoveRequestsApi->post_moverequests_moverequestuuid_updateservicelocationdetails:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MoveRequestsApi->post_moverequests_moverequestuuid_updateservicelocationdetails: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moverequestuuid** | **str**| The ID of the move request. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_move_request_service_location_details_request** | [**UpdateMoveRequestServiceLocationDetailsRequest**](UpdateMoveRequestServiceLocationDetailsRequest.md)| The request containing location details. | [optional] 

### Return type

[**MoveRequestDTOApiResponseDTO**](MoveRequestDTOApiResponseDTO.md)

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

