# configuration_client.BillingItemsApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_billingitems_billingitemuuid**](BillingItemsApi.md#delete_billingitems_billingitemuuid) | **DELETE** /BillingItems/{billingitemuuid} | Deletes a billing item by its identifier.
[**get_billingitems**](BillingItemsApi.md#get_billingitems) | **GET** /BillingItems | Retrieves a paged list of billing items with optional filtering and sorting.
[**get_billingitems_billingitemuuid**](BillingItemsApi.md#get_billingitems_billingitemuuid) | **GET** /BillingItems/{billingitemuuid} | Retrieves a specific billing item by its identifier.
[**get_billingitems_calculationtypes**](BillingItemsApi.md#get_billingitems_calculationtypes) | **GET** /BillingItems/calculationtypes | Retrieves a list of supported calculation types for billing items.
[**get_billingitems_calculationtypes_calculationtype_supportedunitofmeasures**](BillingItemsApi.md#get_billingitems_calculationtypes_calculationtype_supportedunitofmeasures) | **GET** /BillingItems/calculationtypes/{calculationType}/supportedunitofmeasures | Retrieves supported units of measure for a specific calculation type and metering type.
[**post_billingitems**](BillingItemsApi.md#post_billingitems) | **POST** /BillingItems | Creates a new billing item.
[**post_billingitems_billingitemuuid**](BillingItemsApi.md#post_billingitems_billingitemuuid) | **POST** /BillingItems/{billingitemuuid} | Updates an existing billing item.
[**post_billingitems_entityid_translations**](BillingItemsApi.md#post_billingitems_entityid_translations) | **POST** /BillingItems/{entityId}/translations | /BillingItems/{entityId}/translations - POST


# **delete_billingitems_billingitemuuid**
> BooleanApiResponseDTO delete_billingitems_billingitemuuid(billingitemuuid, zf_tuuid, zf_ouuid)

Deletes a billing item by its identifier.

Deletes a billing item by its identifier.

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
    api_instance = configuration_client.BillingItemsApi(api_client)
    billingitemuuid = 'billingitemuuid_example' # str | The unique identifier of the billing item to delete.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes a billing item by its identifier.
        api_response = api_instance.delete_billingitems_billingitemuuid(billingitemuuid, zf_tuuid, zf_ouuid)
        print("The response of BillingItemsApi->delete_billingitems_billingitemuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingItemsApi->delete_billingitems_billingitemuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billingitemuuid** | **str**| The unique identifier of the billing item to delete. | 
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

# **get_billingitems**
> BillingItemDTOPagedResponseModelDTOApiResponseDTO get_billingitems(zf_tuuid, zf_ouuid, show_deleted=show_deleted, name=name, calculation_type=calculation_type, utility_type=utility_type, product_id=product_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, continuation_token=continuation_token)

Retrieves a paged list of billing items with optional filtering and sorting.

Retrieves a paged list of billing items with optional filtering and sorting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.billing_item_dto_paged_response_model_dto_api_response_dto import BillingItemDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = configuration_client.BillingItemsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    show_deleted = True # bool |  (optional)
    name = 'name_example' # str |  (optional)
    calculation_type = 'calculation_type_example' # str |  (optional)
    utility_type = 'utility_type_example' # str |  (optional)
    product_id = 'product_id_example' # str |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    order_by = 'order_by_example' # str | Sorting expression for the results. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of billing items with optional filtering and sorting.
        api_response = api_instance.get_billingitems(zf_tuuid, zf_ouuid, show_deleted=show_deleted, name=name, calculation_type=calculation_type, utility_type=utility_type, product_id=product_id, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, continuation_token=continuation_token)
        print("The response of BillingItemsApi->get_billingitems:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingItemsApi->get_billingitems: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **show_deleted** | **bool**|  | [optional] 
 **name** | **str**|  | [optional] 
 **calculation_type** | **str**|  | [optional] 
 **utility_type** | **str**|  | [optional] 
 **product_id** | **str**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **order_by** | **str**| Sorting expression for the results. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**BillingItemDTOPagedResponseModelDTOApiResponseDTO**](BillingItemDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_billingitems_billingitemuuid**
> BillingItemDTOApiResponseDTO get_billingitems_billingitemuuid(billingitemuuid, zf_tuuid, zf_ouuid)

Retrieves a specific billing item by its identifier.

Retrieves a specific billing item by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.billing_item_dto_api_response_dto import BillingItemDTOApiResponseDTO
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
    api_instance = configuration_client.BillingItemsApi(api_client)
    billingitemuuid = 'billingitemuuid_example' # str | The unique identifier of the billing item.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific billing item by its identifier.
        api_response = api_instance.get_billingitems_billingitemuuid(billingitemuuid, zf_tuuid, zf_ouuid)
        print("The response of BillingItemsApi->get_billingitems_billingitemuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingItemsApi->get_billingitems_billingitemuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billingitemuuid** | **str**| The unique identifier of the billing item. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**BillingItemDTOApiResponseDTO**](BillingItemDTOApiResponseDTO.md)

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

# **get_billingitems_calculationtypes**
> ClassDescriptionListApiResponseDTO get_billingitems_calculationtypes(zf_tuuid, zf_ouuid)

Retrieves a list of supported calculation types for billing items.

Retrieves a list of supported calculation types for billing items.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.class_description_list_api_response_dto import ClassDescriptionListApiResponseDTO
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
    api_instance = configuration_client.BillingItemsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a list of supported calculation types for billing items.
        api_response = api_instance.get_billingitems_calculationtypes(zf_tuuid, zf_ouuid)
        print("The response of BillingItemsApi->get_billingitems_calculationtypes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingItemsApi->get_billingitems_calculationtypes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**ClassDescriptionListApiResponseDTO**](ClassDescriptionListApiResponseDTO.md)

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

# **get_billingitems_calculationtypes_calculationtype_supportedunitofmeasures**
> UnitOfMeasureListApiResponseDTO get_billingitems_calculationtypes_calculationtype_supportedunitofmeasures(calculation_type, zf_tuuid, zf_ouuid, metering_type=metering_type)

Retrieves supported units of measure for a specific calculation type and metering type.

Retrieves supported units of measure for a specific calculation type and metering type.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.unit_of_measure_list_api_response_dto import UnitOfMeasureListApiResponseDTO
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
    api_instance = configuration_client.BillingItemsApi(api_client)
    calculation_type = 'calculation_type_example' # str | The type of calculation to get supported units for.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    metering_type = 'metering_type_example' # str | The type of metering to filter supported units by. (optional)

    try:
        # Retrieves supported units of measure for a specific calculation type and metering type.
        api_response = api_instance.get_billingitems_calculationtypes_calculationtype_supportedunitofmeasures(calculation_type, zf_tuuid, zf_ouuid, metering_type=metering_type)
        print("The response of BillingItemsApi->get_billingitems_calculationtypes_calculationtype_supportedunitofmeasures:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingItemsApi->get_billingitems_calculationtypes_calculationtype_supportedunitofmeasures: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **calculation_type** | **str**| The type of calculation to get supported units for. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **metering_type** | **str**| The type of metering to filter supported units by. | [optional] 

### Return type

[**UnitOfMeasureListApiResponseDTO**](UnitOfMeasureListApiResponseDTO.md)

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

# **post_billingitems**
> BillingItemDTOApiResponseDTO post_billingitems(zf_tuuid, zf_ouuid, create_billing_item_request=create_billing_item_request)

Creates a new billing item.

Creates a new billing item.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.billing_item_dto_api_response_dto import BillingItemDTOApiResponseDTO
from configuration_client.models.create_billing_item_request import CreateBillingItemRequest
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
    api_instance = configuration_client.BillingItemsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_billing_item_request = {"name":"string","description":"string","personTaxCodeId":"string","organisationTaxCodeId":"string","tierCalculationMethod":{},"calculationParameters":{"unitOfMeasure":{},"billingCalculationType":{}}} # CreateBillingItemRequest | The details of the billing item to create. (optional)

    try:
        # Creates a new billing item.
        api_response = api_instance.post_billingitems(zf_tuuid, zf_ouuid, create_billing_item_request=create_billing_item_request)
        print("The response of BillingItemsApi->post_billingitems:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingItemsApi->post_billingitems: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_billing_item_request** | [**CreateBillingItemRequest**](CreateBillingItemRequest.md)| The details of the billing item to create. | [optional] 

### Return type

[**BillingItemDTOApiResponseDTO**](BillingItemDTOApiResponseDTO.md)

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

# **post_billingitems_billingitemuuid**
> BillingItemDTOApiResponseDTO post_billingitems_billingitemuuid(billingitemuuid, zf_tuuid, zf_ouuid, update_billing_item_request=update_billing_item_request)

Updates an existing billing item.

Updates an existing billing item.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.billing_item_dto_api_response_dto import BillingItemDTOApiResponseDTO
from configuration_client.models.update_billing_item_request import UpdateBillingItemRequest
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
    api_instance = configuration_client.BillingItemsApi(api_client)
    billingitemuuid = 'billingitemuuid_example' # str | The unique identifier of the billing item to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_billing_item_request = {"name":"string","description":"string","personTaxCodeId":"string","organisationTaxCodeId":"string","tierCalculationMethod":{},"calculationParameters":{"unitOfMeasure":{},"billingCalculationType":{}}} # UpdateBillingItemRequest | The updated billing item details. (optional)

    try:
        # Updates an existing billing item.
        api_response = api_instance.post_billingitems_billingitemuuid(billingitemuuid, zf_tuuid, zf_ouuid, update_billing_item_request=update_billing_item_request)
        print("The response of BillingItemsApi->post_billingitems_billingitemuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingItemsApi->post_billingitems_billingitemuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billingitemuuid** | **str**| The unique identifier of the billing item to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_billing_item_request** | [**UpdateBillingItemRequest**](UpdateBillingItemRequest.md)| The updated billing item details. | [optional] 

### Return type

[**BillingItemDTOApiResponseDTO**](BillingItemDTOApiResponseDTO.md)

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

# **post_billingitems_entityid_translations**
> ApiResponseDTO post_billingitems_entityid_translations(entity_id, zf_tuuid, zf_ouuid, update_entity_translation_request=update_entity_translation_request)

/BillingItems/{entityId}/translations - POST

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
    api_instance = configuration_client.BillingItemsApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_entity_translation_request = {"translatedFields":{}} # UpdateEntityTranslationRequest |  (optional)

    try:
        # /BillingItems/{entityId}/translations - POST
        api_response = api_instance.post_billingitems_entityid_translations(entity_id, zf_tuuid, zf_ouuid, update_entity_translation_request=update_entity_translation_request)
        print("The response of BillingItemsApi->post_billingitems_entityid_translations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingItemsApi->post_billingitems_entityid_translations: %s\n" % e)
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

