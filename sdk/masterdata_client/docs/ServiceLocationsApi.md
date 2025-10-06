# masterdata_client.ServiceLocationsApi

All URIs are relative to *https://api.zerofriction.co/api/md*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_update_service_location_product**](ServiceLocationsApi.md#bulk_update_service_location_product) | **POST** /ServiceLocations/bulk/updateproduct | Update product for multiple locations in bulk.
[**create_service_location**](ServiceLocationsApi.md#create_service_location) | **POST** /ServiceLocations | Create new location.
[**delete_servicelocations_bulk**](ServiceLocationsApi.md#delete_servicelocations_bulk) | **DELETE** /ServiceLocations/bulk | Delete multiple unused locations in bulk.
[**filter_all_service_locations**](ServiceLocationsApi.md#filter_all_service_locations) | **POST** /ServiceLocations/filter | Retrieve locations based on the provided query parameters.
[**filter_service_location_overview_count**](ServiceLocationsApi.md#filter_service_location_overview_count) | **POST** /ServiceLocations/filter/overviewcount | Retrieve the overview count of locations based on the provided query parameters.
[**get_postal_addresses**](ServiceLocationsApi.md#get_postal_addresses) | **GET** /ServiceLocations/postaladdresses | GetPostalAddresses
[**get_service_location**](ServiceLocationsApi.md#get_service_location) | **GET** /ServiceLocations/{servicelocationuuid} | Retrieve a location by its ID.
[**post_servicelocations_bulk_recalculateeav**](ServiceLocationsApi.md#post_servicelocations_bulk_recalculateeav) | **POST** /ServiceLocations/bulk/recalculateeav | Trigger recalculation of EAV for multiple locations in bulk.
[**post_servicelocations_entityid_customproperties**](ServiceLocationsApi.md#post_servicelocations_entityid_customproperties) | **POST** /ServiceLocations/{entityId}/customproperties | /ServiceLocations/{entityId}/customproperties - POST
[**update_service_location_address**](ServiceLocationsApi.md#update_service_location_address) | **POST** /ServiceLocations/{servicelocationuuid}/updateaddress | Update addres of a location.
[**update_service_location_external_id**](ServiceLocationsApi.md#update_service_location_external_id) | **POST** /ServiceLocations/{servicelocationuuid}/updateexternalid | Update external ID of a location.
[**update_service_location_management_details**](ServiceLocationsApi.md#update_service_location_management_details) | **POST** /ServiceLocations/{servicelocationuuid}/updatemanagementdetails | Update management relations of a location.
[**update_service_location_product**](ServiceLocationsApi.md#update_service_location_product) | **POST** /ServiceLocations/{servicelocationuuid}/updateproduct | Update product for a location.


# **bulk_update_service_location_product**
> ApiResponseDTO bulk_update_service_location_product(zf_tuuid, zf_ouuid, bulk_update_service_location_product_request=bulk_update_service_location_product_request)

Update product for multiple locations in bulk.

Update product for multiple locations in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_update_service_location_product_request import BulkUpdateServiceLocationProductRequest
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
    api_instance = masterdata_client.ServiceLocationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_update_service_location_product_request = {"productId":"string","onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"customerId":"string","propertyGroupIds":["string"],"excludeServiceLocationsSuppliedInContractId":"string","excludeServiceLocationsInPropertyGroupId":"string","referenceDateTime":"string","postalCode":"string","city":"string","streetNumber":"string"},"quickFilter":"string"} # BulkUpdateServiceLocationProductRequest | The request containing bulk product update details and query parameters to filter the locations, which are supposed to have product updated. (optional)

    try:
        # Update product for multiple locations in bulk.
        api_response = api_instance.bulk_update_service_location_product(zf_tuuid, zf_ouuid, bulk_update_service_location_product_request=bulk_update_service_location_product_request)
        print("The response of ServiceLocationsApi->bulk_update_service_location_product:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceLocationsApi->bulk_update_service_location_product: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_update_service_location_product_request** | [**BulkUpdateServiceLocationProductRequest**](BulkUpdateServiceLocationProductRequest.md)| The request containing bulk product update details and query parameters to filter the locations, which are supposed to have product updated. | [optional] 

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

# **create_service_location**
> ServiceLocationDTOApiResponseDTO create_service_location(zf_tuuid, zf_ouuid, create_service_location_request=create_service_location_request)

Create new location.

Create new location.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.create_service_location_request import CreateServiceLocationRequest
from masterdata_client.models.service_location_dto_api_response_dto import ServiceLocationDTOApiResponseDTO
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
    api_instance = masterdata_client.ServiceLocationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_service_location_request = {"address":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":{},"localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"externalId":"string","productId":"string","services":[{"utilityType":{},"externalIdentifier":"string"}],"managementRelations":[{"customerId":"string","managementRelationType":{}}]} # CreateServiceLocationRequest | The request containing location details. (optional)

    try:
        # Create new location.
        api_response = api_instance.create_service_location(zf_tuuid, zf_ouuid, create_service_location_request=create_service_location_request)
        print("The response of ServiceLocationsApi->create_service_location:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceLocationsApi->create_service_location: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_service_location_request** | [**CreateServiceLocationRequest**](CreateServiceLocationRequest.md)| The request containing location details. | [optional] 

### Return type

[**ServiceLocationDTOApiResponseDTO**](ServiceLocationDTOApiResponseDTO.md)

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

# **delete_servicelocations_bulk**
> BooleanApiResponseDTO delete_servicelocations_bulk(zf_tuuid, zf_ouuid, bulk_delete_service_location_request=bulk_delete_service_location_request)

Delete multiple unused locations in bulk.

Delete multiple unused locations in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from masterdata_client.models.bulk_delete_service_location_request import BulkDeleteServiceLocationRequest
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
    api_instance = masterdata_client.ServiceLocationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_delete_service_location_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"customerId":"string","propertyGroupIds":["string"],"excludeServiceLocationsSuppliedInContractId":"string","excludeServiceLocationsInPropertyGroupId":"string","referenceDateTime":"string","postalCode":"string","city":"string","streetNumber":"string"},"quickFilter":"string"} # BulkDeleteServiceLocationRequest | The request containing bulk deletion details and query parameters to filter the locations to be deleted. (optional)

    try:
        # Delete multiple unused locations in bulk.
        api_response = api_instance.delete_servicelocations_bulk(zf_tuuid, zf_ouuid, bulk_delete_service_location_request=bulk_delete_service_location_request)
        print("The response of ServiceLocationsApi->delete_servicelocations_bulk:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceLocationsApi->delete_servicelocations_bulk: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_delete_service_location_request** | [**BulkDeleteServiceLocationRequest**](BulkDeleteServiceLocationRequest.md)| The request containing bulk deletion details and query parameters to filter the locations to be deleted. | [optional] 

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
**204** | No Content |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filter_all_service_locations**
> ServiceLocationDTOPagedResponseModelDTOApiResponseDTO filter_all_service_locations(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_service_locations_query_params=get_service_locations_query_params)

Retrieve locations based on the provided query parameters.

Retrieve locations based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.get_service_locations_query_params import GetServiceLocationsQueryParams
from masterdata_client.models.service_location_dto_paged_response_model_dto_api_response_dto import ServiceLocationDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = masterdata_client.ServiceLocationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    order_by = 'order_by_example' # str | Allows to order the locations. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)
    get_service_locations_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"customerId":"string","propertyGroupIds":["string"],"excludeServiceLocationsSuppliedInContractId":"string","excludeServiceLocationsInPropertyGroupId":"string","referenceDateTime":"string","postalCode":"string","city":"string","streetNumber":"string"} # GetServiceLocationsQueryParams | Allows to search on fields within the locations. (optional)

    try:
        # Retrieve locations based on the provided query parameters.
        api_response = api_instance.filter_all_service_locations(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_service_locations_query_params=get_service_locations_query_params)
        print("The response of ServiceLocationsApi->filter_all_service_locations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceLocationsApi->filter_all_service_locations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **order_by** | **str**| Allows to order the locations. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 
 **get_service_locations_query_params** | [**GetServiceLocationsQueryParams**](GetServiceLocationsQueryParams.md)| Allows to search on fields within the locations. | [optional] 

### Return type

[**ServiceLocationDTOPagedResponseModelDTOApiResponseDTO**](ServiceLocationDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **filter_service_location_overview_count**
> ServiceLocationOverviewCountDTOApiResponseDTO filter_service_location_overview_count(zf_tuuid, zf_ouuid, get_service_locations_query_params=get_service_locations_query_params)

Retrieve the overview count of locations based on the provided query parameters.

Retrieve the overview count of locations based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.get_service_locations_query_params import GetServiceLocationsQueryParams
from masterdata_client.models.service_location_overview_count_dto_api_response_dto import ServiceLocationOverviewCountDTOApiResponseDTO
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
    api_instance = masterdata_client.ServiceLocationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    get_service_locations_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"customerId":"string","propertyGroupIds":["string"],"excludeServiceLocationsSuppliedInContractId":"string","excludeServiceLocationsInPropertyGroupId":"string","referenceDateTime":"string","postalCode":"string","city":"string","streetNumber":"string"} # GetServiceLocationsQueryParams | Allows to search on fields within the locations. (optional)

    try:
        # Retrieve the overview count of locations based on the provided query parameters.
        api_response = api_instance.filter_service_location_overview_count(zf_tuuid, zf_ouuid, get_service_locations_query_params=get_service_locations_query_params)
        print("The response of ServiceLocationsApi->filter_service_location_overview_count:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceLocationsApi->filter_service_location_overview_count: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **get_service_locations_query_params** | [**GetServiceLocationsQueryParams**](GetServiceLocationsQueryParams.md)| Allows to search on fields within the locations. | [optional] 

### Return type

[**ServiceLocationOverviewCountDTOApiResponseDTO**](ServiceLocationOverviewCountDTOApiResponseDTO.md)

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

# **get_postal_addresses**
> PostalCodeDTOPagedResponseModelDTOApiResponseDTO get_postal_addresses(postal_code=postal_code, continuation_token=continuation_token)

GetPostalAddresses

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.postal_code_dto_paged_response_model_dto_api_response_dto import PostalCodeDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = masterdata_client.ServiceLocationsApi(api_client)
    postal_code = 'postal_code_example' # str |  (optional)
    continuation_token = 'continuation_token_example' # str |  (optional)

    try:
        # GetPostalAddresses
        api_response = api_instance.get_postal_addresses(postal_code=postal_code, continuation_token=continuation_token)
        print("The response of ServiceLocationsApi->get_postal_addresses:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceLocationsApi->get_postal_addresses: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postal_code** | **str**|  | [optional] 
 **continuation_token** | **str**|  | [optional] 

### Return type

[**PostalCodeDTOPagedResponseModelDTOApiResponseDTO**](PostalCodeDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_service_location**
> ServiceLocationDTOApiResponseDTO get_service_location(servicelocationuuid, zf_tuuid, zf_ouuid)

Retrieve a location by its ID.

Retrieve a location by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.service_location_dto_api_response_dto import ServiceLocationDTOApiResponseDTO
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
    api_instance = masterdata_client.ServiceLocationsApi(api_client)
    servicelocationuuid = 'servicelocationuuid_example' # str | The ID of the location.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieve a location by its ID.
        api_response = api_instance.get_service_location(servicelocationuuid, zf_tuuid, zf_ouuid)
        print("The response of ServiceLocationsApi->get_service_location:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceLocationsApi->get_service_location: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicelocationuuid** | **str**| The ID of the location. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**ServiceLocationDTOApiResponseDTO**](ServiceLocationDTOApiResponseDTO.md)

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

# **post_servicelocations_bulk_recalculateeav**
> ApiResponseDTO post_servicelocations_bulk_recalculateeav(zf_tuuid, zf_ouuid, bulk_recalculate_eav_service_location_request=bulk_recalculate_eav_service_location_request)

Trigger recalculation of EAV for multiple locations in bulk.

The recalculation will happen on an active contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_recalculate_eav_service_location_request import BulkRecalculateEavServiceLocationRequest
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
    api_instance = masterdata_client.ServiceLocationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_recalculate_eav_service_location_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"customerId":"string","propertyGroupIds":["string"],"excludeServiceLocationsSuppliedInContractId":"string","excludeServiceLocationsInPropertyGroupId":"string","referenceDateTime":"string","postalCode":"string","city":"string","streetNumber":"string"},"quickFilter":"string"} # BulkRecalculateEavServiceLocationRequest | The request containing bulk EAV recalculation details and query parameters to filter the locations, which are supposed to have EAV recalculated. (optional)

    try:
        # Trigger recalculation of EAV for multiple locations in bulk.
        api_response = api_instance.post_servicelocations_bulk_recalculateeav(zf_tuuid, zf_ouuid, bulk_recalculate_eav_service_location_request=bulk_recalculate_eav_service_location_request)
        print("The response of ServiceLocationsApi->post_servicelocations_bulk_recalculateeav:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceLocationsApi->post_servicelocations_bulk_recalculateeav: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_recalculate_eav_service_location_request** | [**BulkRecalculateEavServiceLocationRequest**](BulkRecalculateEavServiceLocationRequest.md)| The request containing bulk EAV recalculation details and query parameters to filter the locations, which are supposed to have EAV recalculated. | [optional] 

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

# **post_servicelocations_entityid_customproperties**
> ServiceLocationDTOApiResponseDTO post_servicelocations_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)

/ServiceLocations/{entityId}/customproperties - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.service_location_dto_api_response_dto import ServiceLocationDTOApiResponseDTO
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
    api_instance = masterdata_client.ServiceLocationsApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_custom_entity_properties_request = {"properties":[{"customEntityPropertyTypeId":"string","values":[{"startDateTime":"string","endDateTime":"string","valueDecimal":0,"valueString":"string","valueBoolean":true,"valueNumber":0,"valueDateTime":"string","valueDropdown":["string"]}]}]} # UpdateCustomEntityPropertiesRequest |  (optional)

    try:
        # /ServiceLocations/{entityId}/customproperties - POST
        api_response = api_instance.post_servicelocations_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)
        print("The response of ServiceLocationsApi->post_servicelocations_entityid_customproperties:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceLocationsApi->post_servicelocations_entityid_customproperties: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_custom_entity_properties_request** | [**UpdateCustomEntityPropertiesRequest**](UpdateCustomEntityPropertiesRequest.md)|  | [optional] 

### Return type

[**ServiceLocationDTOApiResponseDTO**](ServiceLocationDTOApiResponseDTO.md)

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

# **update_service_location_address**
> ServiceLocationDTOApiResponseDTO update_service_location_address(servicelocationuuid, zf_tuuid, zf_ouuid, update_service_location_address_request=update_service_location_address_request)

Update addres of a location.

Update addres of a location.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.service_location_dto_api_response_dto import ServiceLocationDTOApiResponseDTO
from masterdata_client.models.update_service_location_address_request import UpdateServiceLocationAddressRequest
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
    api_instance = masterdata_client.ServiceLocationsApi(api_client)
    servicelocationuuid = 'servicelocationuuid_example' # str | The ID of the location.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_service_location_address_request = {"address":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":{},"localizedDisplay":"string","lineOne":"string","lineTwo":"string"}} # UpdateServiceLocationAddressRequest | The request containing a new address. (optional)

    try:
        # Update addres of a location.
        api_response = api_instance.update_service_location_address(servicelocationuuid, zf_tuuid, zf_ouuid, update_service_location_address_request=update_service_location_address_request)
        print("The response of ServiceLocationsApi->update_service_location_address:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceLocationsApi->update_service_location_address: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicelocationuuid** | **str**| The ID of the location. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_service_location_address_request** | [**UpdateServiceLocationAddressRequest**](UpdateServiceLocationAddressRequest.md)| The request containing a new address. | [optional] 

### Return type

[**ServiceLocationDTOApiResponseDTO**](ServiceLocationDTOApiResponseDTO.md)

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

# **update_service_location_external_id**
> ServiceLocationDTOApiResponseDTO update_service_location_external_id(servicelocationuuid, zf_tuuid, zf_ouuid, update_external_id_request=update_external_id_request)

Update external ID of a location.

Update external ID of a location.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.service_location_dto_api_response_dto import ServiceLocationDTOApiResponseDTO
from masterdata_client.models.update_external_id_request import UpdateExternalIdRequest
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
    api_instance = masterdata_client.ServiceLocationsApi(api_client)
    servicelocationuuid = 'servicelocationuuid_example' # str | The ID of the location.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_external_id_request = {"externalId":"string"} # UpdateExternalIdRequest | The request containing new external ID. (optional)

    try:
        # Update external ID of a location.
        api_response = api_instance.update_service_location_external_id(servicelocationuuid, zf_tuuid, zf_ouuid, update_external_id_request=update_external_id_request)
        print("The response of ServiceLocationsApi->update_service_location_external_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceLocationsApi->update_service_location_external_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicelocationuuid** | **str**| The ID of the location. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_external_id_request** | [**UpdateExternalIdRequest**](UpdateExternalIdRequest.md)| The request containing new external ID. | [optional] 

### Return type

[**ServiceLocationDTOApiResponseDTO**](ServiceLocationDTOApiResponseDTO.md)

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

# **update_service_location_management_details**
> update_service_location_management_details(servicelocationuuid, zf_tuuid, zf_ouuid, update_management_relations_request=update_management_relations_request)

Update management relations of a location.

Update management relations of a location.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.update_management_relations_request import UpdateManagementRelationsRequest
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
    api_instance = masterdata_client.ServiceLocationsApi(api_client)
    servicelocationuuid = 'servicelocationuuid_example' # str | The ID of the location.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_management_relations_request = {"managementRelations":[{"customerId":"string","managementRelationType":{}}]} # UpdateManagementRelationsRequest | The request containing a complete list of new management relations. (optional)

    try:
        # Update management relations of a location.
        api_instance.update_service_location_management_details(servicelocationuuid, zf_tuuid, zf_ouuid, update_management_relations_request=update_management_relations_request)
    except Exception as e:
        print("Exception when calling ServiceLocationsApi->update_service_location_management_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicelocationuuid** | **str**| The ID of the location. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_management_relations_request** | [**UpdateManagementRelationsRequest**](UpdateManagementRelationsRequest.md)| The request containing a complete list of new management relations. | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_service_location_product**
> ServiceLocationDTOApiResponseDTO update_service_location_product(servicelocationuuid, zf_tuuid, zf_ouuid, update_service_location_product_request=update_service_location_product_request)

Update product for a location.

Update product for a location.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.service_location_dto_api_response_dto import ServiceLocationDTOApiResponseDTO
from masterdata_client.models.update_service_location_product_request import UpdateServiceLocationProductRequest
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
    api_instance = masterdata_client.ServiceLocationsApi(api_client)
    servicelocationuuid = 'servicelocationuuid_example' # str | The ID of the location.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_service_location_product_request = {"productId":"string"} # UpdateServiceLocationProductRequest | The request containing the ID of a product to be linked. (optional)

    try:
        # Update product for a location.
        api_response = api_instance.update_service_location_product(servicelocationuuid, zf_tuuid, zf_ouuid, update_service_location_product_request=update_service_location_product_request)
        print("The response of ServiceLocationsApi->update_service_location_product:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceLocationsApi->update_service_location_product: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **servicelocationuuid** | **str**| The ID of the location. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_service_location_product_request** | [**UpdateServiceLocationProductRequest**](UpdateServiceLocationProductRequest.md)| The request containing the ID of a product to be linked. | [optional] 

### Return type

[**ServiceLocationDTOApiResponseDTO**](ServiceLocationDTOApiResponseDTO.md)

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

