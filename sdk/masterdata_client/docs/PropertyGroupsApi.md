# masterdata_client.PropertyGroupsApi

All URIs are relative to *https://api.zerofriction.co/api/md*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_propertygroups_bulk**](PropertyGroupsApi.md#delete_propertygroups_bulk) | **DELETE** /PropertyGroups/bulk | Delete multiple location groups in bulk.
[**delete_propertygroups_propertygroupuuid**](PropertyGroupsApi.md#delete_propertygroups_propertygroupuuid) | **DELETE** /PropertyGroups/{propertygroupuuid} | Delete a location group.
[**delete_propertygroups_propertygroupuuid_servicelocations**](PropertyGroupsApi.md#delete_propertygroups_propertygroupuuid_servicelocations) | **DELETE** /PropertyGroups/{propertygroupuuid}/servicelocations | Remove locations from a location group.
[**get_propertygroups**](PropertyGroupsApi.md#get_propertygroups) | **GET** /PropertyGroups | Retrieve location groups based on the provided query parameters.
[**get_propertygroups_overviewcount**](PropertyGroupsApi.md#get_propertygroups_overviewcount) | **GET** /PropertyGroups/overviewcount | Retrieve the overview count of location groups based on the provided query parameters.
[**get_propertygroups_propertygroupuuid**](PropertyGroupsApi.md#get_propertygroups_propertygroupuuid) | **GET** /PropertyGroups/{propertygroupuuid} | Retrieve a location group by its ID.
[**post_propertygroups**](PropertyGroupsApi.md#post_propertygroups) | **POST** /PropertyGroups | Create new location group.
[**post_propertygroups_entityid_customproperties**](PropertyGroupsApi.md#post_propertygroups_entityid_customproperties) | **POST** /PropertyGroups/{entityId}/customproperties | /PropertyGroups/{entityId}/customproperties - POST
[**post_propertygroups_propertygroupuuid**](PropertyGroupsApi.md#post_propertygroups_propertygroupuuid) | **POST** /PropertyGroups/{propertygroupuuid} | Update details of a location group.
[**post_propertygroups_propertygroupuuid_communicationconfiguration**](PropertyGroupsApi.md#post_propertygroups_propertygroupuuid_communicationconfiguration) | **POST** /PropertyGroups/{propertygroupuuid}/communicationconfiguration | Update communication configuration of a location group.
[**post_propertygroups_propertygroupuuid_managementrelations**](PropertyGroupsApi.md#post_propertygroups_propertygroupuuid_managementrelations) | **POST** /PropertyGroups/{propertygroupuuid}/managementrelations | Update management relations of a location group.
[**post_propertygroups_propertygroupuuid_servicelocations**](PropertyGroupsApi.md#post_propertygroups_propertygroupuuid_servicelocations) | **POST** /PropertyGroups/{propertygroupuuid}/servicelocations | Add locations to a location group.


# **delete_propertygroups_bulk**
> ApiResponseDTO delete_propertygroups_bulk(zf_tuuid, zf_ouuid, bulk_delete_property_group_request=bulk_delete_property_group_request)

Delete multiple location groups in bulk.

Delete multiple location groups in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_delete_property_group_request import BulkDeletePropertyGroupRequest
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
    api_instance = masterdata_client.PropertyGroupsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_delete_property_group_request = {"mutationDateTime":"string","onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"nameContains":"string"},"quickFilter":"string"} # BulkDeletePropertyGroupRequest | The request containing bulk deletion details and query parameters to filter the location groups to be deleted. (optional)

    try:
        # Delete multiple location groups in bulk.
        api_response = api_instance.delete_propertygroups_bulk(zf_tuuid, zf_ouuid, bulk_delete_property_group_request=bulk_delete_property_group_request)
        print("The response of PropertyGroupsApi->delete_propertygroups_bulk:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupsApi->delete_propertygroups_bulk: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_delete_property_group_request** | [**BulkDeletePropertyGroupRequest**](BulkDeletePropertyGroupRequest.md)| The request containing bulk deletion details and query parameters to filter the location groups to be deleted. | [optional] 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_propertygroups_propertygroupuuid**
> BooleanApiResponseDTO delete_propertygroups_propertygroupuuid(propertygroupuuid, zf_tuuid, zf_ouuid, delete_property_group_request=delete_property_group_request)

Delete a location group.

Delete a location group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from masterdata_client.models.delete_property_group_request import DeletePropertyGroupRequest
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
    api_instance = masterdata_client.PropertyGroupsApi(api_client)
    propertygroupuuid = 'propertygroupuuid_example' # str | The ID of the location group.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    delete_property_group_request = {"mutationDateTime":"string"} # DeletePropertyGroupRequest | The request containing delete details. (optional)

    try:
        # Delete a location group.
        api_response = api_instance.delete_propertygroups_propertygroupuuid(propertygroupuuid, zf_tuuid, zf_ouuid, delete_property_group_request=delete_property_group_request)
        print("The response of PropertyGroupsApi->delete_propertygroups_propertygroupuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupsApi->delete_propertygroups_propertygroupuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupuuid** | **str**| The ID of the location group. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **delete_property_group_request** | [**DeletePropertyGroupRequest**](DeletePropertyGroupRequest.md)| The request containing delete details. | [optional] 

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_propertygroups_propertygroupuuid_servicelocations**
> PropertyGroupDTOApiResponseDTO delete_propertygroups_propertygroupuuid_servicelocations(propertygroupuuid, zf_tuuid, zf_ouuid, property_group_service_locations_request=property_group_service_locations_request)

Remove locations from a location group.

Remove locations from a location group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.property_group_dto_api_response_dto import PropertyGroupDTOApiResponseDTO
from masterdata_client.models.property_group_service_locations_request import PropertyGroupServiceLocationsRequest
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
    api_instance = masterdata_client.PropertyGroupsApi(api_client)
    propertygroupuuid = 'propertygroupuuid_example' # str | The ID of the location group.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    property_group_service_locations_request = {"serviceLocations":["string"],"referenceDate":"string"} # PropertyGroupServiceLocationsRequest | The request containing locations to be removed. (optional)

    try:
        # Remove locations from a location group.
        api_response = api_instance.delete_propertygroups_propertygroupuuid_servicelocations(propertygroupuuid, zf_tuuid, zf_ouuid, property_group_service_locations_request=property_group_service_locations_request)
        print("The response of PropertyGroupsApi->delete_propertygroups_propertygroupuuid_servicelocations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupsApi->delete_propertygroups_propertygroupuuid_servicelocations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupuuid** | **str**| The ID of the location group. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **property_group_service_locations_request** | [**PropertyGroupServiceLocationsRequest**](PropertyGroupServiceLocationsRequest.md)| The request containing locations to be removed. | [optional] 

### Return type

[**PropertyGroupDTOApiResponseDTO**](PropertyGroupDTOApiResponseDTO.md)

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

# **get_propertygroups**
> PropertyGroupDTOPagedResponseModelDTOApiResponseDTO get_propertygroups(zf_tuuid, zf_ouuid, name_contains=name_contains, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

Retrieve location groups based on the provided query parameters.

Retrieve location groups based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.property_group_dto_paged_response_model_dto_api_response_dto import PropertyGroupDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = masterdata_client.PropertyGroupsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    name_contains = 'name_contains_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    order_by = 'order_by_example' # str | Allows to order the location groups. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieve location groups based on the provided query parameters.
        api_response = api_instance.get_propertygroups(zf_tuuid, zf_ouuid, name_contains=name_contains, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of PropertyGroupsApi->get_propertygroups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupsApi->get_propertygroups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **name_contains** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **order_by** | **str**| Allows to order the location groups. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**PropertyGroupDTOPagedResponseModelDTOApiResponseDTO**](PropertyGroupDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_propertygroups_overviewcount**
> PropertyGroupOverviewCountDTOApiResponseDTO get_propertygroups_overviewcount(zf_tuuid, zf_ouuid, name_contains=name_contains, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Retrieve the overview count of location groups based on the provided query parameters.

Retrieve the overview count of location groups based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.property_group_overview_count_dto_api_response_dto import PropertyGroupOverviewCountDTOApiResponseDTO
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
    api_instance = masterdata_client.PropertyGroupsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    name_contains = 'name_contains_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Retrieve the overview count of location groups based on the provided query parameters.
        api_response = api_instance.get_propertygroups_overviewcount(zf_tuuid, zf_ouuid, name_contains=name_contains, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of PropertyGroupsApi->get_propertygroups_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupsApi->get_propertygroups_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **name_contains** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**PropertyGroupOverviewCountDTOApiResponseDTO**](PropertyGroupOverviewCountDTOApiResponseDTO.md)

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

# **get_propertygroups_propertygroupuuid**
> PropertyGroupDTOApiResponseDTO get_propertygroups_propertygroupuuid(propertygroupuuid, zf_tuuid, zf_ouuid)

Retrieve a location group by its ID.

Retrieve a location group by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.property_group_dto_api_response_dto import PropertyGroupDTOApiResponseDTO
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
    api_instance = masterdata_client.PropertyGroupsApi(api_client)
    propertygroupuuid = 'propertygroupuuid_example' # str | The ID of the location group.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieve a location group by its ID.
        api_response = api_instance.get_propertygroups_propertygroupuuid(propertygroupuuid, zf_tuuid, zf_ouuid)
        print("The response of PropertyGroupsApi->get_propertygroups_propertygroupuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupsApi->get_propertygroups_propertygroupuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupuuid** | **str**| The ID of the location group. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PropertyGroupDTOApiResponseDTO**](PropertyGroupDTOApiResponseDTO.md)

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

# **post_propertygroups**
> PropertyGroupDTOApiResponseDTO post_propertygroups(zf_tuuid, zf_ouuid, create_property_group_request=create_property_group_request)

Create new location group.

Create new location group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.create_property_group_request import CreatePropertyGroupRequest
from masterdata_client.models.property_group_dto_api_response_dto import PropertyGroupDTOApiResponseDTO
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
    api_instance = masterdata_client.PropertyGroupsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_property_group_request = {"name":"string","type":{},"address":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":{},"localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"managementRelations":[{"customerId":"string","managementRelationType":{}}],"serviceLocations":["string"]} # CreatePropertyGroupRequest | The request containing location group details. (optional)

    try:
        # Create new location group.
        api_response = api_instance.post_propertygroups(zf_tuuid, zf_ouuid, create_property_group_request=create_property_group_request)
        print("The response of PropertyGroupsApi->post_propertygroups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupsApi->post_propertygroups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_property_group_request** | [**CreatePropertyGroupRequest**](CreatePropertyGroupRequest.md)| The request containing location group details. | [optional] 

### Return type

[**PropertyGroupDTOApiResponseDTO**](PropertyGroupDTOApiResponseDTO.md)

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

# **post_propertygroups_entityid_customproperties**
> PropertyGroupDTOApiResponseDTO post_propertygroups_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)

/PropertyGroups/{entityId}/customproperties - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.property_group_dto_api_response_dto import PropertyGroupDTOApiResponseDTO
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
    api_instance = masterdata_client.PropertyGroupsApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_custom_entity_properties_request = {"properties":[{"customEntityPropertyTypeId":"string","values":[{"startDateTime":"string","endDateTime":"string","valueDecimal":0,"valueString":"string","valueBoolean":true,"valueNumber":0,"valueDateTime":"string","valueDropdown":["string"]}]}]} # UpdateCustomEntityPropertiesRequest |  (optional)

    try:
        # /PropertyGroups/{entityId}/customproperties - POST
        api_response = api_instance.post_propertygroups_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)
        print("The response of PropertyGroupsApi->post_propertygroups_entityid_customproperties:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupsApi->post_propertygroups_entityid_customproperties: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_custom_entity_properties_request** | [**UpdateCustomEntityPropertiesRequest**](UpdateCustomEntityPropertiesRequest.md)|  | [optional] 

### Return type

[**PropertyGroupDTOApiResponseDTO**](PropertyGroupDTOApiResponseDTO.md)

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

# **post_propertygroups_propertygroupuuid**
> PropertyGroupDTOApiResponseDTO post_propertygroups_propertygroupuuid(propertygroupuuid, zf_tuuid, zf_ouuid, update_property_group_request=update_property_group_request)

Update details of a location group.

Update details of a location group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.property_group_dto_api_response_dto import PropertyGroupDTOApiResponseDTO
from masterdata_client.models.update_property_group_request import UpdatePropertyGroupRequest
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
    api_instance = masterdata_client.PropertyGroupsApi(api_client)
    propertygroupuuid = 'propertygroupuuid_example' # str | The ID of the location group.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_property_group_request = {"name":"string","type":{},"address":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":{},"localizedDisplay":"string","lineOne":"string","lineTwo":"string"}} # UpdatePropertyGroupRequest | The request containing location group details. (optional)

    try:
        # Update details of a location group.
        api_response = api_instance.post_propertygroups_propertygroupuuid(propertygroupuuid, zf_tuuid, zf_ouuid, update_property_group_request=update_property_group_request)
        print("The response of PropertyGroupsApi->post_propertygroups_propertygroupuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupsApi->post_propertygroups_propertygroupuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupuuid** | **str**| The ID of the location group. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_property_group_request** | [**UpdatePropertyGroupRequest**](UpdatePropertyGroupRequest.md)| The request containing location group details. | [optional] 

### Return type

[**PropertyGroupDTOApiResponseDTO**](PropertyGroupDTOApiResponseDTO.md)

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

# **post_propertygroups_propertygroupuuid_communicationconfiguration**
> PropertyGroupDTOApiResponseDTO post_propertygroups_propertygroupuuid_communicationconfiguration(propertygroupuuid, zf_tuuid, zf_ouuid, update_property_group_communication_configuration_request=update_property_group_communication_configuration_request)

Update communication configuration of a location group.

Update communication configuration of a location group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.property_group_dto_api_response_dto import PropertyGroupDTOApiResponseDTO
from masterdata_client.models.update_property_group_communication_configuration_request import UpdatePropertyGroupCommunicationConfigurationRequest
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
    api_instance = masterdata_client.PropertyGroupsApi(api_client)
    propertygroupuuid = 'propertygroupuuid_example' # str | The ID of the location group.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_property_group_communication_configuration_request = {"companyName":"string","vatAccountNumber":"string","companyAccountNumber":"string","primaryColor":"string","secondaryColor":"string","address":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":{},"localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"logo":"string","contactDetails":{"emailAddress":"string","telephone":"string","website":"string","telephoneInterruptions":"string"}} # UpdatePropertyGroupCommunicationConfigurationRequest | The request containing communication configuration. (optional)

    try:
        # Update communication configuration of a location group.
        api_response = api_instance.post_propertygroups_propertygroupuuid_communicationconfiguration(propertygroupuuid, zf_tuuid, zf_ouuid, update_property_group_communication_configuration_request=update_property_group_communication_configuration_request)
        print("The response of PropertyGroupsApi->post_propertygroups_propertygroupuuid_communicationconfiguration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupsApi->post_propertygroups_propertygroupuuid_communicationconfiguration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupuuid** | **str**| The ID of the location group. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_property_group_communication_configuration_request** | [**UpdatePropertyGroupCommunicationConfigurationRequest**](UpdatePropertyGroupCommunicationConfigurationRequest.md)| The request containing communication configuration. | [optional] 

### Return type

[**PropertyGroupDTOApiResponseDTO**](PropertyGroupDTOApiResponseDTO.md)

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

# **post_propertygroups_propertygroupuuid_managementrelations**
> PropertyGroupDTOApiResponseDTO post_propertygroups_propertygroupuuid_managementrelations(propertygroupuuid, zf_tuuid, zf_ouuid, update_property_group_management_relations_request=update_property_group_management_relations_request)

Update management relations of a location group.

Update management relations of a location group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.property_group_dto_api_response_dto import PropertyGroupDTOApiResponseDTO
from masterdata_client.models.update_property_group_management_relations_request import UpdatePropertyGroupManagementRelationsRequest
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
    api_instance = masterdata_client.PropertyGroupsApi(api_client)
    propertygroupuuid = 'propertygroupuuid_example' # str | The ID of the location group.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_property_group_management_relations_request = {"managementRelations":[{"customerId":"string","managementRelationType":{}}]} # UpdatePropertyGroupManagementRelationsRequest | The request containing a complete list of new management relations. (optional)

    try:
        # Update management relations of a location group.
        api_response = api_instance.post_propertygroups_propertygroupuuid_managementrelations(propertygroupuuid, zf_tuuid, zf_ouuid, update_property_group_management_relations_request=update_property_group_management_relations_request)
        print("The response of PropertyGroupsApi->post_propertygroups_propertygroupuuid_managementrelations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupsApi->post_propertygroups_propertygroupuuid_managementrelations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupuuid** | **str**| The ID of the location group. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_property_group_management_relations_request** | [**UpdatePropertyGroupManagementRelationsRequest**](UpdatePropertyGroupManagementRelationsRequest.md)| The request containing a complete list of new management relations. | [optional] 

### Return type

[**PropertyGroupDTOApiResponseDTO**](PropertyGroupDTOApiResponseDTO.md)

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

# **post_propertygroups_propertygroupuuid_servicelocations**
> PropertyGroupDTOApiResponseDTO post_propertygroups_propertygroupuuid_servicelocations(propertygroupuuid, zf_tuuid, zf_ouuid, property_group_service_locations_request=property_group_service_locations_request)

Add locations to a location group.

If provided locations are already in another location group, they will be moved.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.property_group_dto_api_response_dto import PropertyGroupDTOApiResponseDTO
from masterdata_client.models.property_group_service_locations_request import PropertyGroupServiceLocationsRequest
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
    api_instance = masterdata_client.PropertyGroupsApi(api_client)
    propertygroupuuid = 'propertygroupuuid_example' # str | The ID of the location group.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    property_group_service_locations_request = {"serviceLocations":["string"],"referenceDate":"string"} # PropertyGroupServiceLocationsRequest | The request containing locations to be added. (optional)

    try:
        # Add locations to a location group.
        api_response = api_instance.post_propertygroups_propertygroupuuid_servicelocations(propertygroupuuid, zf_tuuid, zf_ouuid, property_group_service_locations_request=property_group_service_locations_request)
        print("The response of PropertyGroupsApi->post_propertygroups_propertygroupuuid_servicelocations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupsApi->post_propertygroups_propertygroupuuid_servicelocations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupuuid** | **str**| The ID of the location group. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **property_group_service_locations_request** | [**PropertyGroupServiceLocationsRequest**](PropertyGroupServiceLocationsRequest.md)| The request containing locations to be added. | [optional] 

### Return type

[**PropertyGroupDTOApiResponseDTO**](PropertyGroupDTOApiResponseDTO.md)

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

