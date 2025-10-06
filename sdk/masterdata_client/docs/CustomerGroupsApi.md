# masterdata_client.CustomerGroupsApi

All URIs are relative to *https://api.zerofriction.co/api/md*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_customergroups_uuid**](CustomerGroupsApi.md#delete_customergroups_uuid) | **DELETE** /CustomerGroups/{uuid} | Delete customer group.
[**get_customergroups**](CustomerGroupsApi.md#get_customergroups) | **GET** /CustomerGroups | Retrieve customer groups based on the provided query parameters.
[**get_customergroups_customergroupuuid**](CustomerGroupsApi.md#get_customergroups_customergroupuuid) | **GET** /CustomerGroups/{customerGroupuuId} | Retrieve customer group by its ID.
[**get_overview_count_customer_groups**](CustomerGroupsApi.md#get_overview_count_customer_groups) | **GET** /CustomerGroups/overviewcount | Retrieve the overview count of customer groups based on the provided query parameters.
[**post_customergroups**](CustomerGroupsApi.md#post_customergroups) | **POST** /CustomerGroups | Create new customer group, which gives the possibility to group customers togather and apply the same settings to them.
[**post_customergroups_search**](CustomerGroupsApi.md#post_customergroups_search) | **POST** /CustomerGroups/search | Retrieve customer group by name.
[**post_customergroups_uuid_settings_automaticsettlement**](CustomerGroupsApi.md#post_customergroups_uuid_settings_automaticsettlement) | **POST** /CustomerGroups/{uuid}/settings/automaticsettlement | Update auto-settlement settings of customer group.
[**post_customergroups_uuid_updatename**](CustomerGroupsApi.md#post_customergroups_uuid_updatename) | **POST** /CustomerGroups/{uuid}/updatename | Update name of customer group.


# **delete_customergroups_uuid**
> BooleanApiResponseDTO delete_customergroups_uuid(uuid, zf_tuuid, zf_ouuid)

Delete customer group.

Delete customer group.

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
    api_instance = masterdata_client.CustomerGroupsApi(api_client)
    uuid = 'uuid_example' # str | The ID of the customer group.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Delete customer group.
        api_response = api_instance.delete_customergroups_uuid(uuid, zf_tuuid, zf_ouuid)
        print("The response of CustomerGroupsApi->delete_customergroups_uuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomerGroupsApi->delete_customergroups_uuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The ID of the customer group. | 
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
**204** | No Content |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_customergroups**
> CustomerGroupDTOPagedResponseModelDTOApiResponseDTO get_customergroups(zf_tuuid, zf_ouuid, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, continuation_token=continuation_token)

Retrieve customer groups based on the provided query parameters.

Retrieve customer groups based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.customer_group_dto_paged_response_model_dto_api_response_dto import CustomerGroupDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = masterdata_client.CustomerGroupsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    order_by = 'order_by_example' # str | Allows to order the customer groups. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieve customer groups based on the provided query parameters.
        api_response = api_instance.get_customergroups(zf_tuuid, zf_ouuid, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, continuation_token=continuation_token)
        print("The response of CustomerGroupsApi->get_customergroups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomerGroupsApi->get_customergroups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **order_by** | **str**| Allows to order the customer groups. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**CustomerGroupDTOPagedResponseModelDTOApiResponseDTO**](CustomerGroupDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_customergroups_customergroupuuid**
> CustomerGroupDTOApiResponseDTO get_customergroups_customergroupuuid(customer_groupuu_id, zf_tuuid, zf_ouuid)

Retrieve customer group by its ID.

Retrieve customer group by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.customer_group_dto_api_response_dto import CustomerGroupDTOApiResponseDTO
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
    api_instance = masterdata_client.CustomerGroupsApi(api_client)
    customer_groupuu_id = 'customer_groupuu_id_example' # str | The ID of the customer group.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieve customer group by its ID.
        api_response = api_instance.get_customergroups_customergroupuuid(customer_groupuu_id, zf_tuuid, zf_ouuid)
        print("The response of CustomerGroupsApi->get_customergroups_customergroupuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomerGroupsApi->get_customergroups_customergroupuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_groupuu_id** | **str**| The ID of the customer group. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**CustomerGroupDTOApiResponseDTO**](CustomerGroupDTOApiResponseDTO.md)

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

# **get_overview_count_customer_groups**
> CustomerGroupOverviewCountDTOApiResponseDTO get_overview_count_customer_groups(zf_tuuid, zf_ouuid, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Retrieve the overview count of customer groups based on the provided query parameters.

Retrieve the overview count of customer groups based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.customer_group_overview_count_dto_api_response_dto import CustomerGroupOverviewCountDTOApiResponseDTO
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
    api_instance = masterdata_client.CustomerGroupsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Retrieve the overview count of customer groups based on the provided query parameters.
        api_response = api_instance.get_overview_count_customer_groups(zf_tuuid, zf_ouuid, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of CustomerGroupsApi->get_overview_count_customer_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomerGroupsApi->get_overview_count_customer_groups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**CustomerGroupOverviewCountDTOApiResponseDTO**](CustomerGroupOverviewCountDTOApiResponseDTO.md)

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

# **post_customergroups**
> CustomerGroupDTOApiResponseDTO post_customergroups(zf_tuuid, zf_ouuid, create_customer_group_request=create_customer_group_request)

Create new customer group, which gives the possibility to group customers togather and apply the same settings to them.

Create new customer group, which gives the possibility to group customers togather and apply the same settings to them.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.create_customer_group_request import CreateCustomerGroupRequest
from masterdata_client.models.customer_group_dto_api_response_dto import CustomerGroupDTOApiResponseDTO
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
    api_instance = masterdata_client.CustomerGroupsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_customer_group_request = {"name":"string","settings":{"automaticSettlement":true}} # CreateCustomerGroupRequest | The request containing customer group details. (optional)

    try:
        # Create new customer group, which gives the possibility to group customers togather and apply the same settings to them.
        api_response = api_instance.post_customergroups(zf_tuuid, zf_ouuid, create_customer_group_request=create_customer_group_request)
        print("The response of CustomerGroupsApi->post_customergroups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomerGroupsApi->post_customergroups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_customer_group_request** | [**CreateCustomerGroupRequest**](CreateCustomerGroupRequest.md)| The request containing customer group details. | [optional] 

### Return type

[**CustomerGroupDTOApiResponseDTO**](CustomerGroupDTOApiResponseDTO.md)

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

# **post_customergroups_search**
> CustomerGroupDTOApiResponseDTO post_customergroups_search(zf_tuuid, zf_ouuid, search_customer_request=search_customer_request)

Retrieve customer group by name.

Retrieve customer group by name.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.customer_group_dto_api_response_dto import CustomerGroupDTOApiResponseDTO
from masterdata_client.models.search_customer_request import SearchCustomerRequest
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
    api_instance = masterdata_client.CustomerGroupsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    search_customer_request = {"name":"string"} # SearchCustomerRequest | The search request containing the full name of the customer group. (optional)

    try:
        # Retrieve customer group by name.
        api_response = api_instance.post_customergroups_search(zf_tuuid, zf_ouuid, search_customer_request=search_customer_request)
        print("The response of CustomerGroupsApi->post_customergroups_search:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomerGroupsApi->post_customergroups_search: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **search_customer_request** | [**SearchCustomerRequest**](SearchCustomerRequest.md)| The search request containing the full name of the customer group. | [optional] 

### Return type

[**CustomerGroupDTOApiResponseDTO**](CustomerGroupDTOApiResponseDTO.md)

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

# **post_customergroups_uuid_settings_automaticsettlement**
> CustomerGroupDTOApiResponseDTO post_customergroups_uuid_settings_automaticsettlement(uuid, zf_tuuid, zf_ouuid, update_customer_group_settings_automatic_settlement_request=update_customer_group_settings_automatic_settlement_request)

Update auto-settlement settings of customer group.

Update auto-settlement settings of customer group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.customer_group_dto_api_response_dto import CustomerGroupDTOApiResponseDTO
from masterdata_client.models.update_customer_group_settings_automatic_settlement_request import UpdateCustomerGroupSettingsAutomaticSettlementRequest
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
    api_instance = masterdata_client.CustomerGroupsApi(api_client)
    uuid = 'uuid_example' # str | The ID of the customer group.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_customer_group_settings_automatic_settlement_request = {"automaticSettlement":true} # UpdateCustomerGroupSettingsAutomaticSettlementRequest | The request containing auto-settlement settings of customer group. (optional)

    try:
        # Update auto-settlement settings of customer group.
        api_response = api_instance.post_customergroups_uuid_settings_automaticsettlement(uuid, zf_tuuid, zf_ouuid, update_customer_group_settings_automatic_settlement_request=update_customer_group_settings_automatic_settlement_request)
        print("The response of CustomerGroupsApi->post_customergroups_uuid_settings_automaticsettlement:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomerGroupsApi->post_customergroups_uuid_settings_automaticsettlement: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The ID of the customer group. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_customer_group_settings_automatic_settlement_request** | [**UpdateCustomerGroupSettingsAutomaticSettlementRequest**](UpdateCustomerGroupSettingsAutomaticSettlementRequest.md)| The request containing auto-settlement settings of customer group. | [optional] 

### Return type

[**CustomerGroupDTOApiResponseDTO**](CustomerGroupDTOApiResponseDTO.md)

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

# **post_customergroups_uuid_updatename**
> CustomerGroupDTOApiResponseDTO post_customergroups_uuid_updatename(uuid, zf_tuuid, zf_ouuid, update_customer_group_name_request=update_customer_group_name_request)

Update name of customer group.

Update name of customer group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.customer_group_dto_api_response_dto import CustomerGroupDTOApiResponseDTO
from masterdata_client.models.update_customer_group_name_request import UpdateCustomerGroupNameRequest
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
    api_instance = masterdata_client.CustomerGroupsApi(api_client)
    uuid = 'uuid_example' # str | The ID of the customer group.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_customer_group_name_request = {"name":"string"} # UpdateCustomerGroupNameRequest | The request containing new name of customer group. (optional)

    try:
        # Update name of customer group.
        api_response = api_instance.post_customergroups_uuid_updatename(uuid, zf_tuuid, zf_ouuid, update_customer_group_name_request=update_customer_group_name_request)
        print("The response of CustomerGroupsApi->post_customergroups_uuid_updatename:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomerGroupsApi->post_customergroups_uuid_updatename: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The ID of the customer group. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_customer_group_name_request** | [**UpdateCustomerGroupNameRequest**](UpdateCustomerGroupNameRequest.md)| The request containing new name of customer group. | [optional] 

### Return type

[**CustomerGroupDTOApiResponseDTO**](CustomerGroupDTOApiResponseDTO.md)

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

