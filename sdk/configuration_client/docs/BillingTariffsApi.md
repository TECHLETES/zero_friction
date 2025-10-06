# configuration_client.BillingTariffsApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_billingtariffs_b_billingitemid**](BillingTariffsApi.md#delete_billingtariffs_b_billingitemid) | **DELETE** /BillingTariffs/b/{billingItemId} | Deletes a billing tariff tree for a specific billing item.
[**get_billingtariffs**](BillingTariffsApi.md#get_billingtariffs) | **GET** /BillingTariffs | Retrieves a paged list of billing tariffs with optional filtering and sorting.
[**get_billingtariffs_b_billingitemid**](BillingTariffsApi.md#get_billingtariffs_b_billingitemid) | **GET** /BillingTariffs/b/{billingItemId} | Retrieves billing tariff trees for a specific billing item.
[**get_billingtariffs_billingtariffuuid**](BillingTariffsApi.md#get_billingtariffs_billingtariffuuid) | **GET** /BillingTariffs/{billingtariffuuid} | Retrieves a specific billing tariff by its identifier.
[**post_billingtariffs_b_billingitemid**](BillingTariffsApi.md#post_billingtariffs_b_billingitemid) | **POST** /BillingTariffs/b/{billingItemId} | Creates a billing tariff tree for a specific billing item.
[**put_billingtariffs_b_billingitemid**](BillingTariffsApi.md#put_billingtariffs_b_billingitemid) | **PUT** /BillingTariffs/b/{billingItemId} | Updates an existing billing tariff tree for a specific billing item.
[**put_billingtariffs_b_billingitemid_period**](BillingTariffsApi.md#put_billingtariffs_b_billingitemid_period) | **PUT** /BillingTariffs/b/{billingItemId}/period | Updates the period of a billing tariff tree for a specific billing item.


# **delete_billingtariffs_b_billingitemid**
> BooleanApiResponseDTO delete_billingtariffs_b_billingitemid(billing_item_id, zf_tuuid, zf_ouuid, delete_billing_tariff_tree_request=delete_billing_tariff_tree_request)

Deletes a billing tariff tree for a specific billing item.

Deletes a billing tariff tree for a specific billing item.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from configuration_client.models.delete_billing_tariff_tree_request import DeleteBillingTariffTreeRequest
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
    api_instance = configuration_client.BillingTariffsApi(api_client)
    billing_item_id = 'billing_item_id_example' # str | The identifier of the billing item whose tariff tree to delete.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    delete_billing_tariff_tree_request = {"productId":"string","billingTariffIds":["string"]} # DeleteBillingTariffTreeRequest | The details specifying which tariff tree to delete. (optional)

    try:
        # Deletes a billing tariff tree for a specific billing item.
        api_response = api_instance.delete_billingtariffs_b_billingitemid(billing_item_id, zf_tuuid, zf_ouuid, delete_billing_tariff_tree_request=delete_billing_tariff_tree_request)
        print("The response of BillingTariffsApi->delete_billingtariffs_b_billingitemid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingTariffsApi->delete_billingtariffs_b_billingitemid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_item_id** | **str**| The identifier of the billing item whose tariff tree to delete. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **delete_billing_tariff_tree_request** | [**DeleteBillingTariffTreeRequest**](DeleteBillingTariffTreeRequest.md)| The details specifying which tariff tree to delete. | [optional] 

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

# **get_billingtariffs**
> BillingTariffDTOPagedResponseModelDTOApiResponseDTO get_billingtariffs(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, product_id=product_id, billing_item_id=billing_item_id, calculation_types=calculation_types, unbounded_period=unbounded_period, continuation_token=continuation_token)

Retrieves a paged list of billing tariffs with optional filtering and sorting.

Retrieves a paged list of billing tariffs with optional filtering and sorting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.billing_tariff_dto_paged_response_model_dto_api_response_dto import BillingTariffDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = configuration_client.BillingTariffsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    show_deleted = True # bool | When true, includes deleted billing tariffs in the results. (optional)
    flex_search = 'flex_search_example' # str | Search term to filter tariffs by various fields. (optional)
    order_by = 'order_by_example' # str | Sorting expression for the results. (optional)
    product_id = 'product_id_example' # str | Filter tariffs by product identifier. (optional)
    billing_item_id = 'billing_item_id_example' # str | Filter tariffs by billing item identifier. (optional)
    calculation_types = ['calculation_types_example'] # List[str] | Filter tariffs by calculation types. (optional)
    unbounded_period = True # bool | When true, filters for tariffs with unbounded periods. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of billing tariffs with optional filtering and sorting.
        api_response = api_instance.get_billingtariffs(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, product_id=product_id, billing_item_id=billing_item_id, calculation_types=calculation_types, unbounded_period=unbounded_period, continuation_token=continuation_token)
        print("The response of BillingTariffsApi->get_billingtariffs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingTariffsApi->get_billingtariffs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **show_deleted** | **bool**| When true, includes deleted billing tariffs in the results. | [optional] 
 **flex_search** | **str**| Search term to filter tariffs by various fields. | [optional] 
 **order_by** | **str**| Sorting expression for the results. | [optional] 
 **product_id** | **str**| Filter tariffs by product identifier. | [optional] 
 **billing_item_id** | **str**| Filter tariffs by billing item identifier. | [optional] 
 **calculation_types** | [**List[str]**](str.md)| Filter tariffs by calculation types. | [optional] 
 **unbounded_period** | **bool**| When true, filters for tariffs with unbounded periods. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**BillingTariffDTOPagedResponseModelDTOApiResponseDTO**](BillingTariffDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_billingtariffs_b_billingitemid**
> BillingTariffTreeDTOListApiResponseDTO get_billingtariffs_b_billingitemid(billing_item_id, zf_tuuid, zf_ouuid, show_only_active=show_only_active, product_id=product_id)

Retrieves billing tariff trees for a specific billing item.

Retrieves billing tariff trees for a specific billing item.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.billing_tariff_tree_dto_list_api_response_dto import BillingTariffTreeDTOListApiResponseDTO
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
    api_instance = configuration_client.BillingTariffsApi(api_client)
    billing_item_id = 'billing_item_id_example' # str | The identifier of the billing item to get tariff trees for.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    show_only_active = True # bool | When true, returns only active tariff trees. (optional)
    product_id = 'product_id_example' # str | Optional product identifier to filter the results. (optional)

    try:
        # Retrieves billing tariff trees for a specific billing item.
        api_response = api_instance.get_billingtariffs_b_billingitemid(billing_item_id, zf_tuuid, zf_ouuid, show_only_active=show_only_active, product_id=product_id)
        print("The response of BillingTariffsApi->get_billingtariffs_b_billingitemid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingTariffsApi->get_billingtariffs_b_billingitemid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_item_id** | **str**| The identifier of the billing item to get tariff trees for. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **show_only_active** | **bool**| When true, returns only active tariff trees. | [optional] 
 **product_id** | **str**| Optional product identifier to filter the results. | [optional] 

### Return type

[**BillingTariffTreeDTOListApiResponseDTO**](BillingTariffTreeDTOListApiResponseDTO.md)

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

# **get_billingtariffs_billingtariffuuid**
> BillingTariffDTOApiResponseDTO get_billingtariffs_billingtariffuuid(billingtariffuuid, zf_tuuid, zf_ouuid)

Retrieves a specific billing tariff by its identifier.

Retrieves a specific billing tariff by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.billing_tariff_dto_api_response_dto import BillingTariffDTOApiResponseDTO
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
    api_instance = configuration_client.BillingTariffsApi(api_client)
    billingtariffuuid = 'billingtariffuuid_example' # str | The unique identifier of the billing tariff.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific billing tariff by its identifier.
        api_response = api_instance.get_billingtariffs_billingtariffuuid(billingtariffuuid, zf_tuuid, zf_ouuid)
        print("The response of BillingTariffsApi->get_billingtariffs_billingtariffuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingTariffsApi->get_billingtariffs_billingtariffuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billingtariffuuid** | **str**| The unique identifier of the billing tariff. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**BillingTariffDTOApiResponseDTO**](BillingTariffDTOApiResponseDTO.md)

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

# **post_billingtariffs_b_billingitemid**
> BooleanApiResponseDTO post_billingtariffs_b_billingitemid(billing_item_id, zf_tuuid, zf_ouuid, create_billing_tariff_tree_request=create_billing_tariff_tree_request)

Creates a billing tariff tree for a specific billing item.

Creates a billing tariff tree for a specific billing item.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from configuration_client.models.create_billing_tariff_tree_request import CreateBillingTariffTreeRequest
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
    api_instance = configuration_client.BillingTariffsApi(api_client)
    billing_item_id = 'billing_item_id_example' # str | The identifier of the billing item to create tariffs for.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_billing_tariff_tree_request = {"id":"string","productId":"string","activityPeriod":{"startDateTime":"string","endDateTime":"string"},"nodes":[{"calculationParameters":{"calculationType":{}},"condition":{}}]} # CreateBillingTariffTreeRequest | The details of the billing tariff tree to create. (optional)

    try:
        # Creates a billing tariff tree for a specific billing item.
        api_response = api_instance.post_billingtariffs_b_billingitemid(billing_item_id, zf_tuuid, zf_ouuid, create_billing_tariff_tree_request=create_billing_tariff_tree_request)
        print("The response of BillingTariffsApi->post_billingtariffs_b_billingitemid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingTariffsApi->post_billingtariffs_b_billingitemid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_item_id** | **str**| The identifier of the billing item to create tariffs for. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_billing_tariff_tree_request** | [**CreateBillingTariffTreeRequest**](CreateBillingTariffTreeRequest.md)| The details of the billing tariff tree to create. | [optional] 

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
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_billingtariffs_b_billingitemid**
> BooleanApiResponseDTO put_billingtariffs_b_billingitemid(billing_item_id, zf_tuuid, zf_ouuid, update_billing_tariff_tree_request=update_billing_tariff_tree_request)

Updates an existing billing tariff tree for a specific billing item.

Updates an existing billing tariff tree for a specific billing item.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from configuration_client.models.update_billing_tariff_tree_request import UpdateBillingTariffTreeRequest
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
    api_instance = configuration_client.BillingTariffsApi(api_client)
    billing_item_id = 'billing_item_id_example' # str | The identifier of the billing item whose tariff tree to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_billing_tariff_tree_request = {"productId":"string","activityPeriod":{"startDateTime":"string","endDateTime":"string"},"deletedBillingTariffIds":["string"],"nodes":[{"billingTariffId":"string","calculationParameters":{"calculationType":{}},"condition":{}}]} # UpdateBillingTariffTreeRequest | The updated billing tariff tree details. (optional)

    try:
        # Updates an existing billing tariff tree for a specific billing item.
        api_response = api_instance.put_billingtariffs_b_billingitemid(billing_item_id, zf_tuuid, zf_ouuid, update_billing_tariff_tree_request=update_billing_tariff_tree_request)
        print("The response of BillingTariffsApi->put_billingtariffs_b_billingitemid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingTariffsApi->put_billingtariffs_b_billingitemid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_item_id** | **str**| The identifier of the billing item whose tariff tree to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_billing_tariff_tree_request** | [**UpdateBillingTariffTreeRequest**](UpdateBillingTariffTreeRequest.md)| The updated billing tariff tree details. | [optional] 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_billingtariffs_b_billingitemid_period**
> BooleanApiResponseDTO put_billingtariffs_b_billingitemid_period(billing_item_id, zf_tuuid, zf_ouuid, update_billing_tariff_tree_period_request=update_billing_tariff_tree_period_request)

Updates the period of a billing tariff tree for a specific billing item.

Updates the period of a billing tariff tree for a specific billing item.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from configuration_client.models.update_billing_tariff_tree_period_request import UpdateBillingTariffTreePeriodRequest
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
    api_instance = configuration_client.BillingTariffsApi(api_client)
    billing_item_id = 'billing_item_id_example' # str | The identifier of the billing item whose tariff tree period to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_billing_tariff_tree_period_request = {"productId":"string","activityPeriod":{"startDateTime":"string","endDateTime":"string"},"billingTariffIds":["string"]} # UpdateBillingTariffTreePeriodRequest | The updated period details for the billing tariff tree. (optional)

    try:
        # Updates the period of a billing tariff tree for a specific billing item.
        api_response = api_instance.put_billingtariffs_b_billingitemid_period(billing_item_id, zf_tuuid, zf_ouuid, update_billing_tariff_tree_period_request=update_billing_tariff_tree_period_request)
        print("The response of BillingTariffsApi->put_billingtariffs_b_billingitemid_period:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingTariffsApi->put_billingtariffs_b_billingitemid_period: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_item_id** | **str**| The identifier of the billing item whose tariff tree period to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_billing_tariff_tree_period_request** | [**UpdateBillingTariffTreePeriodRequest**](UpdateBillingTariffTreePeriodRequest.md)| The updated period details for the billing tariff tree. | [optional] 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

