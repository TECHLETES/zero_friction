# attachments_client.EntityAttachmentGroupsApi

All URIs are relative to *https://api.zerofriction.co/api/att*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_entity_attachment_group**](EntityAttachmentGroupsApi.md#add_entity_attachment_group) | **POST** /EntityAttachmentGroups/{subjectType}/{subjectId} | Adds a new entity attachment group.
[**delete_entity_attachment_group**](EntityAttachmentGroupsApi.md#delete_entity_attachment_group) | **DELETE** /EntityAttachmentGroups/{subjectType}/{subjectId}/{eauuid} | Deletes a specific entity attachment group.
[**download_entity_attachment_groups**](EntityAttachmentGroupsApi.md#download_entity_attachment_groups) | **POST** /EntityAttachmentGroups/{subjectType}/{subjectId}/download | Downloads attachments for a specific entity.
[**download_entity_attachment_groups_only_by_id**](EntityAttachmentGroupsApi.md#download_entity_attachment_groups_only_by_id) | **POST** /EntityAttachmentGroups/download | Downloads attachments by request only.
[**get_entity_attachment_group**](EntityAttachmentGroupsApi.md#get_entity_attachment_group) | **GET** /EntityAttachmentGroups/{subjectType}/{subjectId}/{eauuid} | Gets a specific entity attachment group.
[**get_entity_attachment_group_only_by_id**](EntityAttachmentGroupsApi.md#get_entity_attachment_group_only_by_id) | **GET** /EntityAttachmentGroups/{eauuid} | Gets a specific entity attachment group by ID only.
[**get_entity_attachment_groups**](EntityAttachmentGroupsApi.md#get_entity_attachment_groups) | **GET** /EntityAttachmentGroups/{subjectType}/{subjectId} | Gets all entity attachment groups for a specific subject.
[**get_entity_attachment_groups_overview_count**](EntityAttachmentGroupsApi.md#get_entity_attachment_groups_overview_count) | **GET** /EntityAttachmentGroups/{subjectType}/{subjectId}/overviewcount | Gets an overview count of entity attachment groups for a specific subject.
[**post_entityattachmentgroups_bulk_delete**](EntityAttachmentGroupsApi.md#post_entityattachmentgroups_bulk_delete) | **POST** /EntityAttachmentGroups/bulk/delete | Bulk deletes entity attachment groups.
[**update_entity_attachment_group**](EntityAttachmentGroupsApi.md#update_entity_attachment_group) | **PATCH** /EntityAttachmentGroups/{subjectType}/{subjectId}/{eauuid} | Updates an existing entity attachment group.


# **add_entity_attachment_group**
> EntityAttachmentGroupDTOApiResponseDTO add_entity_attachment_group(subject_id, subject_type, zf_tuuid, zf_ouuid, entity_subject_display_name=entity_subject_display_name, include_in_welcome_email=include_in_welcome_email, visibility_name=visibility_name, visibility_id=visibility_id, approval_required=approval_required, valid_from=valid_from, valid_until=valid_until)

Adds a new entity attachment group.

Adds a new entity attachment group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.entity_attachment_group_dto_api_response_dto import EntityAttachmentGroupDTOApiResponseDTO
from attachments_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/att
# See configuration.py for a list of all supported configuration parameters.
configuration = attachments_client.Configuration(
    host = "https://api.zerofriction.co/api/att"
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
with attachments_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = attachments_client.EntityAttachmentGroupsApi(api_client)
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    subject_type = 'subject_type_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    entity_subject_display_name = 'entity_subject_display_name_example' # str |  (optional)
    include_in_welcome_email = True # bool |  (optional)
    visibility_name = 'visibility_name_example' # str |  (optional)
    visibility_id = 56 # int |  (optional)
    approval_required = True # bool |  (optional)
    valid_from = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    valid_until = '2013-10-20T19:20:30+01:00' # datetime |  (optional)

    try:
        # Adds a new entity attachment group.
        api_response = api_instance.add_entity_attachment_group(subject_id, subject_type, zf_tuuid, zf_ouuid, entity_subject_display_name=entity_subject_display_name, include_in_welcome_email=include_in_welcome_email, visibility_name=visibility_name, visibility_id=visibility_id, approval_required=approval_required, valid_from=valid_from, valid_until=valid_until)
        print("The response of EntityAttachmentGroupsApi->add_entity_attachment_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentGroupsApi->add_entity_attachment_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_id** | **str**| The unique identifier of the subject entity. | 
 **subject_type** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **entity_subject_display_name** | **str**|  | [optional] 
 **include_in_welcome_email** | **bool**|  | [optional] 
 **visibility_name** | **str**|  | [optional] 
 **visibility_id** | **int**|  | [optional] 
 **approval_required** | **bool**|  | [optional] 
 **valid_from** | **datetime**|  | [optional] 
 **valid_until** | **datetime**|  | [optional] 

### Return type

[**EntityAttachmentGroupDTOApiResponseDTO**](EntityAttachmentGroupDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_entity_attachment_group**
> BooleanApiResponseDTO delete_entity_attachment_group(subject_id, eauuid, subject_type, zf_tuuid, zf_ouuid)

Deletes a specific entity attachment group.

Deletes a specific entity attachment group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from attachments_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/att
# See configuration.py for a list of all supported configuration parameters.
configuration = attachments_client.Configuration(
    host = "https://api.zerofriction.co/api/att"
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
with attachments_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = attachments_client.EntityAttachmentGroupsApi(api_client)
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment group.
    subject_type = 'subject_type_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes a specific entity attachment group.
        api_response = api_instance.delete_entity_attachment_group(subject_id, eauuid, subject_type, zf_tuuid, zf_ouuid)
        print("The response of EntityAttachmentGroupsApi->delete_entity_attachment_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentGroupsApi->delete_entity_attachment_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_id** | **str**| The unique identifier of the subject entity. | 
 **eauuid** | **str**| The unique identifier of the entity attachment group. | 
 **subject_type** | **str**|  | 
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

# **download_entity_attachment_groups**
> bytearray download_entity_attachment_groups(subject_id, subject_type, zf_tuuid, zf_ouuid, download_entity_attachment_groups_request=download_entity_attachment_groups_request)

Downloads attachments for a specific entity.

Downloads attachments for a specific entity.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.download_entity_attachment_groups_request import DownloadEntityAttachmentGroupsRequest
from attachments_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/att
# See configuration.py for a list of all supported configuration parameters.
configuration = attachments_client.Configuration(
    host = "https://api.zerofriction.co/api/att"
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
with attachments_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = attachments_client.EntityAttachmentGroupsApi(api_client)
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    subject_type = 'subject_type_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    download_entity_attachment_groups_request = {"entityAttachmentGroupIds":["string"],"culture":{}} # DownloadEntityAttachmentGroupsRequest | The request containing details of the attachments to download. (optional)

    try:
        # Downloads attachments for a specific entity.
        api_response = api_instance.download_entity_attachment_groups(subject_id, subject_type, zf_tuuid, zf_ouuid, download_entity_attachment_groups_request=download_entity_attachment_groups_request)
        print("The response of EntityAttachmentGroupsApi->download_entity_attachment_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentGroupsApi->download_entity_attachment_groups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_id** | **str**| The unique identifier of the subject entity. | 
 **subject_type** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **download_entity_attachment_groups_request** | [**DownloadEntityAttachmentGroupsRequest**](DownloadEntityAttachmentGroupsRequest.md)| The request containing details of the attachments to download. | [optional] 

### Return type

**bytearray**

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

# **download_entity_attachment_groups_only_by_id**
> bytearray download_entity_attachment_groups_only_by_id(zf_tuuid, zf_ouuid, download_entity_attachment_groups_request=download_entity_attachment_groups_request)

Downloads attachments by request only.

Downloads attachments by request only.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.download_entity_attachment_groups_request import DownloadEntityAttachmentGroupsRequest
from attachments_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/att
# See configuration.py for a list of all supported configuration parameters.
configuration = attachments_client.Configuration(
    host = "https://api.zerofriction.co/api/att"
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
with attachments_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = attachments_client.EntityAttachmentGroupsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    download_entity_attachment_groups_request = {"entityAttachmentGroupIds":["string"],"culture":{}} # DownloadEntityAttachmentGroupsRequest | The request containing details of the attachments to download. (optional)

    try:
        # Downloads attachments by request only.
        api_response = api_instance.download_entity_attachment_groups_only_by_id(zf_tuuid, zf_ouuid, download_entity_attachment_groups_request=download_entity_attachment_groups_request)
        print("The response of EntityAttachmentGroupsApi->download_entity_attachment_groups_only_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentGroupsApi->download_entity_attachment_groups_only_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **download_entity_attachment_groups_request** | [**DownloadEntityAttachmentGroupsRequest**](DownloadEntityAttachmentGroupsRequest.md)| The request containing details of the attachments to download. | [optional] 

### Return type

**bytearray**

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

# **get_entity_attachment_group**
> EntityAttachmentGroupDTOApiResponseDTO get_entity_attachment_group(subject_id, eauuid, subject_type, zf_tuuid, zf_ouuid)

Gets a specific entity attachment group.

Gets a specific entity attachment group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.entity_attachment_group_dto_api_response_dto import EntityAttachmentGroupDTOApiResponseDTO
from attachments_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/att
# See configuration.py for a list of all supported configuration parameters.
configuration = attachments_client.Configuration(
    host = "https://api.zerofriction.co/api/att"
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
with attachments_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = attachments_client.EntityAttachmentGroupsApi(api_client)
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment group.
    subject_type = 'subject_type_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Gets a specific entity attachment group.
        api_response = api_instance.get_entity_attachment_group(subject_id, eauuid, subject_type, zf_tuuid, zf_ouuid)
        print("The response of EntityAttachmentGroupsApi->get_entity_attachment_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentGroupsApi->get_entity_attachment_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_id** | **str**| The unique identifier of the subject entity. | 
 **eauuid** | **str**| The unique identifier of the entity attachment group. | 
 **subject_type** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**EntityAttachmentGroupDTOApiResponseDTO**](EntityAttachmentGroupDTOApiResponseDTO.md)

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

# **get_entity_attachment_group_only_by_id**
> EntityAttachmentGroupDTOApiResponseDTO get_entity_attachment_group_only_by_id(eauuid, zf_tuuid, zf_ouuid)

Gets a specific entity attachment group by ID only.

Gets a specific entity attachment group by ID only.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.entity_attachment_group_dto_api_response_dto import EntityAttachmentGroupDTOApiResponseDTO
from attachments_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/att
# See configuration.py for a list of all supported configuration parameters.
configuration = attachments_client.Configuration(
    host = "https://api.zerofriction.co/api/att"
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
with attachments_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = attachments_client.EntityAttachmentGroupsApi(api_client)
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment group.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Gets a specific entity attachment group by ID only.
        api_response = api_instance.get_entity_attachment_group_only_by_id(eauuid, zf_tuuid, zf_ouuid)
        print("The response of EntityAttachmentGroupsApi->get_entity_attachment_group_only_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentGroupsApi->get_entity_attachment_group_only_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eauuid** | **str**| The unique identifier of the entity attachment group. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**EntityAttachmentGroupDTOApiResponseDTO**](EntityAttachmentGroupDTOApiResponseDTO.md)

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

# **get_entity_attachment_groups**
> EntityAttachmentGroupDTOPagedResponseModelDTOApiResponseDTO get_entity_attachment_groups(subject_type, subject_id, zf_tuuid, zf_ouuid, subject_type2=subject_type2, subject_id2=subject_id2, viewed=viewed, visibilities=visibilities, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, validity_date=validity_date, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, name=name, id=id, continuation_token=continuation_token)

Gets all entity attachment groups for a specific subject.

Gets all entity attachment groups for a specific subject.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.entity_attachment_group_dto_paged_response_model_dto_api_response_dto import EntityAttachmentGroupDTOPagedResponseModelDTOApiResponseDTO
from attachments_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/att
# See configuration.py for a list of all supported configuration parameters.
configuration = attachments_client.Configuration(
    host = "https://api.zerofriction.co/api/att"
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
with attachments_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = attachments_client.EntityAttachmentGroupsApi(api_client)
    subject_type = 'subject_type_example' # str | The type of the subject entity.
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    subject_type2 = 'subject_type_example' # str |  (optional)
    subject_id2 = 'subject_id_example' # str |  (optional)
    viewed = True # bool |  (optional)
    visibilities = ['visibilities_example'] # List[str] |  (optional)
    created_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    created_end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    validity_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    order_by = 'order_by_example' # str | The order by clause for sorting the results. (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)

    try:
        # Gets all entity attachment groups for a specific subject.
        api_response = api_instance.get_entity_attachment_groups(subject_type, subject_id, zf_tuuid, zf_ouuid, subject_type2=subject_type2, subject_id2=subject_id2, viewed=viewed, visibilities=visibilities, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, validity_date=validity_date, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, name=name, id=id, continuation_token=continuation_token)
        print("The response of EntityAttachmentGroupsApi->get_entity_attachment_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentGroupsApi->get_entity_attachment_groups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_type** | **str**| The type of the subject entity. | 
 **subject_id** | **str**| The unique identifier of the subject entity. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **subject_type2** | **str**|  | [optional] 
 **subject_id2** | **str**|  | [optional] 
 **viewed** | **bool**|  | [optional] 
 **visibilities** | [**List[str]**](str.md)|  | [optional] 
 **created_start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **created_end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **validity_date** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **order_by** | **str**| The order by clause for sorting the results. | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **continuation_token** | **str**| The continuation token for pagination. | [optional] 

### Return type

[**EntityAttachmentGroupDTOPagedResponseModelDTOApiResponseDTO**](EntityAttachmentGroupDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_entity_attachment_groups_overview_count**
> EntityAttachmentGroupOverviewCountDTOApiResponseDTO get_entity_attachment_groups_overview_count(subject_type, subject_id, zf_tuuid, zf_ouuid, subject_type2=subject_type2, subject_id2=subject_id2, viewed=viewed, visibilities=visibilities, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, validity_date=validity_date, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Gets an overview count of entity attachment groups for a specific subject.

Gets an overview count of entity attachment groups for a specific subject.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.entity_attachment_group_overview_count_dto_api_response_dto import EntityAttachmentGroupOverviewCountDTOApiResponseDTO
from attachments_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/att
# See configuration.py for a list of all supported configuration parameters.
configuration = attachments_client.Configuration(
    host = "https://api.zerofriction.co/api/att"
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
with attachments_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = attachments_client.EntityAttachmentGroupsApi(api_client)
    subject_type = 'subject_type_example' # str | The type of the subject entity.
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    subject_type2 = 'subject_type_example' # str |  (optional)
    subject_id2 = 'subject_id_example' # str |  (optional)
    viewed = True # bool |  (optional)
    visibilities = ['visibilities_example'] # List[str] |  (optional)
    created_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    created_end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    validity_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Gets an overview count of entity attachment groups for a specific subject.
        api_response = api_instance.get_entity_attachment_groups_overview_count(subject_type, subject_id, zf_tuuid, zf_ouuid, subject_type2=subject_type2, subject_id2=subject_id2, viewed=viewed, visibilities=visibilities, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, validity_date=validity_date, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of EntityAttachmentGroupsApi->get_entity_attachment_groups_overview_count:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentGroupsApi->get_entity_attachment_groups_overview_count: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_type** | **str**| The type of the subject entity. | 
 **subject_id** | **str**| The unique identifier of the subject entity. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **subject_type2** | **str**|  | [optional] 
 **subject_id2** | **str**|  | [optional] 
 **viewed** | **bool**|  | [optional] 
 **visibilities** | [**List[str]**](str.md)|  | [optional] 
 **created_start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **created_end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **validity_date** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**EntityAttachmentGroupOverviewCountDTOApiResponseDTO**](EntityAttachmentGroupOverviewCountDTOApiResponseDTO.md)

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

# **post_entityattachmentgroups_bulk_delete**
> BooleanApiResponseDTO post_entityattachmentgroups_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_entity_attachment_group_request=bulk_delete_entity_attachment_group_request)

Bulk deletes entity attachment groups.

Bulk deletes entity attachment groups.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from attachments_client.models.bulk_delete_entity_attachment_group_request import BulkDeleteEntityAttachmentGroupRequest
from attachments_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/att
# See configuration.py for a list of all supported configuration parameters.
configuration = attachments_client.Configuration(
    host = "https://api.zerofriction.co/api/att"
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
with attachments_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = attachments_client.EntityAttachmentGroupsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_delete_entity_attachment_group_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"subjectType":"string","subjectId":"string","viewed":true,"visibilities":["string"],"createdStartDateTime":"string","createdEndDateTime":"string","validityDate":"string"},"quickFilter":"string"} # BulkDeleteEntityAttachmentGroupRequest | The request containing details of the entity attachment groups to delete. (optional)

    try:
        # Bulk deletes entity attachment groups.
        api_response = api_instance.post_entityattachmentgroups_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_entity_attachment_group_request=bulk_delete_entity_attachment_group_request)
        print("The response of EntityAttachmentGroupsApi->post_entityattachmentgroups_bulk_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentGroupsApi->post_entityattachmentgroups_bulk_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_delete_entity_attachment_group_request** | [**BulkDeleteEntityAttachmentGroupRequest**](BulkDeleteEntityAttachmentGroupRequest.md)| The request containing details of the entity attachment groups to delete. | [optional] 

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

# **update_entity_attachment_group**
> EntityAttachmentGroupDTOApiResponseDTO update_entity_attachment_group(subject_id, eauuid, subject_type, zf_tuuid, zf_ouuid, update_entity_attachment_group_request=update_entity_attachment_group_request)

Updates an existing entity attachment group.

Updates an existing entity attachment group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.entity_attachment_group_dto_api_response_dto import EntityAttachmentGroupDTOApiResponseDTO
from attachments_client.models.update_entity_attachment_group_request import UpdateEntityAttachmentGroupRequest
from attachments_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/att
# See configuration.py for a list of all supported configuration parameters.
configuration = attachments_client.Configuration(
    host = "https://api.zerofriction.co/api/att"
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
with attachments_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = attachments_client.EntityAttachmentGroupsApi(api_client)
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment group.
    subject_type = 'subject_type_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_entity_attachment_group_request = {"includeInWelcomeEmail":true,"visibility":{},"approvalRequired":true,"validFrom":"string","validUntil":"string"} # UpdateEntityAttachmentGroupRequest | The request containing details of the entity attachment group to update. (optional)

    try:
        # Updates an existing entity attachment group.
        api_response = api_instance.update_entity_attachment_group(subject_id, eauuid, subject_type, zf_tuuid, zf_ouuid, update_entity_attachment_group_request=update_entity_attachment_group_request)
        print("The response of EntityAttachmentGroupsApi->update_entity_attachment_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentGroupsApi->update_entity_attachment_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_id** | **str**| The unique identifier of the subject entity. | 
 **eauuid** | **str**| The unique identifier of the entity attachment group. | 
 **subject_type** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_entity_attachment_group_request** | [**UpdateEntityAttachmentGroupRequest**](UpdateEntityAttachmentGroupRequest.md)| The request containing details of the entity attachment group to update. | [optional] 

### Return type

[**EntityAttachmentGroupDTOApiResponseDTO**](EntityAttachmentGroupDTOApiResponseDTO.md)

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

