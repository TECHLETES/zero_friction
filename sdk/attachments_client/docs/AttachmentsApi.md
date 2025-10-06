# attachments_client.AttachmentsApi

All URIs are relative to *https://api.zerofriction.co/api/att*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_attachments_subjecttype_subjectid_auuid**](AttachmentsApi.md#delete_attachments_subjecttype_subjectid_auuid) | **DELETE** /Attachments/{subjectType}/{subjectId}/{auuid} | Deletes a specific attachment associated with a specific subject entity.
[**get_attachments_subjecttype_subjectid**](AttachmentsApi.md#get_attachments_subjecttype_subjectid) | **GET** /Attachments/{subjectType}/{subjectId} | Retrieves attachments for a specific subject entity.
[**post_attachments_auuid**](AttachmentsApi.md#post_attachments_auuid) | **POST** /Attachments/{auuid} | Downloads an attachment file by its unique identifier.
[**post_attachments_downloadmergedpdf**](AttachmentsApi.md#post_attachments_downloadmergedpdf) | **POST** /Attachments/downloadmergedpdf | Downloads a merged PDF file from multiple PDF sources.
[**post_attachments_downloadzip**](AttachmentsApi.md#post_attachments_downloadzip) | **POST** /Attachments/downloadzip | Downloads multiple attachments as a ZIP archive.
[**post_attachments_subjecttype_subjectid**](AttachmentsApi.md#post_attachments_subjecttype_subjectid) | **POST** /Attachments/{subjectType}/{subjectId} | Uploads and attaches a file to a specific subject entity.


# **delete_attachments_subjecttype_subjectid_auuid**
> BooleanApiResponseDTO delete_attachments_subjecttype_subjectid_auuid(subject_type, subject_id, auuid, zf_tuuid, zf_ouuid)

Deletes a specific attachment associated with a specific subject entity.

Deletes a specific attachment associated with a specific subject entity.

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
    api_instance = attachments_client.AttachmentsApi(api_client)
    subject_type = 'subject_type_example' # str | The type of subject entity from which the attachment will be deleted.
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    auuid = 'auuid_example' # str | The attachment unique identifier to be deleted.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes a specific attachment associated with a specific subject entity.
        api_response = api_instance.delete_attachments_subjecttype_subjectid_auuid(subject_type, subject_id, auuid, zf_tuuid, zf_ouuid)
        print("The response of AttachmentsApi->delete_attachments_subjecttype_subjectid_auuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AttachmentsApi->delete_attachments_subjecttype_subjectid_auuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_type** | **str**| The type of subject entity from which the attachment will be deleted. | 
 **subject_id** | **str**| The unique identifier of the subject entity. | 
 **auuid** | **str**| The attachment unique identifier to be deleted. | 
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
**204** | If the attachment was successfully deleted. |  -  |
**400** | If the deletion request is invalid. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_attachments_subjecttype_subjectid**
> AttachmentDTOPagedResponseModelDTOApiResponseDTO get_attachments_subjecttype_subjectid(subject_type, subject_id, zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token)

Retrieves attachments for a specific subject entity.

Retrieves attachments for a specific subject entity.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.attachment_dto_paged_response_model_dto_api_response_dto import AttachmentDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = attachments_client.AttachmentsApi(api_client)
    subject_type = 'subject_type_example' # str | The type of subject entity.
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    order_by = 'order_by_example' # str | The property by which to order the results. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination of results. (optional)

    try:
        # Retrieves attachments for a specific subject entity.
        api_response = api_instance.get_attachments_subjecttype_subjectid(subject_type, subject_id, zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token)
        print("The response of AttachmentsApi->get_attachments_subjecttype_subjectid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AttachmentsApi->get_attachments_subjecttype_subjectid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_type** | **str**| The type of subject entity. | 
 **subject_id** | **str**| The unique identifier of the subject entity. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **order_by** | **str**| The property by which to order the results. | [optional] 
 **continuation_token** | **str**| Token for pagination of results. | [optional] 

### Return type

[**AttachmentDTOPagedResponseModelDTOApiResponseDTO**](AttachmentDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **post_attachments_auuid**
> bytearray post_attachments_auuid(auuid, zf_tuuid, zf_ouuid)

Downloads an attachment file by its unique identifier.

Downloads an attachment file by its unique identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
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
    api_instance = attachments_client.AttachmentsApi(api_client)
    auuid = 'auuid_example' # str | The attachment unique identifier.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Downloads an attachment file by its unique identifier.
        api_response = api_instance.post_attachments_auuid(auuid, zf_tuuid, zf_ouuid)
        print("The response of AttachmentsApi->post_attachments_auuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AttachmentsApi->post_attachments_auuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **auuid** | **str**| The attachment unique identifier. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

**bytearray**

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
> bytearray post_attachments_downloadmergedpdf(zf_tuuid, zf_ouuid, merge_pdf_request=merge_pdf_request)

Downloads a merged PDF file from multiple PDF sources.

Downloads a merged PDF file from multiple PDF sources.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
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
    api_instance = attachments_client.AttachmentsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    merge_pdf_request = {"attachmentIds":["string"],"resultingFileName":"string"} # MergePdfRequest | The request containing details of PDFs to merge. (optional)

    try:
        # Downloads a merged PDF file from multiple PDF sources.
        api_response = api_instance.post_attachments_downloadmergedpdf(zf_tuuid, zf_ouuid, merge_pdf_request=merge_pdf_request)
        print("The response of AttachmentsApi->post_attachments_downloadmergedpdf:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AttachmentsApi->post_attachments_downloadmergedpdf: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **merge_pdf_request** | [**MergePdfRequest**](MergePdfRequest.md)| The request containing details of PDFs to merge. | [optional] 

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
**200** | Returns the merged PDF file as a stream. |  -  |
**400** | If the merge request is invalid. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_attachments_downloadzip**
> bytearray post_attachments_downloadzip(zf_tuuid, zf_ouuid, download_attachments_request=download_attachments_request)

Downloads multiple attachments as a ZIP archive.

Downloads multiple attachments as a ZIP archive.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.download_attachments_request import DownloadAttachmentsRequest
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
    api_instance = attachments_client.AttachmentsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    download_attachments_request = {"attachmentIds":["string"]} # DownloadAttachmentsRequest | The request containing IDs of attachments to download. (optional)

    try:
        # Downloads multiple attachments as a ZIP archive.
        api_response = api_instance.post_attachments_downloadzip(zf_tuuid, zf_ouuid, download_attachments_request=download_attachments_request)
        print("The response of AttachmentsApi->post_attachments_downloadzip:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AttachmentsApi->post_attachments_downloadzip: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **download_attachments_request** | [**DownloadAttachmentsRequest**](DownloadAttachmentsRequest.md)| The request containing IDs of attachments to download. | [optional] 

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
**200** | Returns the ZIP file as a stream. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_attachments_subjecttype_subjectid**
> AttachmentDTOApiResponseDTO post_attachments_subjecttype_subjectid(subject_type, subject_id, zf_tuuid, zf_ouuid, content_type=content_type, content_disposition=content_disposition, headers=headers, length=length, name=name, file_name=file_name, description=description)

Uploads and attaches a file to a specific subject entity.

Uploads and attaches a file to a specific subject entity.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.attachment_dto_api_response_dto import AttachmentDTOApiResponseDTO
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
    api_instance = attachments_client.AttachmentsApi(api_client)
    subject_type = 'subject_type_example' # str | The type of subject entity to which the file will be attached.
    subject_id = 'subject_id_example' # str | The unique identifier of the subject entity.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    content_type = 'content_type_example' # str |  (optional)
    content_disposition = 'content_disposition_example' # str |  (optional)
    headers = None # object |  (optional)
    length = 56 # int |  (optional)
    name = 'name_example' # str |  (optional)
    file_name = 'file_name_example' # str |  (optional)
    description = 'description_example' # str |  (optional)

    try:
        # Uploads and attaches a file to a specific subject entity.
        api_response = api_instance.post_attachments_subjecttype_subjectid(subject_type, subject_id, zf_tuuid, zf_ouuid, content_type=content_type, content_disposition=content_disposition, headers=headers, length=length, name=name, file_name=file_name, description=description)
        print("The response of AttachmentsApi->post_attachments_subjecttype_subjectid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AttachmentsApi->post_attachments_subjecttype_subjectid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject_type** | **str**| The type of subject entity to which the file will be attached. | 
 **subject_id** | **str**| The unique identifier of the subject entity. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **content_type** | **str**|  | [optional] 
 **content_disposition** | **str**|  | [optional] 
 **headers** | [**object**](object.md)|  | [optional] 
 **length** | **int**|  | [optional] 
 **name** | **str**|  | [optional] 
 **file_name** | **str**|  | [optional] 
 **description** | **str**|  | [optional] 

### Return type

[**AttachmentDTOApiResponseDTO**](AttachmentDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Returns the newly created attachment details. |  -  |
**400** | If the attachment request is invalid. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

