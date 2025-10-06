# attachments_client.EntityAttachmentsApi

All URIs are relative to *https://api.zerofriction.co/api/att*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_contract_entity_attachment**](EntityAttachmentsApi.md#add_contract_entity_attachment) | **POST** /EntityAttachments/contract | Adds a new contract entity attachment.
[**add_customer_entity_attachment**](EntityAttachmentsApi.md#add_customer_entity_attachment) | **POST** /EntityAttachments/customer | Adds a new customer entity attachment.
[**delete_entity_attachment**](EntityAttachmentsApi.md#delete_entity_attachment) | **DELETE** /EntityAttachments/{eauuid} | Deletes a specific entity attachment.
[**download_entity_attachments**](EntityAttachmentsApi.md#download_entity_attachments) | **POST** /EntityAttachments/download | Downloads attachments for a specific entity.
[**get_entity_attachment**](EntityAttachmentsApi.md#get_entity_attachment) | **GET** /EntityAttachments/{eauuid} | Gets a specific entity attachment.
[**get_entity_attachments**](EntityAttachmentsApi.md#get_entity_attachments) | **GET** /EntityAttachments | Gets all entity attachments.
[**get_entity_attachments_overview_count**](EntityAttachmentsApi.md#get_entity_attachments_overview_count) | **GET** /EntityAttachments/overviewcount | Gets an overview count of entity attachments.
[**post_entityattachments_bulk_delete**](EntityAttachmentsApi.md#post_entityattachments_bulk_delete) | **POST** /EntityAttachments/bulk/delete | Bulk deletes entity attachments.
[**update_entity_attachment_signed_date**](EntityAttachmentsApi.md#update_entity_attachment_signed_date) | **PATCH** /EntityAttachments/{eauuid}/sign | Updates the signed date of a specific entity attachment.
[**update_entity_attachment_view_date**](EntityAttachmentsApi.md#update_entity_attachment_view_date) | **PATCH** /EntityAttachments/{eauuid}/view | Updates the viewed date of a specific entity attachment.
[**update_entity_attachment_visibility**](EntityAttachmentsApi.md#update_entity_attachment_visibility) | **PATCH** /EntityAttachments/{eauuid}/visibility | Updates the visibility of a specific entity attachment.


# **add_contract_entity_attachment**
> EntityAttachmentDTOApiResponseDTO add_contract_entity_attachment(zf_tuuid, zf_ouuid, contract_id=contract_id, customer_id=customer_id, contract_number=contract_number, content_type=content_type, content_disposition=content_disposition, headers=headers, length=length, name=name, file_name=file_name, localised_file_name=localised_file_name, visibility=visibility, culture=culture)

Adds a new contract entity attachment.

Adds a new contract entity attachment.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.entity_attachment_dto_api_response_dto import EntityAttachmentDTOApiResponseDTO
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
    api_instance = attachments_client.EntityAttachmentsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    contract_id = 'contract_id_example' # str |  (optional)
    customer_id = 'customer_id_example' # str |  (optional)
    contract_number = 'contract_number_example' # str |  (optional)
    content_type = 'content_type_example' # str |  (optional)
    content_disposition = 'content_disposition_example' # str |  (optional)
    headers = None # object |  (optional)
    length = 56 # int |  (optional)
    name = 'name_example' # str |  (optional)
    file_name = 'file_name_example' # str |  (optional)
    localised_file_name = 'localised_file_name_example' # str |  (optional)
    visibility = 'visibility_example' # str |  (optional)
    culture = 'culture_example' # str |  (optional)

    try:
        # Adds a new contract entity attachment.
        api_response = api_instance.add_contract_entity_attachment(zf_tuuid, zf_ouuid, contract_id=contract_id, customer_id=customer_id, contract_number=contract_number, content_type=content_type, content_disposition=content_disposition, headers=headers, length=length, name=name, file_name=file_name, localised_file_name=localised_file_name, visibility=visibility, culture=culture)
        print("The response of EntityAttachmentsApi->add_contract_entity_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentsApi->add_contract_entity_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **contract_id** | **str**|  | [optional] 
 **customer_id** | **str**|  | [optional] 
 **contract_number** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 
 **content_disposition** | **str**|  | [optional] 
 **headers** | [**object**](object.md)|  | [optional] 
 **length** | **int**|  | [optional] 
 **name** | **str**|  | [optional] 
 **file_name** | **str**|  | [optional] 
 **localised_file_name** | **str**|  | [optional] 
 **visibility** | **str**|  | [optional] 
 **culture** | **str**|  | [optional] 

### Return type

[**EntityAttachmentDTOApiResponseDTO**](EntityAttachmentDTOApiResponseDTO.md)

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

# **add_customer_entity_attachment**
> EntityAttachmentDTOApiResponseDTO add_customer_entity_attachment(zf_tuuid, zf_ouuid, customer_id=customer_id, content_type=content_type, content_disposition=content_disposition, headers=headers, length=length, name=name, file_name=file_name, localised_file_name=localised_file_name, visibility=visibility, culture=culture)

Adds a new customer entity attachment.

Adds a new customer entity attachment.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.entity_attachment_dto_api_response_dto import EntityAttachmentDTOApiResponseDTO
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
    api_instance = attachments_client.EntityAttachmentsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    customer_id = 'customer_id_example' # str |  (optional)
    content_type = 'content_type_example' # str |  (optional)
    content_disposition = 'content_disposition_example' # str |  (optional)
    headers = None # object |  (optional)
    length = 56 # int |  (optional)
    name = 'name_example' # str |  (optional)
    file_name = 'file_name_example' # str |  (optional)
    localised_file_name = 'localised_file_name_example' # str |  (optional)
    visibility = 'visibility_example' # str |  (optional)
    culture = 'culture_example' # str |  (optional)

    try:
        # Adds a new customer entity attachment.
        api_response = api_instance.add_customer_entity_attachment(zf_tuuid, zf_ouuid, customer_id=customer_id, content_type=content_type, content_disposition=content_disposition, headers=headers, length=length, name=name, file_name=file_name, localised_file_name=localised_file_name, visibility=visibility, culture=culture)
        print("The response of EntityAttachmentsApi->add_customer_entity_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentsApi->add_customer_entity_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **customer_id** | **str**|  | [optional] 
 **content_type** | **str**|  | [optional] 
 **content_disposition** | **str**|  | [optional] 
 **headers** | [**object**](object.md)|  | [optional] 
 **length** | **int**|  | [optional] 
 **name** | **str**|  | [optional] 
 **file_name** | **str**|  | [optional] 
 **localised_file_name** | **str**|  | [optional] 
 **visibility** | **str**|  | [optional] 
 **culture** | **str**|  | [optional] 

### Return type

[**EntityAttachmentDTOApiResponseDTO**](EntityAttachmentDTOApiResponseDTO.md)

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

# **delete_entity_attachment**
> BooleanApiResponseDTO delete_entity_attachment(eauuid, zf_tuuid, zf_ouuid, delete_entity_attachment_request=delete_entity_attachment_request)

Deletes a specific entity attachment.

Deletes a specific entity attachment.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.boolean_api_response_dto import BooleanApiResponseDTO
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
    api_instance = attachments_client.EntityAttachmentsApi(api_client)
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    delete_entity_attachment_request = {"customerId":"string"} # DeleteEntityAttachmentRequest | The request containing details of the entity attachment to delete. (optional)

    try:
        # Deletes a specific entity attachment.
        api_response = api_instance.delete_entity_attachment(eauuid, zf_tuuid, zf_ouuid, delete_entity_attachment_request=delete_entity_attachment_request)
        print("The response of EntityAttachmentsApi->delete_entity_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentsApi->delete_entity_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eauuid** | **str**| The unique identifier of the entity attachment. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **delete_entity_attachment_request** | [**DeleteEntityAttachmentRequest**](DeleteEntityAttachmentRequest.md)| The request containing details of the entity attachment to delete. | [optional] 

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

# **download_entity_attachments**
> bytearray download_entity_attachments(zf_tuuid, zf_ouuid, download_entity_attachments_request=download_entity_attachments_request)

Downloads attachments for a specific entity.

Downloads attachments for a specific entity.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.download_entity_attachments_request import DownloadEntityAttachmentsRequest
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
    api_instance = attachments_client.EntityAttachmentsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    download_entity_attachments_request = {"entityAttachmentIds":["string"],"customerId":"string","culture":{}} # DownloadEntityAttachmentsRequest | The request containing details of the attachments to download. (optional)

    try:
        # Downloads attachments for a specific entity.
        api_response = api_instance.download_entity_attachments(zf_tuuid, zf_ouuid, download_entity_attachments_request=download_entity_attachments_request)
        print("The response of EntityAttachmentsApi->download_entity_attachments:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentsApi->download_entity_attachments: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **download_entity_attachments_request** | [**DownloadEntityAttachmentsRequest**](DownloadEntityAttachmentsRequest.md)| The request containing details of the attachments to download. | [optional] 

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

# **get_entity_attachment**
> EntityAttachmentDTOApiResponseDTO get_entity_attachment(eauuid, zf_tuuid, zf_ouuid)

Gets a specific entity attachment.

Gets a specific entity attachment.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.entity_attachment_dto_api_response_dto import EntityAttachmentDTOApiResponseDTO
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
    api_instance = attachments_client.EntityAttachmentsApi(api_client)
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Gets a specific entity attachment.
        api_response = api_instance.get_entity_attachment(eauuid, zf_tuuid, zf_ouuid)
        print("The response of EntityAttachmentsApi->get_entity_attachment:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentsApi->get_entity_attachment: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eauuid** | **str**| The unique identifier of the entity attachment. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**EntityAttachmentDTOApiResponseDTO**](EntityAttachmentDTOApiResponseDTO.md)

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

# **get_entity_attachments**
> EntityAttachmentDTOPagedResponseModelDTOApiResponseDTO get_entity_attachments(zf_tuuid, zf_ouuid, customer_id=customer_id, contract_id=contract_id, viewed=viewed, visibilities=visibilities, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, name=name, id=id, continuation_token=continuation_token)

Gets all entity attachments.

Gets all entity attachments.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.entity_attachment_dto_paged_response_model_dto_api_response_dto import EntityAttachmentDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = attachments_client.EntityAttachmentsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    customer_id = 'customer_id_example' # str |  (optional)
    contract_id = 'contract_id_example' # str |  (optional)
    viewed = True # bool |  (optional)
    visibilities = ['visibilities_example'] # List[str] |  (optional)
    created_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    created_end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    order_by = 'order_by_example' # str | The order by clause for sorting the results. (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)

    try:
        # Gets all entity attachments.
        api_response = api_instance.get_entity_attachments(zf_tuuid, zf_ouuid, customer_id=customer_id, contract_id=contract_id, viewed=viewed, visibilities=visibilities, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, name=name, id=id, continuation_token=continuation_token)
        print("The response of EntityAttachmentsApi->get_entity_attachments:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentsApi->get_entity_attachments: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **customer_id** | **str**|  | [optional] 
 **contract_id** | **str**|  | [optional] 
 **viewed** | **bool**|  | [optional] 
 **visibilities** | [**List[str]**](str.md)|  | [optional] 
 **created_start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **created_end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **order_by** | **str**| The order by clause for sorting the results. | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **continuation_token** | **str**| The continuation token for pagination. | [optional] 

### Return type

[**EntityAttachmentDTOPagedResponseModelDTOApiResponseDTO**](EntityAttachmentDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_entity_attachments_overview_count**
> EntityAttachmentOverviewCountDTOApiResponseDTO get_entity_attachments_overview_count(zf_tuuid, zf_ouuid, customer_id=customer_id, contract_id=contract_id, viewed=viewed, visibilities=visibilities, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Gets an overview count of entity attachments.

Gets an overview count of entity attachments.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.entity_attachment_overview_count_dto_api_response_dto import EntityAttachmentOverviewCountDTOApiResponseDTO
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
    api_instance = attachments_client.EntityAttachmentsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    customer_id = 'customer_id_example' # str |  (optional)
    contract_id = 'contract_id_example' # str |  (optional)
    viewed = True # bool |  (optional)
    visibilities = ['visibilities_example'] # List[str] |  (optional)
    created_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    created_end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Gets an overview count of entity attachments.
        api_response = api_instance.get_entity_attachments_overview_count(zf_tuuid, zf_ouuid, customer_id=customer_id, contract_id=contract_id, viewed=viewed, visibilities=visibilities, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of EntityAttachmentsApi->get_entity_attachments_overview_count:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentsApi->get_entity_attachments_overview_count: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **customer_id** | **str**|  | [optional] 
 **contract_id** | **str**|  | [optional] 
 **viewed** | **bool**|  | [optional] 
 **visibilities** | [**List[str]**](str.md)|  | [optional] 
 **created_start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **created_end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**EntityAttachmentOverviewCountDTOApiResponseDTO**](EntityAttachmentOverviewCountDTOApiResponseDTO.md)

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

# **post_entityattachments_bulk_delete**
> BooleanApiResponseDTO post_entityattachments_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_entity_attachment_request=bulk_delete_entity_attachment_request)

Bulk deletes entity attachments.

Bulk deletes entity attachments.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.boolean_api_response_dto import BooleanApiResponseDTO
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
    api_instance = attachments_client.EntityAttachmentsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_delete_entity_attachment_request = {"customerId":"string","onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"customerId":"string","contractId":"string","viewed":true,"visibilities":["string"],"createdStartDateTime":"string","createdEndDateTime":"string"},"quickFilter":"string"} # BulkDeleteEntityAttachmentRequest | The request containing details of the entity attachments to delete. (optional)

    try:
        # Bulk deletes entity attachments.
        api_response = api_instance.post_entityattachments_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_entity_attachment_request=bulk_delete_entity_attachment_request)
        print("The response of EntityAttachmentsApi->post_entityattachments_bulk_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentsApi->post_entityattachments_bulk_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_delete_entity_attachment_request** | [**BulkDeleteEntityAttachmentRequest**](BulkDeleteEntityAttachmentRequest.md)| The request containing details of the entity attachments to delete. | [optional] 

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

# **update_entity_attachment_signed_date**
> EntityAttachmentDTOApiResponseDTO update_entity_attachment_signed_date(eauuid, zf_tuuid, zf_ouuid, update_entity_attachment_signed_date_request=update_entity_attachment_signed_date_request)

Updates the signed date of a specific entity attachment.

Updates the signed date of a specific entity attachment.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.entity_attachment_dto_api_response_dto import EntityAttachmentDTOApiResponseDTO
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
    api_instance = attachments_client.EntityAttachmentsApi(api_client)
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_entity_attachment_signed_date_request = {"customerId":"string","signedDateTime":"string","signedCulture":{},"signedLocalisedFileName":"string"} # UpdateEntityAttachmentSignedDateRequest | The request containing the new signed date. (optional)

    try:
        # Updates the signed date of a specific entity attachment.
        api_response = api_instance.update_entity_attachment_signed_date(eauuid, zf_tuuid, zf_ouuid, update_entity_attachment_signed_date_request=update_entity_attachment_signed_date_request)
        print("The response of EntityAttachmentsApi->update_entity_attachment_signed_date:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentsApi->update_entity_attachment_signed_date: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eauuid** | **str**| The unique identifier of the entity attachment. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_entity_attachment_signed_date_request** | [**UpdateEntityAttachmentSignedDateRequest**](UpdateEntityAttachmentSignedDateRequest.md)| The request containing the new signed date. | [optional] 

### Return type

[**EntityAttachmentDTOApiResponseDTO**](EntityAttachmentDTOApiResponseDTO.md)

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

# **update_entity_attachment_view_date**
> EntityAttachmentDTOApiResponseDTO update_entity_attachment_view_date(eauuid, zf_tuuid, zf_ouuid, update_entity_attachment_viewed_date_request=update_entity_attachment_viewed_date_request)

Updates the viewed date of a specific entity attachment.

Updates the viewed date of a specific entity attachment.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.entity_attachment_dto_api_response_dto import EntityAttachmentDTOApiResponseDTO
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
    api_instance = attachments_client.EntityAttachmentsApi(api_client)
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_entity_attachment_viewed_date_request = {"customerId":"string","viewedDateTime":"string"} # UpdateEntityAttachmentViewedDateRequest | The request containing the new viewed date. (optional)

    try:
        # Updates the viewed date of a specific entity attachment.
        api_response = api_instance.update_entity_attachment_view_date(eauuid, zf_tuuid, zf_ouuid, update_entity_attachment_viewed_date_request=update_entity_attachment_viewed_date_request)
        print("The response of EntityAttachmentsApi->update_entity_attachment_view_date:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentsApi->update_entity_attachment_view_date: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eauuid** | **str**| The unique identifier of the entity attachment. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_entity_attachment_viewed_date_request** | [**UpdateEntityAttachmentViewedDateRequest**](UpdateEntityAttachmentViewedDateRequest.md)| The request containing the new viewed date. | [optional] 

### Return type

[**EntityAttachmentDTOApiResponseDTO**](EntityAttachmentDTOApiResponseDTO.md)

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

# **update_entity_attachment_visibility**
> EntityAttachmentDTOApiResponseDTO update_entity_attachment_visibility(eauuid, zf_tuuid, zf_ouuid, update_entity_attachment_visibility_request=update_entity_attachment_visibility_request)

Updates the visibility of a specific entity attachment.

Updates the visibility of a specific entity attachment.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.entity_attachment_dto_api_response_dto import EntityAttachmentDTOApiResponseDTO
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
    api_instance = attachments_client.EntityAttachmentsApi(api_client)
    eauuid = 'eauuid_example' # str | The unique identifier of the entity attachment.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_entity_attachment_visibility_request = {"customerId":"string","visibility":{}} # UpdateEntityAttachmentVisibilityRequest | The request containing the new visibility. (optional)

    try:
        # Updates the visibility of a specific entity attachment.
        api_response = api_instance.update_entity_attachment_visibility(eauuid, zf_tuuid, zf_ouuid, update_entity_attachment_visibility_request=update_entity_attachment_visibility_request)
        print("The response of EntityAttachmentsApi->update_entity_attachment_visibility:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntityAttachmentsApi->update_entity_attachment_visibility: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **eauuid** | **str**| The unique identifier of the entity attachment. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_entity_attachment_visibility_request** | [**UpdateEntityAttachmentVisibilityRequest**](UpdateEntityAttachmentVisibilityRequest.md)| The request containing the new visibility. | [optional] 

### Return type

[**EntityAttachmentDTOApiResponseDTO**](EntityAttachmentDTOApiResponseDTO.md)

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

