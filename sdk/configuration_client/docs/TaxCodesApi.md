# configuration_client.TaxCodesApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_taxcodes_taxcodeuuid**](TaxCodesApi.md#delete_taxcodes_taxcodeuuid) | **DELETE** /TaxCodes/{taxcodeuuid} | Deletes a tax code by its identifier.
[**get_taxcodes**](TaxCodesApi.md#get_taxcodes) | **GET** /TaxCodes | Retrieves a paged list of tax codes with optional filtering and sorting.
[**get_taxcodes_taxcodeuuid**](TaxCodesApi.md#get_taxcodes_taxcodeuuid) | **GET** /TaxCodes/{taxcodeuuid} | Retrieves a specific tax code by its identifier.
[**post_taxcodes**](TaxCodesApi.md#post_taxcodes) | **POST** /TaxCodes | Creates a new tax code.
[**post_taxcodes_taxcodeuuid**](TaxCodesApi.md#post_taxcodes_taxcodeuuid) | **POST** /TaxCodes/{taxcodeuuid} | Updates an existing tax code.


# **delete_taxcodes_taxcodeuuid**
> BooleanApiResponseDTO delete_taxcodes_taxcodeuuid(taxcodeuuid, zf_tuuid)

Deletes a tax code by its identifier.

Deletes a tax code by its identifier.

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
    api_instance = configuration_client.TaxCodesApi(api_client)
    taxcodeuuid = 'taxcodeuuid_example' # str | The unique identifier of the tax code to delete.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID

    try:
        # Deletes a tax code by its identifier.
        api_response = api_instance.delete_taxcodes_taxcodeuuid(taxcodeuuid, zf_tuuid)
        print("The response of TaxCodesApi->delete_taxcodes_taxcodeuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TaxCodesApi->delete_taxcodes_taxcodeuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxcodeuuid** | **str**| The unique identifier of the tax code to delete. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 

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

# **get_taxcodes**
> TaxCodeDTOPagedResponseModelDTOApiResponseDTO get_taxcodes(zf_tuuid, zf_ouuid, show_deleted=show_deleted, order_by=order_by, continuation_token=continuation_token)

Retrieves a paged list of tax codes with optional filtering and sorting.

Retrieves a paged list of tax codes with optional filtering and sorting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.tax_code_dto_paged_response_model_dto_api_response_dto import TaxCodeDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = configuration_client.TaxCodesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    show_deleted = True # bool | If true, deleted tax codes will be included in the results. (optional)
    order_by = 'order_by_example' # str | Field to order the tax codes by. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of tax codes with optional filtering and sorting.
        api_response = api_instance.get_taxcodes(zf_tuuid, zf_ouuid, show_deleted=show_deleted, order_by=order_by, continuation_token=continuation_token)
        print("The response of TaxCodesApi->get_taxcodes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TaxCodesApi->get_taxcodes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **show_deleted** | **bool**| If true, deleted tax codes will be included in the results. | [optional] 
 **order_by** | **str**| Field to order the tax codes by. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**TaxCodeDTOPagedResponseModelDTOApiResponseDTO**](TaxCodeDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_taxcodes_taxcodeuuid**
> TaxCodeDTOApiResponseDTO get_taxcodes_taxcodeuuid(taxcodeuuid, zf_tuuid, zf_ouuid)

Retrieves a specific tax code by its identifier.

Retrieves a specific tax code by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.tax_code_dto_api_response_dto import TaxCodeDTOApiResponseDTO
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
    api_instance = configuration_client.TaxCodesApi(api_client)
    taxcodeuuid = 'taxcodeuuid_example' # str | The unique identifier of the tax code.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific tax code by its identifier.
        api_response = api_instance.get_taxcodes_taxcodeuuid(taxcodeuuid, zf_tuuid, zf_ouuid)
        print("The response of TaxCodesApi->get_taxcodes_taxcodeuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TaxCodesApi->get_taxcodes_taxcodeuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxcodeuuid** | **str**| The unique identifier of the tax code. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**TaxCodeDTOApiResponseDTO**](TaxCodeDTOApiResponseDTO.md)

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

# **post_taxcodes**
> TaxCodeDTOApiResponseDTO post_taxcodes(zf_tuuid, create_tax_code_request=create_tax_code_request)

Creates a new tax code.

Creates a new tax code.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.create_tax_code_request import CreateTaxCodeRequest
from configuration_client.models.tax_code_dto_api_response_dto import TaxCodeDTOApiResponseDTO
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
    api_instance = configuration_client.TaxCodesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    create_tax_code_request = {"name":"string","rates":[{"rate":0,"startDateTime":"string","endDateTime":"string"}]} # CreateTaxCodeRequest | The details of the tax code to create. (optional)

    try:
        # Creates a new tax code.
        api_response = api_instance.post_taxcodes(zf_tuuid, create_tax_code_request=create_tax_code_request)
        print("The response of TaxCodesApi->post_taxcodes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TaxCodesApi->post_taxcodes: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **create_tax_code_request** | [**CreateTaxCodeRequest**](CreateTaxCodeRequest.md)| The details of the tax code to create. | [optional] 

### Return type

[**TaxCodeDTOApiResponseDTO**](TaxCodeDTOApiResponseDTO.md)

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

# **post_taxcodes_taxcodeuuid**
> TaxCodeDTOApiResponseDTO post_taxcodes_taxcodeuuid(taxcodeuuid, zf_tuuid, zf_ouuid, create_tax_code_request=create_tax_code_request)

Updates an existing tax code.

Updates an existing tax code.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.create_tax_code_request import CreateTaxCodeRequest
from configuration_client.models.tax_code_dto_api_response_dto import TaxCodeDTOApiResponseDTO
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
    api_instance = configuration_client.TaxCodesApi(api_client)
    taxcodeuuid = 'taxcodeuuid_example' # str | The unique identifier of the tax code to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_tax_code_request = {"name":"string","rates":[{"rate":0,"startDateTime":"string","endDateTime":"string"}]} # CreateTaxCodeRequest | The updated tax code details. (optional)

    try:
        # Updates an existing tax code.
        api_response = api_instance.post_taxcodes_taxcodeuuid(taxcodeuuid, zf_tuuid, zf_ouuid, create_tax_code_request=create_tax_code_request)
        print("The response of TaxCodesApi->post_taxcodes_taxcodeuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TaxCodesApi->post_taxcodes_taxcodeuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxcodeuuid** | **str**| The unique identifier of the tax code to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_tax_code_request** | [**CreateTaxCodeRequest**](CreateTaxCodeRequest.md)| The updated tax code details. | [optional] 

### Return type

[**TaxCodeDTOApiResponseDTO**](TaxCodeDTOApiResponseDTO.md)

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

