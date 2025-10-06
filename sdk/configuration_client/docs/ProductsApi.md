# configuration_client.ProductsApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_products_productuuid**](ProductsApi.md#delete_products_productuuid) | **DELETE** /Products/{productuuid} | Deletes a product by its identifier.
[**get_products**](ProductsApi.md#get_products) | **GET** /Products | Retrieves a paged list of products with optional filtering and sorting.
[**get_products_attachments_flat**](ProductsApi.md#get_products_attachments_flat) | **GET** /Products/attachments/flat | Retrieves a paged list of flat product attachments with optional filtering.
[**get_products_export**](ProductsApi.md#get_products_export) | **GET** /Products/export | Retrieves all products for export purposes.
[**get_products_productuuid**](ProductsApi.md#get_products_productuuid) | **GET** /Products/{productuuid} | Retrieves a specific product by its identifier.
[**post_products**](ProductsApi.md#post_products) | **POST** /Products | Creates a new product.
[**post_products_entityid_translations**](ProductsApi.md#post_products_entityid_translations) | **POST** /Products/{entityId}/translations | /Products/{entityId}/translations - POST
[**post_products_productuuid**](ProductsApi.md#post_products_productuuid) | **POST** /Products/{productuuid} | Updates an existing product.


# **delete_products_productuuid**
> BooleanApiResponseDTO delete_products_productuuid(productuuid, zf_tuuid, zf_ouuid)

Deletes a product by its identifier.

Deletes a product by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.ProductsApi(api_client)
    productuuid = 'productuuid_example' # str | The unique identifier of the product to delete.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes a product by its identifier.
        api_response = api_instance.delete_products_productuuid(productuuid, zf_tuuid, zf_ouuid)
        print("The response of ProductsApi->delete_products_productuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProductsApi->delete_products_productuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productuuid** | **str**| The unique identifier of the product to delete. | 
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

# **get_products**
> ProductDTOPagedResponseModelDTOApiResponseDTO get_products(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, billing_item_id=billing_item_id, continuation_token=continuation_token)

Retrieves a paged list of products with optional filtering and sorting.

Retrieves a paged list of products with optional filtering and sorting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.product_dto_paged_response_model_dto_api_response_dto import ProductDTOPagedResponseModelDTOApiResponseDTO
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.ProductsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    show_deleted = True # bool | If true, deleted products will be included in the results. (optional)
    flex_search = 'flex_search_example' # str | Search term to filter products. (optional)
    order_by = 'order_by_example' # str | Field to order the products by. (optional)
    billing_item_id = 'billing_item_id_example' # str | Filter products by billing item identifier. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of products with optional filtering and sorting.
        api_response = api_instance.get_products(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, billing_item_id=billing_item_id, continuation_token=continuation_token)
        print("The response of ProductsApi->get_products:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProductsApi->get_products: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **show_deleted** | **bool**| If true, deleted products will be included in the results. | [optional] 
 **flex_search** | **str**| Search term to filter products. | [optional] 
 **order_by** | **str**| Field to order the products by. | [optional] 
 **billing_item_id** | **str**| Filter products by billing item identifier. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**ProductDTOPagedResponseModelDTOApiResponseDTO**](ProductDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_products_attachments_flat**
> ProductAttachmentFlatDTOPagedResponseModelDTOApiResponseDTO get_products_attachments_flat(zf_tuuid, zf_ouuid, product_id=product_id, file_name=file_name, approval_required=approval_required, include_in_welcome_email=include_in_welcome_email, visible_on_move_in=visible_on_move_in, valid_start_date_time=valid_start_date_time, valid_end_date_time=valid_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, continuation_token=continuation_token)

Retrieves a paged list of flat product attachments with optional filtering.

Retrieves a paged list of flat product attachments with optional filtering.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.product_attachment_flat_dto_paged_response_model_dto_api_response_dto import ProductAttachmentFlatDTOPagedResponseModelDTOApiResponseDTO
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.ProductsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    product_id = 'product_id_example' # str |  (optional)
    file_name = 'file_name_example' # str |  (optional)
    approval_required = True # bool |  (optional)
    include_in_welcome_email = True # bool |  (optional)
    visible_on_move_in = True # bool |  (optional)
    valid_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    valid_end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of flat product attachments with optional filtering.
        api_response = api_instance.get_products_attachments_flat(zf_tuuid, zf_ouuid, product_id=product_id, file_name=file_name, approval_required=approval_required, include_in_welcome_email=include_in_welcome_email, visible_on_move_in=visible_on_move_in, valid_start_date_time=valid_start_date_time, valid_end_date_time=valid_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, continuation_token=continuation_token)
        print("The response of ProductsApi->get_products_attachments_flat:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProductsApi->get_products_attachments_flat: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **product_id** | **str**|  | [optional] 
 **file_name** | **str**|  | [optional] 
 **approval_required** | **bool**|  | [optional] 
 **include_in_welcome_email** | **bool**|  | [optional] 
 **visible_on_move_in** | **bool**|  | [optional] 
 **valid_start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **valid_end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**ProductAttachmentFlatDTOPagedResponseModelDTOApiResponseDTO**](ProductAttachmentFlatDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_products_export**
> ProductExportItemDTOListApiResponseDTO get_products_export(zf_tuuid, zf_ouuid, reference_date=reference_date, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)

Retrieves all products for export purposes.

Retrieves all products for export purposes.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.product_export_item_dto_list_api_response_dto import ProductExportItemDTOListApiResponseDTO
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.ProductsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    reference_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)

    try:
        # Retrieves all products for export purposes.
        api_response = api_instance.get_products_export(zf_tuuid, zf_ouuid, reference_date=reference_date, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids)
        print("The response of ProductsApi->get_products_export:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProductsApi->get_products_export: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **reference_date** | **datetime**| Format - date-time (as date-time in RFC3339). | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 

### Return type

[**ProductExportItemDTOListApiResponseDTO**](ProductExportItemDTOListApiResponseDTO.md)

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

# **get_products_productuuid**
> ProductDTOApiResponseDTO get_products_productuuid(productuuid, zf_tuuid, zf_ouuid)

Retrieves a specific product by its identifier.

Retrieves a specific product by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.product_dto_api_response_dto import ProductDTOApiResponseDTO
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.ProductsApi(api_client)
    productuuid = 'productuuid_example' # str | The unique identifier of the product.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific product by its identifier.
        api_response = api_instance.get_products_productuuid(productuuid, zf_tuuid, zf_ouuid)
        print("The response of ProductsApi->get_products_productuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProductsApi->get_products_productuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productuuid** | **str**| The unique identifier of the product. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**ProductDTOApiResponseDTO**](ProductDTOApiResponseDTO.md)

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

# **post_products**
> ProductDTOApiResponseDTO post_products(zf_tuuid, zf_ouuid, upsert_product_request=upsert_product_request)

Creates a new product.

Creates a new product.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.product_dto_api_response_dto import ProductDTOApiResponseDTO
from configuration_client.models.upsert_product_request import UpsertProductRequest
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.ProductsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    upsert_product_request = {"name":"string","billingItems":[{"billingItemId":"string","order":0,"periodicityParameters":{"periodicityType":{}},"startDateTime":"string","endDateTime":"string"}],"attachments":[{"productAttachmentId":"string","includeInWelcomeEmail":true,"visibility":{},"approvalRequired":true,"validFrom":"string","validUntil":"string","attachmentFiles":[{"culture":{},"fileName":"string","internalFileName":"string","attachmentId":"string"}]}],"invoiceUpfront":true} # UpsertProductRequest | The details of the product to create. (optional)

    try:
        # Creates a new product.
        api_response = api_instance.post_products(zf_tuuid, zf_ouuid, upsert_product_request=upsert_product_request)
        print("The response of ProductsApi->post_products:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProductsApi->post_products: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **upsert_product_request** | [**UpsertProductRequest**](UpsertProductRequest.md)| The details of the product to create. | [optional] 

### Return type

[**ProductDTOApiResponseDTO**](ProductDTOApiResponseDTO.md)

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

# **post_products_entityid_translations**
> ApiResponseDTO post_products_entityid_translations(entity_id, zf_tuuid, zf_ouuid, update_entity_translation_request=update_entity_translation_request)

/Products/{entityId}/translations - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.api_response_dto import ApiResponseDTO
from configuration_client.models.update_entity_translation_request import UpdateEntityTranslationRequest
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.ProductsApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_entity_translation_request = {"translatedFields":{}} # UpdateEntityTranslationRequest |  (optional)

    try:
        # /Products/{entityId}/translations - POST
        api_response = api_instance.post_products_entityid_translations(entity_id, zf_tuuid, zf_ouuid, update_entity_translation_request=update_entity_translation_request)
        print("The response of ProductsApi->post_products_entityid_translations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProductsApi->post_products_entityid_translations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_entity_translation_request** | [**UpdateEntityTranslationRequest**](UpdateEntityTranslationRequest.md)|  | [optional] 

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
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_products_productuuid**
> ProductDTOApiResponseDTO post_products_productuuid(productuuid, zf_tuuid, zf_ouuid, upsert_product_request=upsert_product_request)

Updates an existing product.

Updates an existing product.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.product_dto_api_response_dto import ProductDTOApiResponseDTO
from configuration_client.models.upsert_product_request import UpsertProductRequest
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.ProductsApi(api_client)
    productuuid = 'productuuid_example' # str | The unique identifier of the product to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    upsert_product_request = {"name":"string","billingItems":[{"billingItemId":"string","order":0,"periodicityParameters":{"periodicityType":{}},"startDateTime":"string","endDateTime":"string"}],"attachments":[{"productAttachmentId":"string","includeInWelcomeEmail":true,"visibility":{},"approvalRequired":true,"validFrom":"string","validUntil":"string","attachmentFiles":[{"culture":{},"fileName":"string","internalFileName":"string","attachmentId":"string"}]}],"invoiceUpfront":true} # UpsertProductRequest | The updated product details. (optional)

    try:
        # Updates an existing product.
        api_response = api_instance.post_products_productuuid(productuuid, zf_tuuid, zf_ouuid, upsert_product_request=upsert_product_request)
        print("The response of ProductsApi->post_products_productuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProductsApi->post_products_productuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productuuid** | **str**| The unique identifier of the product to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **upsert_product_request** | [**UpsertProductRequest**](UpsertProductRequest.md)| The updated product details. | [optional] 

### Return type

[**ProductDTOApiResponseDTO**](ProductDTOApiResponseDTO.md)

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

