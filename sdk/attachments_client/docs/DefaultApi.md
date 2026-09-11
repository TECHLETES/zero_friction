# attachments_client.DefaultApi

All URIs are relative to *https://api.zerofriction.co/api/att*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_contract_entity_attachment**](DefaultApi.md#add_contract_entity_attachment) | **POST** /EntityAttachments/contract | Adds a new contract entity attachment.
[**add_customer_entity_attachment**](DefaultApi.md#add_customer_entity_attachment) | **POST** /EntityAttachments/customer | Adds a new customer entity attachment.
[**add_entity_attachment_group**](DefaultApi.md#add_entity_attachment_group) | **POST** /EntityAttachmentGroups/{subjectType}/{subjectId} | Adds a new entity attachment group.
[**delete_attachments_subjecttype_subjectid_auuid**](DefaultApi.md#delete_attachments_subjecttype_subjectid_auuid) | **DELETE** /Attachments/{subjectType}/{subjectId}/{auuid} | Deletes a specific attachment associated with a specific subject entity.
[**delete_entity_attachment**](DefaultApi.md#delete_entity_attachment) | **DELETE** /EntityAttachments/{eauuid} | Deletes a specific entity attachment.
[**delete_entity_attachment_group**](DefaultApi.md#delete_entity_attachment_group) | **DELETE** /EntityAttachmentGroups/{subjectType}/{subjectId}/{eauuid} | Deletes a specific entity attachment group.
[**download_entity_attachment_groups**](DefaultApi.md#download_entity_attachment_groups) | **POST** /EntityAttachmentGroups/{subjectType}/{subjectId}/download | Downloads attachments for a specific entity.
[**download_entity_attachment_groups_only_by_id**](DefaultApi.md#download_entity_attachment_groups_only_by_id) | **POST** /EntityAttachmentGroups/download | Downloads attachments by request only.
[**download_entity_attachments**](DefaultApi.md#download_entity_attachments) | **POST** /EntityAttachments/download | Downloads attachments for a specific entity.
[**filter_entity_attachments**](DefaultApi.md#filter_entity_attachments) | **POST** /EntityAttachments/filter | Gets all entity attachments. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
[**filter_overview_count_entity_attachments**](DefaultApi.md#filter_overview_count_entity_attachments) | **POST** /EntityAttachments/filter/overviewcount | Gets an overview count of entity attachments. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
[**get_attachments_subjecttype_subjectid**](DefaultApi.md#get_attachments_subjecttype_subjectid) | **GET** /Attachments/{subjectType}/{subjectId} | Retrieves attachments for a specific subject entity.
[**get_entity_attachment**](DefaultApi.md#get_entity_attachment) | **GET** /EntityAttachments/{eauuid} | Gets a specific entity attachment.
[**get_entity_attachment_group**](DefaultApi.md#get_entity_attachment_group) | **GET** /EntityAttachmentGroups/{subjectType}/{subjectId}/{eauuid} | Gets a specific entity attachment group.
[**get_entity_attachment_group_only_by_id**](DefaultApi.md#get_entity_attachment_group_only_by_id) | **GET** /EntityAttachmentGroups/{eauuid} | Gets a specific entity attachment group by ID only.
[**get_entity_attachment_groups**](DefaultApi.md#get_entity_attachment_groups) | **GET** /EntityAttachmentGroups/{subjectType}/{subjectId} | Gets all entity attachment groups for a specific subject.
[**get_entity_attachment_groups_overview_count**](DefaultApi.md#get_entity_attachment_groups_overview_count) | **GET** /EntityAttachmentGroups/{subjectType}/{subjectId}/overviewcount | Gets an overview count of entity attachment groups for a specific subject.
[**get_entity_attachments**](DefaultApi.md#get_entity_attachments) | **GET** /EntityAttachments | Gets all entity attachments.
[**get_entity_attachments_overview_count**](DefaultApi.md#get_entity_attachments_overview_count) | **GET** /EntityAttachments/overviewcount | Gets an overview count of entity attachments.
[**post_attachments_auuid**](DefaultApi.md#post_attachments_auuid) | **POST** /Attachments/{auuid} | Downloads an attachment file by its unique identifier.
[**post_attachments_downloadmergedpdf**](DefaultApi.md#post_attachments_downloadmergedpdf) | **POST** /Attachments/downloadmergedpdf | Downloads a merged PDF file from multiple PDF sources.
[**post_attachments_downloadzip**](DefaultApi.md#post_attachments_downloadzip) | **POST** /Attachments/downloadzip | Downloads multiple attachments as a ZIP archive.
[**post_attachments_subjecttype_subjectid**](DefaultApi.md#post_attachments_subjecttype_subjectid) | **POST** /Attachments/{subjectType}/{subjectId} | Uploads and attaches a file to a specific subject entity.
[**post_entityattachmentgroups_bulk_delete**](DefaultApi.md#post_entityattachmentgroups_bulk_delete) | **POST** /EntityAttachmentGroups/bulk/delete | Bulk deletes entity attachment groups.
[**post_entityattachments_bulk_delete**](DefaultApi.md#post_entityattachments_bulk_delete) | **POST** /EntityAttachments/bulk/delete | Bulk deletes entity attachments.
[**update_entity_attachment_group**](DefaultApi.md#update_entity_attachment_group) | **PATCH** /EntityAttachmentGroups/{subjectType}/{subjectId}/{eauuid} | Updates an existing entity attachment group.
[**update_entity_attachment_signed_date**](DefaultApi.md#update_entity_attachment_signed_date) | **PATCH** /EntityAttachments/{eauuid}/sign | Updates the signed date of a specific entity attachment.
[**update_entity_attachment_view_date**](DefaultApi.md#update_entity_attachment_view_date) | **PATCH** /EntityAttachments/{eauuid}/view | Updates the viewed date of a specific entity attachment.
[**update_entity_attachment_visibility**](DefaultApi.md#update_entity_attachment_visibility) | **PATCH** /EntityAttachments/{eauuid}/visibility | Updates the visibility of a specific entity attachment.


# **add_contract_entity_attachment**
> ApiResponseDTOOfEntityAttachmentDTO add_contract_entity_attachment(zf_tuuid, zf_ouuid)

Adds a new contract entity attachment.

Adds a new contract entity attachment.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_entity_attachment_dto import ApiResponseDTOOfEntityAttachmentDTO
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
    api_instance = attachments_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Adds a new contract entity attachment.
        api_response = api_instance.add_contract_entity_attachment(zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->add_contract_entity_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->add_contract_entity_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfEntityAttachmentDTO**](ApiResponseDTOOfEntityAttachmentDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_customer_entity_attachment**
> ApiResponseDTOOfEntityAttachmentDTO add_customer_entity_attachment(zf_tuuid, zf_ouuid)

Adds a new customer entity attachment.

Adds a new customer entity attachment.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_entity_attachment_dto import ApiResponseDTOOfEntityAttachmentDTO
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
    api_instance = attachments_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Adds a new customer entity attachment.
        api_response = api_instance.add_customer_entity_attachment(zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->add_customer_entity_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->add_customer_entity_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfEntityAttachmentDTO**](ApiResponseDTOOfEntityAttachmentDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_entity_attachment_group**
> ApiResponseDTOOfEntityAttachmentGroupDTO add_entity_attachment_group(subject_type, subject_id, zf_tuuid, zf_ouuid, entity_subject_display_name=entity_subject_display_name, include_in_welcome_email=include_in_welcome_email, visibility_name=visibility_name, visibility_id=visibility_id, approval_required=approval_required, valid_from=valid_from, valid_until=valid_until)

Adds a new entity attachment group.

Adds a new entity attachment group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_entity_attachment_group_dto import ApiResponseDTOOfEntityAttachmentGroupDTO
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
    api_instance = attachments_client.DefaultApi(api_client)
    subject_type = 'subject_type_example' # str | The type of the subject entity.
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    entity_subject_display_name = 'entity_subject_display_name_example' # str |  (optional)
    include_in_welcome_email = True # bool |  (optional)
    visibility_name = 'visibility_name_example' # str |  (optional)
    visibility_id = 56 # int |  (optional)
    approval_required = True # bool |  (optional)
    valid_from = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    valid_until = '2013-10-20T19:20:30+01:00' # datetime |  (optional)

    try:
        # Adds a new entity attachment group.
        api_response = api_instance.add_entity_attachment_group(subject_type, subject_id, zf_tuuid, zf_ouuid, entity_subject_display_name=entity_subject_display_name, include_in_welcome_email=include_in_welcome_email, visibility_name=visibility_name, visibility_id=visibility_id, approval_required=approval_required, valid_from=valid_from, valid_until=valid_until)
        print("The response of DefaultApi->add_entity_attachment_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->add_entity_attachment_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_type** | **str**| The type of the subject entity. |
 **subject_id** | **str**| The unique identifier of the subject entity. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **entity_subject_display_name** | **str**|  | [optional]
 **include_in_welcome_email** | **bool**|  | [optional]
 **visibility_name** | **str**|  | [optional]
 **visibility_id** | **int**|  | [optional]
 **approval_required** | **bool**|  | [optional]
 **valid_from** | **datetime**|  | [optional]
 **valid_until** | **datetime**|  | [optional]

### Return type

[**ApiResponseDTOOfEntityAttachmentGroupDTO**](ApiResponseDTOOfEntityAttachmentGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_attachments_subjecttype_subjectid_auuid**
> ApiResponseDTOOfboolean delete_attachments_subjecttype_subjectid_auuid(subject_type, subject_id, auuid, zf_tuuid, zf_ouuid)

Deletes a specific attachment associated with a specific subject entity.

Deletes a specific attachment associated with a specific subject entity.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = attachments_client.DefaultApi(api_client)
    subject_type = 'subject_type_example' # str | The type of subject entity from which the attachment will be deleted.
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    auuid = 'auuid_example' # str | The attachment unique identifier to be deleted.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Deletes a specific attachment associated with a specific subject entity.
        api_response = api_instance.delete_attachments_subjecttype_subjectid_auuid(subject_type, subject_id, auuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->delete_attachments_subjecttype_subjectid_auuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_attachments_subjecttype_subjectid_auuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_type** | **str**| The type of subject entity from which the attachment will be deleted. |
 **subject_id** | **str**| The unique identifier of the subject entity. |
 **auuid** | **str**| The attachment unique identifier to be deleted. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | If the attachment was successfully deleted. |  -  |
**400** | If the deletion request is invalid. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_entity_attachment**
> ApiResponseDTOOfboolean delete_entity_attachment(eauuid, zf_tuuid, zf_ouuid, delete_entity_attachment_request=delete_entity_attachment_request)

Deletes a specific entity attachment.

Deletes a specific entity attachment.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from attachments_client.models.delete_entity_attachment_request import DeleteEntityAttachmentRequest
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
    api_instance = attachments_client.DefaultApi(api_client)
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    delete_entity_attachment_request = {"customerId":"string"} # DeleteEntityAttachmentRequest | A token to monitor for cancellation requests. (optional)

    try:
        # Deletes a specific entity attachment.
        api_response = api_instance.delete_entity_attachment(eauuid, zf_tuuid, zf_ouuid, delete_entity_attachment_request=delete_entity_attachment_request)
        print("The response of DefaultApi->delete_entity_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_entity_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eauuid** | **str**| The unique identifier of the entity attachment. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **delete_entity_attachment_request** | [**DeleteEntityAttachmentRequest**](DeleteEntityAttachmentRequest.md)| A token to monitor for cancellation requests. | [optional]

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

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

# **delete_entity_attachment_group**
> ApiResponseDTOOfboolean delete_entity_attachment_group(subject_type, subject_id, eauuid, zf_tuuid, zf_ouuid)

Deletes a specific entity attachment group.

Deletes a specific entity attachment group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = attachments_client.DefaultApi(api_client)
    subject_type = 'subject_type_example' # str | The type of the subject entity.
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment group.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Deletes a specific entity attachment group.
        api_response = api_instance.delete_entity_attachment_group(subject_type, subject_id, eauuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->delete_entity_attachment_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_entity_attachment_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_type** | **str**| The type of the subject entity. |
 **subject_id** | **str**| The unique identifier of the subject entity. |
 **eauuid** | **str**| The unique identifier of the entity attachment group. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_entity_attachment_groups**
> FileStreamResult download_entity_attachment_groups(subject_type, subject_id, zf_tuuid, zf_ouuid, download_entity_attachment_groups_request=download_entity_attachment_groups_request)

Downloads attachments for a specific entity.

Downloads attachments for a specific entity.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.download_entity_attachment_groups_request import DownloadEntityAttachmentGroupsRequest
from attachments_client.models.file_stream_result import FileStreamResult
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
    api_instance = attachments_client.DefaultApi(api_client)
    subject_type = 'subject_type_example' # str | The type of the subject entity.
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    download_entity_attachment_groups_request = {"entityAttachmentGroupIds":["string"],"culture":"string"} # DownloadEntityAttachmentGroupsRequest | A token to monitor for cancellation requests. (optional)

    try:
        # Downloads attachments for a specific entity.
        api_response = api_instance.download_entity_attachment_groups(subject_type, subject_id, zf_tuuid, zf_ouuid, download_entity_attachment_groups_request=download_entity_attachment_groups_request)
        print("The response of DefaultApi->download_entity_attachment_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->download_entity_attachment_groups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_type** | **str**| The type of the subject entity. |
 **subject_id** | **str**| The unique identifier of the subject entity. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **download_entity_attachment_groups_request** | [**DownloadEntityAttachmentGroupsRequest**](DownloadEntityAttachmentGroupsRequest.md)| A token to monitor for cancellation requests. | [optional]

### Return type

[**FileStreamResult**](FileStreamResult.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_entity_attachment_groups_only_by_id**
> FileStreamResult download_entity_attachment_groups_only_by_id(zf_tuuid, zf_ouuid, download_entity_attachment_groups_request=download_entity_attachment_groups_request)

Downloads attachments by request only.

Downloads attachments by request only.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.download_entity_attachment_groups_request import DownloadEntityAttachmentGroupsRequest
from attachments_client.models.file_stream_result import FileStreamResult
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
    api_instance = attachments_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    download_entity_attachment_groups_request = {"entityAttachmentGroupIds":["string"],"culture":"string"} # DownloadEntityAttachmentGroupsRequest | A token to monitor for cancellation requests. (optional)

    try:
        # Downloads attachments by request only.
        api_response = api_instance.download_entity_attachment_groups_only_by_id(zf_tuuid, zf_ouuid, download_entity_attachment_groups_request=download_entity_attachment_groups_request)
        print("The response of DefaultApi->download_entity_attachment_groups_only_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->download_entity_attachment_groups_only_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **download_entity_attachment_groups_request** | [**DownloadEntityAttachmentGroupsRequest**](DownloadEntityAttachmentGroupsRequest.md)| A token to monitor for cancellation requests. | [optional]

### Return type

[**FileStreamResult**](FileStreamResult.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_entity_attachments**
> FileStreamResult download_entity_attachments(zf_tuuid, zf_ouuid, download_entity_attachments_request=download_entity_attachments_request)

Downloads attachments for a specific entity.

Downloads attachments for a specific entity.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.download_entity_attachments_request import DownloadEntityAttachmentsRequest
from attachments_client.models.file_stream_result import FileStreamResult
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
    api_instance = attachments_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    download_entity_attachments_request = {"entityAttachmentIds":["string"],"customerId":"string","culture":"string"} # DownloadEntityAttachmentsRequest | A token to monitor for cancellation requests. (optional)

    try:
        # Downloads attachments for a specific entity.
        api_response = api_instance.download_entity_attachments(zf_tuuid, zf_ouuid, download_entity_attachments_request=download_entity_attachments_request)
        print("The response of DefaultApi->download_entity_attachments:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->download_entity_attachments: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **download_entity_attachments_request** | [**DownloadEntityAttachmentsRequest**](DownloadEntityAttachmentsRequest.md)| A token to monitor for cancellation requests. | [optional]

### Return type

[**FileStreamResult**](FileStreamResult.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filter_entity_attachments**
> ApiResponseDTOOfPagedResponseModelDTOOfEntityAttachmentDTO filter_entity_attachments(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_entity_attachment_query_params=get_entity_attachment_query_params)

Gets all entity attachments. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

Gets all entity attachments.
This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_paged_response_model_dtoof_entity_attachment_dto import ApiResponseDTOOfPagedResponseModelDTOOfEntityAttachmentDTO
from attachments_client.models.get_entity_attachment_query_params import GetEntityAttachmentQueryParams
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
    api_instance = attachments_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | The order by clause for sorting the results. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)
    get_entity_attachment_query_params = {"customerId":"string","contractId":"string","viewed":true,"visibilities":["string"],"createdStartDateTime":"string","createdEndDateTime":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetEntityAttachmentQueryParams | A token to monitor for cancellation requests. (optional)

    try:
        # Gets all entity attachments. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
        api_response = api_instance.filter_entity_attachments(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_entity_attachment_query_params=get_entity_attachment_query_params)
        print("The response of DefaultApi->filter_entity_attachments:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->filter_entity_attachments: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **name** | **str**|  | [optional]
 **id** | **int**|  | [optional]
 **order_by** | **str**| The order by clause for sorting the results. | [optional]
 **continuation_token** | **str**| The continuation token for pagination. | [optional]
 **get_entity_attachment_query_params** | [**GetEntityAttachmentQueryParams**](GetEntityAttachmentQueryParams.md)| A token to monitor for cancellation requests. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfEntityAttachmentDTO**](ApiResponseDTOOfPagedResponseModelDTOOfEntityAttachmentDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response containing the entity attachments. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filter_overview_count_entity_attachments**
> ApiResponseDTOOfEntityAttachmentOverviewCountDTO filter_overview_count_entity_attachments(zf_tuuid, zf_ouuid, get_entity_attachment_query_params=get_entity_attachment_query_params)

Gets an overview count of entity attachments. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

Gets an overview count of entity attachments.
This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_entity_attachment_overview_count_dto import ApiResponseDTOOfEntityAttachmentOverviewCountDTO
from attachments_client.models.get_entity_attachment_query_params import GetEntityAttachmentQueryParams
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
    api_instance = attachments_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    get_entity_attachment_query_params = {"customerId":"string","contractId":"string","viewed":true,"visibilities":["string"],"createdStartDateTime":"string","createdEndDateTime":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetEntityAttachmentQueryParams | A token to monitor for cancellation requests. (optional)

    try:
        # Gets an overview count of entity attachments. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
        api_response = api_instance.filter_overview_count_entity_attachments(zf_tuuid, zf_ouuid, get_entity_attachment_query_params=get_entity_attachment_query_params)
        print("The response of DefaultApi->filter_overview_count_entity_attachments:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->filter_overview_count_entity_attachments: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **get_entity_attachment_query_params** | [**GetEntityAttachmentQueryParams**](GetEntityAttachmentQueryParams.md)| A token to monitor for cancellation requests. | [optional]

### Return type

[**ApiResponseDTOOfEntityAttachmentOverviewCountDTO**](ApiResponseDTOOfEntityAttachmentOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | An overview count of the entity attachments. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_attachments_subjecttype_subjectid**
> ApiResponseDTOOfPagedResponseModelDTOOfAttachmentDTO get_attachments_subjecttype_subjectid(subject_type, subject_id, zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token)

Retrieves attachments for a specific subject entity.

Retrieves attachments for a specific subject entity.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_paged_response_model_dtoof_attachment_dto import ApiResponseDTOOfPagedResponseModelDTOOfAttachmentDTO
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
    api_instance = attachments_client.DefaultApi(api_client)
    subject_type = 'subject_type_example' # str | The type of subject entity.
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    order_by = 'order_by_example' # str | The property by which to order the results. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination of results. (optional)

    try:
        # Retrieves attachments for a specific subject entity.
        api_response = api_instance.get_attachments_subjecttype_subjectid(subject_type, subject_id, zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token)
        print("The response of DefaultApi->get_attachments_subjecttype_subjectid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_attachments_subjecttype_subjectid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_type** | **str**| The type of subject entity. |
 **subject_id** | **str**| The unique identifier of the subject entity. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **order_by** | **str**| The property by which to order the results. | [optional]
 **continuation_token** | **str**| Token for pagination of results. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfAttachmentDTO**](ApiResponseDTOOfPagedResponseModelDTOOfAttachmentDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the paged collection of attachments. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entity_attachment**
> ApiResponseDTOOfEntityAttachmentDTO get_entity_attachment(eauuid, zf_tuuid, zf_ouuid)

Gets a specific entity attachment.

Gets a specific entity attachment.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_entity_attachment_dto import ApiResponseDTOOfEntityAttachmentDTO
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
    api_instance = attachments_client.DefaultApi(api_client)
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Gets a specific entity attachment.
        api_response = api_instance.get_entity_attachment(eauuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_entity_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_entity_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eauuid** | **str**| The unique identifier of the entity attachment. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfEntityAttachmentDTO**](ApiResponseDTOOfEntityAttachmentDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entity_attachment_group**
> ApiResponseDTOOfEntityAttachmentGroupDTO get_entity_attachment_group(subject_type, subject_id, eauuid, zf_tuuid, zf_ouuid)

Gets a specific entity attachment group.

Gets a specific entity attachment group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_entity_attachment_group_dto import ApiResponseDTOOfEntityAttachmentGroupDTO
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
    api_instance = attachments_client.DefaultApi(api_client)
    subject_type = 'subject_type_example' # str | The type of the subject entity.
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment group.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Gets a specific entity attachment group.
        api_response = api_instance.get_entity_attachment_group(subject_type, subject_id, eauuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_entity_attachment_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_entity_attachment_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_type** | **str**| The type of the subject entity. |
 **subject_id** | **str**| The unique identifier of the subject entity. |
 **eauuid** | **str**| The unique identifier of the entity attachment group. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfEntityAttachmentGroupDTO**](ApiResponseDTOOfEntityAttachmentGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entity_attachment_group_only_by_id**
> ApiResponseDTOOfEntityAttachmentGroupDTO get_entity_attachment_group_only_by_id(eauuid, zf_tuuid, zf_ouuid)

Gets a specific entity attachment group by ID only.

Gets a specific entity attachment group by ID only.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_entity_attachment_group_dto import ApiResponseDTOOfEntityAttachmentGroupDTO
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
    api_instance = attachments_client.DefaultApi(api_client)
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment group.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Gets a specific entity attachment group by ID only.
        api_response = api_instance.get_entity_attachment_group_only_by_id(eauuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_entity_attachment_group_only_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_entity_attachment_group_only_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eauuid** | **str**| The unique identifier of the entity attachment group. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfEntityAttachmentGroupDTO**](ApiResponseDTOOfEntityAttachmentGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entity_attachment_groups**
> ApiResponseDTOOfPagedResponseModelDTOOfEntityAttachmentGroupDTO get_entity_attachment_groups(subject_type, subject_id, zf_tuuid, zf_ouuid, subject_type2=subject_type2, subject_id2=subject_id2, viewed=viewed, visibilities=visibilities, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, validity_date=validity_date, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, order_by=order_by, name=name, id=id, continuation_token=continuation_token)

Gets all entity attachment groups for a specific subject.

Gets all entity attachment groups for a specific subject.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_paged_response_model_dtoof_entity_attachment_group_dto import ApiResponseDTOOfPagedResponseModelDTOOfEntityAttachmentGroupDTO
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
    api_instance = attachments_client.DefaultApi(api_client)
    subject_type = 'subject_type_example' # str | The type of the subject entity.
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    subject_type2 = 'subject_type_example' # str |  (optional)
    subject_id2 = 'subject_id_example' # str |  (optional)
    viewed = True # bool |  (optional)
    visibilities = ['visibilities_example'] # List[str] |  (optional)
    created_start_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    created_end_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    validity_date = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)
    order_by = 'order_by_example' # str | The order by clause for sorting the results. (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)

    try:
        # Gets all entity attachment groups for a specific subject.
        api_response = api_instance.get_entity_attachment_groups(subject_type, subject_id, zf_tuuid, zf_ouuid, subject_type2=subject_type2, subject_id2=subject_id2, viewed=viewed, visibilities=visibilities, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, validity_date=validity_date, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, order_by=order_by, name=name, id=id, continuation_token=continuation_token)
        print("The response of DefaultApi->get_entity_attachment_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_entity_attachment_groups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_type** | **str**| The type of the subject entity. |
 **subject_id** | **str**| The unique identifier of the subject entity. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **subject_type2** | **str**|  | [optional]
 **subject_id2** | **str**|  | [optional]
 **viewed** | **bool**|  | [optional]
 **visibilities** | [**List[str]**](str.md)|  | [optional]
 **created_start_date_time** | **datetime**|  | [optional]
 **created_end_date_time** | **datetime**|  | [optional]
 **validity_date** | **datetime**|  | [optional]
 **flex_search** | **str**|  | [optional]
 **include_only_ids** | [**List[str]**](str.md)|  | [optional]
 **exclude_ids** | [**List[str]**](str.md)|  | [optional]
 **page_size** | **int**|  | [optional]
 **order_by** | **str**| The order by clause for sorting the results. | [optional]
 **name** | **str**|  | [optional]
 **id** | **int**|  | [optional]
 **continuation_token** | **str**| The continuation token for pagination. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfEntityAttachmentGroupDTO**](ApiResponseDTOOfPagedResponseModelDTOOfEntityAttachmentGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response containing the entity attachment groups. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entity_attachment_groups_overview_count**
> ApiResponseDTOOfEntityAttachmentGroupOverviewCountDTO get_entity_attachment_groups_overview_count(subject_type, subject_id, zf_tuuid, zf_ouuid, subject_type2=subject_type2, subject_id2=subject_id2, viewed=viewed, visibilities=visibilities, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, validity_date=validity_date, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)

Gets an overview count of entity attachment groups for a specific subject.

Gets an overview count of entity attachment groups for a specific subject.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_entity_attachment_group_overview_count_dto import ApiResponseDTOOfEntityAttachmentGroupOverviewCountDTO
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
    api_instance = attachments_client.DefaultApi(api_client)
    subject_type = 'subject_type_example' # str | The type of the subject entity.
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    subject_type2 = 'subject_type_example' # str |  (optional)
    subject_id2 = 'subject_id_example' # str |  (optional)
    viewed = True # bool |  (optional)
    visibilities = ['visibilities_example'] # List[str] |  (optional)
    created_start_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    created_end_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    validity_date = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)

    try:
        # Gets an overview count of entity attachment groups for a specific subject.
        api_response = api_instance.get_entity_attachment_groups_overview_count(subject_type, subject_id, zf_tuuid, zf_ouuid, subject_type2=subject_type2, subject_id2=subject_id2, viewed=viewed, visibilities=visibilities, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, validity_date=validity_date, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)
        print("The response of DefaultApi->get_entity_attachment_groups_overview_count:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_entity_attachment_groups_overview_count: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_type** | **str**| The type of the subject entity. |
 **subject_id** | **str**| The unique identifier of the subject entity. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **subject_type2** | **str**|  | [optional]
 **subject_id2** | **str**|  | [optional]
 **viewed** | **bool**|  | [optional]
 **visibilities** | [**List[str]**](str.md)|  | [optional]
 **created_start_date_time** | **datetime**|  | [optional]
 **created_end_date_time** | **datetime**|  | [optional]
 **validity_date** | **datetime**|  | [optional]
 **flex_search** | **str**|  | [optional]
 **include_only_ids** | [**List[str]**](str.md)|  | [optional]
 **exclude_ids** | [**List[str]**](str.md)|  | [optional]
 **page_size** | **int**|  | [optional]

### Return type

[**ApiResponseDTOOfEntityAttachmentGroupOverviewCountDTO**](ApiResponseDTOOfEntityAttachmentGroupOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | An overview count of the entity attachment groups. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entity_attachments**
> ApiResponseDTOOfPagedResponseModelDTOOfEntityAttachmentDTO get_entity_attachments(zf_tuuid, zf_ouuid, customer_id=customer_id, contract_id=contract_id, viewed=viewed, visibilities=visibilities, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

Gets all entity attachments.

Gets all entity attachments.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_paged_response_model_dtoof_entity_attachment_dto import ApiResponseDTOOfPagedResponseModelDTOOfEntityAttachmentDTO
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
    api_instance = attachments_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    customer_id = 'customer_id_example' # str |  (optional)
    contract_id = 'contract_id_example' # str |  (optional)
    viewed = True # bool |  (optional)
    visibilities = ['visibilities_example'] # List[str] |  (optional)
    created_start_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    created_end_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | The order by clause for sorting the results. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)

    try:
        # Gets all entity attachments.
        api_response = api_instance.get_entity_attachments(zf_tuuid, zf_ouuid, customer_id=customer_id, contract_id=contract_id, viewed=viewed, visibilities=visibilities, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of DefaultApi->get_entity_attachments:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_entity_attachments: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **customer_id** | **str**|  | [optional]
 **contract_id** | **str**|  | [optional]
 **viewed** | **bool**|  | [optional]
 **visibilities** | [**List[str]**](str.md)|  | [optional]
 **created_start_date_time** | **datetime**|  | [optional]
 **created_end_date_time** | **datetime**|  | [optional]
 **flex_search** | **str**|  | [optional]
 **include_only_ids** | [**List[str]**](str.md)|  | [optional]
 **exclude_ids** | [**List[str]**](str.md)|  | [optional]
 **page_size** | **int**|  | [optional]
 **name** | **str**|  | [optional]
 **id** | **int**|  | [optional]
 **order_by** | **str**| The order by clause for sorting the results. | [optional]
 **continuation_token** | **str**| The continuation token for pagination. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfEntityAttachmentDTO**](ApiResponseDTOOfPagedResponseModelDTOOfEntityAttachmentDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response containing the entity attachments. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_entity_attachments_overview_count**
> ApiResponseDTOOfEntityAttachmentOverviewCountDTO get_entity_attachments_overview_count(zf_tuuid, zf_ouuid, customer_id=customer_id, contract_id=contract_id, viewed=viewed, visibilities=visibilities, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)

Gets an overview count of entity attachments.

Gets an overview count of entity attachments.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_entity_attachment_overview_count_dto import ApiResponseDTOOfEntityAttachmentOverviewCountDTO
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
    api_instance = attachments_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    customer_id = 'customer_id_example' # str |  (optional)
    contract_id = 'contract_id_example' # str |  (optional)
    viewed = True # bool |  (optional)
    visibilities = ['visibilities_example'] # List[str] |  (optional)
    created_start_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    created_end_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)

    try:
        # Gets an overview count of entity attachments.
        api_response = api_instance.get_entity_attachments_overview_count(zf_tuuid, zf_ouuid, customer_id=customer_id, contract_id=contract_id, viewed=viewed, visibilities=visibilities, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)
        print("The response of DefaultApi->get_entity_attachments_overview_count:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_entity_attachments_overview_count: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **customer_id** | **str**|  | [optional]
 **contract_id** | **str**|  | [optional]
 **viewed** | **bool**|  | [optional]
 **visibilities** | [**List[str]**](str.md)|  | [optional]
 **created_start_date_time** | **datetime**|  | [optional]
 **created_end_date_time** | **datetime**|  | [optional]
 **flex_search** | **str**|  | [optional]
 **include_only_ids** | [**List[str]**](str.md)|  | [optional]
 **exclude_ids** | [**List[str]**](str.md)|  | [optional]
 **page_size** | **int**|  | [optional]

### Return type

[**ApiResponseDTOOfEntityAttachmentOverviewCountDTO**](ApiResponseDTOOfEntityAttachmentOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | An overview count of the entity attachments. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_attachments_auuid**
> FileStreamResult post_attachments_auuid(auuid, zf_tuuid, zf_ouuid)

Downloads an attachment file by its unique identifier.

Downloads an attachment file by its unique identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.file_stream_result import FileStreamResult
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
    api_instance = attachments_client.DefaultApi(api_client)
    auuid = 'auuid_example' # str | The attachment unique identifier.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Downloads an attachment file by its unique identifier.
        api_response = api_instance.post_attachments_auuid(auuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->post_attachments_auuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_attachments_auuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auuid** | **str**| The attachment unique identifier. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**FileStreamResult**](FileStreamResult.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | If the attachment is not found. |  -  |
**200** | Returns the attachment file as a stream. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_attachments_downloadmergedpdf**
> FileStreamResult post_attachments_downloadmergedpdf(zf_tuuid, zf_ouuid, merge_pdf_request=merge_pdf_request)

Downloads a merged PDF file from multiple PDF sources.

Downloads a merged PDF file from multiple PDF sources.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.file_stream_result import FileStreamResult
from attachments_client.models.merge_pdf_request import MergePdfRequest
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
    api_instance = attachments_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    merge_pdf_request = {"attachmentIds":["string"],"resultingFileName":"string"} # MergePdfRequest | A token to monitor for cancellation requests. (optional)

    try:
        # Downloads a merged PDF file from multiple PDF sources.
        api_response = api_instance.post_attachments_downloadmergedpdf(zf_tuuid, zf_ouuid, merge_pdf_request=merge_pdf_request)
        print("The response of DefaultApi->post_attachments_downloadmergedpdf:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_attachments_downloadmergedpdf: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **merge_pdf_request** | [**MergePdfRequest**](MergePdfRequest.md)| A token to monitor for cancellation requests. | [optional]

### Return type

[**FileStreamResult**](FileStreamResult.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the merged PDF file as a stream. |  -  |
**400** | If the merge request is invalid. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_attachments_downloadzip**
> FileStreamResult post_attachments_downloadzip(zf_tuuid, zf_ouuid, download_attachments_request=download_attachments_request)

Downloads multiple attachments as a ZIP archive.

Downloads multiple attachments as a ZIP archive.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.download_attachments_request import DownloadAttachmentsRequest
from attachments_client.models.file_stream_result import FileStreamResult
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
    api_instance = attachments_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    download_attachments_request = {"attachmentIds":["string"]} # DownloadAttachmentsRequest | A token to monitor for cancellation requests. (optional)

    try:
        # Downloads multiple attachments as a ZIP archive.
        api_response = api_instance.post_attachments_downloadzip(zf_tuuid, zf_ouuid, download_attachments_request=download_attachments_request)
        print("The response of DefaultApi->post_attachments_downloadzip:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_attachments_downloadzip: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **download_attachments_request** | [**DownloadAttachmentsRequest**](DownloadAttachmentsRequest.md)| A token to monitor for cancellation requests. | [optional]

### Return type

[**FileStreamResult**](FileStreamResult.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the ZIP file as a stream. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_attachments_subjecttype_subjectid**
> ApiResponseDTOOfAttachmentDTO post_attachments_subjecttype_subjectid(subject_type, subject_id, zf_tuuid, zf_ouuid)

Uploads and attaches a file to a specific subject entity.

Uploads and attaches a file to a specific subject entity.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_attachment_dto import ApiResponseDTOOfAttachmentDTO
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
    api_instance = attachments_client.DefaultApi(api_client)
    subject_type = 'subject_type_example' # str | The type of subject entity to which the file will be attached.
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Uploads and attaches a file to a specific subject entity.
        api_response = api_instance.post_attachments_subjecttype_subjectid(subject_type, subject_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->post_attachments_subjecttype_subjectid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_attachments_subjecttype_subjectid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_type** | **str**| The type of subject entity to which the file will be attached. |
 **subject_id** | **str**| The unique identifier of the subject entity. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfAttachmentDTO**](ApiResponseDTOOfAttachmentDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Returns the newly created attachment details. |  -  |
**400** | If the attachment request is invalid. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_entityattachmentgroups_bulk_delete**
> ApiResponseDTOOfboolean post_entityattachmentgroups_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_entity_attachment_group_request=bulk_delete_entity_attachment_group_request)

Bulk deletes entity attachment groups.

Bulk deletes entity attachment groups.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = attachments_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_delete_entity_attachment_group_request = {"onlyValidate":true,"queryParams":{"subjectType":"string","subjectId":"string","viewed":true,"visibilities":["string"],"createdStartDateTime":"string","createdEndDateTime":"string","validityDate":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkDeleteEntityAttachmentGroupRequest | A token to monitor for cancellation requests. (optional)

    try:
        # Bulk deletes entity attachment groups.
        api_response = api_instance.post_entityattachmentgroups_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_entity_attachment_group_request=bulk_delete_entity_attachment_group_request)
        print("The response of DefaultApi->post_entityattachmentgroups_bulk_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_entityattachmentgroups_bulk_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **bulk_delete_entity_attachment_group_request** | [**BulkDeleteEntityAttachmentGroupRequest**](BulkDeleteEntityAttachmentGroupRequest.md)| A token to monitor for cancellation requests. | [optional]

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

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
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_entityattachments_bulk_delete**
> ApiResponseDTOOfboolean post_entityattachments_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_entity_attachment_request=bulk_delete_entity_attachment_request)

Bulk deletes entity attachments.

Bulk deletes entity attachments.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from attachments_client.models.bulk_delete_entity_attachment_request import BulkDeleteEntityAttachmentRequest
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
    api_instance = attachments_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_delete_entity_attachment_request = {"onlyValidate":true,"queryParams":{"customerId":"string","contractId":"string","viewed":true,"visibilities":["string"],"createdStartDateTime":"string","createdEndDateTime":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","customerId":"string"} # BulkDeleteEntityAttachmentRequest | A token to monitor for cancellation requests. (optional)

    try:
        # Bulk deletes entity attachments.
        api_response = api_instance.post_entityattachments_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_entity_attachment_request=bulk_delete_entity_attachment_request)
        print("The response of DefaultApi->post_entityattachments_bulk_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_entityattachments_bulk_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **bulk_delete_entity_attachment_request** | [**BulkDeleteEntityAttachmentRequest**](BulkDeleteEntityAttachmentRequest.md)| A token to monitor for cancellation requests. | [optional]

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

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
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_entity_attachment_group**
> ApiResponseDTOOfEntityAttachmentGroupDTO update_entity_attachment_group(subject_type, subject_id, eauuid, zf_tuuid, zf_ouuid, update_entity_attachment_group_request=update_entity_attachment_group_request)

Updates an existing entity attachment group.

Updates an existing entity attachment group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_entity_attachment_group_dto import ApiResponseDTOOfEntityAttachmentGroupDTO
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
    api_instance = attachments_client.DefaultApi(api_client)
    subject_type = 'subject_type_example' # str | The type of the subject entity.
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment group.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_entity_attachment_group_request = {"includeInWelcomeEmail":true,"visibility":"internal","approvalRequired":true,"validFrom":"string","validUntil":"string"} # UpdateEntityAttachmentGroupRequest | A token to monitor for cancellation requests. (optional)

    try:
        # Updates an existing entity attachment group.
        api_response = api_instance.update_entity_attachment_group(subject_type, subject_id, eauuid, zf_tuuid, zf_ouuid, update_entity_attachment_group_request=update_entity_attachment_group_request)
        print("The response of DefaultApi->update_entity_attachment_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->update_entity_attachment_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_type** | **str**| The type of the subject entity. |
 **subject_id** | **str**| The unique identifier of the subject entity. |
 **eauuid** | **str**| The unique identifier of the entity attachment group. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **update_entity_attachment_group_request** | [**UpdateEntityAttachmentGroupRequest**](UpdateEntityAttachmentGroupRequest.md)| A token to monitor for cancellation requests. | [optional]

### Return type

[**ApiResponseDTOOfEntityAttachmentGroupDTO**](ApiResponseDTOOfEntityAttachmentGroupDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_entity_attachment_signed_date**
> ApiResponseDTOOfEntityAttachmentDTO update_entity_attachment_signed_date(eauuid, zf_tuuid, zf_ouuid, update_entity_attachment_signed_date_request=update_entity_attachment_signed_date_request)

Updates the signed date of a specific entity attachment.

Updates the signed date of a specific entity attachment.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_entity_attachment_dto import ApiResponseDTOOfEntityAttachmentDTO
from attachments_client.models.update_entity_attachment_signed_date_request import UpdateEntityAttachmentSignedDateRequest
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
    api_instance = attachments_client.DefaultApi(api_client)
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_entity_attachment_signed_date_request = {"customerId":"string","signedDateTime":"string","signedCulture":"string","signedLocalisedFileName":"string"} # UpdateEntityAttachmentSignedDateRequest | A token to monitor for cancellation requests. (optional)

    try:
        # Updates the signed date of a specific entity attachment.
        api_response = api_instance.update_entity_attachment_signed_date(eauuid, zf_tuuid, zf_ouuid, update_entity_attachment_signed_date_request=update_entity_attachment_signed_date_request)
        print("The response of DefaultApi->update_entity_attachment_signed_date:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->update_entity_attachment_signed_date: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eauuid** | **str**| The unique identifier of the entity attachment. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **update_entity_attachment_signed_date_request** | [**UpdateEntityAttachmentSignedDateRequest**](UpdateEntityAttachmentSignedDateRequest.md)| A token to monitor for cancellation requests. | [optional]

### Return type

[**ApiResponseDTOOfEntityAttachmentDTO**](ApiResponseDTOOfEntityAttachmentDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_entity_attachment_view_date**
> ApiResponseDTOOfEntityAttachmentDTO update_entity_attachment_view_date(eauuid, zf_tuuid, zf_ouuid, update_entity_attachment_viewed_date_request=update_entity_attachment_viewed_date_request)

Updates the viewed date of a specific entity attachment.

Updates the viewed date of a specific entity attachment.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_entity_attachment_dto import ApiResponseDTOOfEntityAttachmentDTO
from attachments_client.models.update_entity_attachment_viewed_date_request import UpdateEntityAttachmentViewedDateRequest
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
    api_instance = attachments_client.DefaultApi(api_client)
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_entity_attachment_viewed_date_request = {"customerId":"string","viewedDateTime":"string"} # UpdateEntityAttachmentViewedDateRequest | A token to monitor for cancellation requests. (optional)

    try:
        # Updates the viewed date of a specific entity attachment.
        api_response = api_instance.update_entity_attachment_view_date(eauuid, zf_tuuid, zf_ouuid, update_entity_attachment_viewed_date_request=update_entity_attachment_viewed_date_request)
        print("The response of DefaultApi->update_entity_attachment_view_date:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->update_entity_attachment_view_date: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eauuid** | **str**| The unique identifier of the entity attachment. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **update_entity_attachment_viewed_date_request** | [**UpdateEntityAttachmentViewedDateRequest**](UpdateEntityAttachmentViewedDateRequest.md)| A token to monitor for cancellation requests. | [optional]

### Return type

[**ApiResponseDTOOfEntityAttachmentDTO**](ApiResponseDTOOfEntityAttachmentDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_entity_attachment_visibility**
> ApiResponseDTOOfEntityAttachmentDTO update_entity_attachment_visibility(eauuid, zf_tuuid, zf_ouuid, update_entity_attachment_visibility_request=update_entity_attachment_visibility_request)

Updates the visibility of a specific entity attachment.

Updates the visibility of a specific entity attachment.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.api_response_dtoof_entity_attachment_dto import ApiResponseDTOOfEntityAttachmentDTO
from attachments_client.models.update_entity_attachment_visibility_request import UpdateEntityAttachmentVisibilityRequest
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
    api_instance = attachments_client.DefaultApi(api_client)
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_entity_attachment_visibility_request = {"customerId":"string","visibility":"internal"} # UpdateEntityAttachmentVisibilityRequest | A token to monitor for cancellation requests. (optional)

    try:
        # Updates the visibility of a specific entity attachment.
        api_response = api_instance.update_entity_attachment_visibility(eauuid, zf_tuuid, zf_ouuid, update_entity_attachment_visibility_request=update_entity_attachment_visibility_request)
        print("The response of DefaultApi->update_entity_attachment_visibility:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->update_entity_attachment_visibility: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eauuid** | **str**| The unique identifier of the entity attachment. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **update_entity_attachment_visibility_request** | [**UpdateEntityAttachmentVisibilityRequest**](UpdateEntityAttachmentVisibilityRequest.md)| A token to monitor for cancellation requests. | [optional]

### Return type

[**ApiResponseDTOOfEntityAttachmentDTO**](ApiResponseDTOOfEntityAttachmentDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
