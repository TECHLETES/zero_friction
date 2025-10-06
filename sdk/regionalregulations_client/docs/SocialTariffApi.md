# regionalregulations_client.SocialTariffApi

All URIs are relative to *https://api.zerofriction.co/api/reg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_socialtariff_exports_delete_bulk**](SocialTariffApi.md#delete_socialtariff_exports_delete_bulk) | **DELETE** /SocialTariff/exports/delete/bulk | Deletes multiple social tariff exports in bulk.
[**delete_socialtariff_exports_expuuid**](SocialTariffApi.md#delete_socialtariff_exports_expuuid) | **DELETE** /SocialTariff/exports/{expuuid} | Deletes a specific social tariff export.
[**get_socialtariff_exports**](SocialTariffApi.md#get_socialtariff_exports) | **GET** /SocialTariff/exports | Retrieves a paginated list of all social tariff exports.
[**post_socialtariff_export_download_bulk**](SocialTariffApi.md#post_socialtariff_export_download_bulk) | **POST** /SocialTariff/export/download/bulk | Downloads multiple social tariff exports as a ZIP archive.
[**post_socialtariff_exports**](SocialTariffApi.md#post_socialtariff_exports) | **POST** /SocialTariff/exports | Legacy endpoint for creating a social tariff export.  Maintained for backwards compatibility.  Redirects to the CreateExportCustomerPortfolio method.
[**post_socialtariff_exports_claimsprotectedcustomers**](SocialTariffApi.md#post_socialtariff_exports_claimsprotectedcustomers) | **POST** /SocialTariff/exports/claimsProtectedCustomers | Creates a social tariff export for claims protected customers.
[**post_socialtariff_exports_customerportfolio**](SocialTariffApi.md#post_socialtariff_exports_customerportfolio) | **POST** /SocialTariff/exports/customerPortfolio | Creates a social tariff export for customer portfolio.
[**post_socialtariff_exports_expuuid_download**](SocialTariffApi.md#post_socialtariff_exports_expuuid_download) | **POST** /SocialTariff/exports/{expuuid}/download | Downloads a specific social tariff export file.


# **delete_socialtariff_exports_delete_bulk**
> ApiResponseDTO delete_socialtariff_exports_delete_bulk(zf_tuuid, zf_ouuid, bulk_delete_social_tariffs_request=bulk_delete_social_tariffs_request)

Deletes multiple social tariff exports in bulk.

Deletes multiple social tariff exports in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dto import ApiResponseDTO
from regionalregulations_client.models.bulk_delete_social_tariffs_request import BulkDeleteSocialTariffsRequest
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.SocialTariffApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_delete_social_tariffs_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"]},"quickFilter":"string"} # BulkDeleteSocialTariffsRequest | The request containing the identifiers of exports to delete. (optional)

    try:
        # Deletes multiple social tariff exports in bulk.
        api_response = api_instance.delete_socialtariff_exports_delete_bulk(zf_tuuid, zf_ouuid, bulk_delete_social_tariffs_request=bulk_delete_social_tariffs_request)
        print("The response of SocialTariffApi->delete_socialtariff_exports_delete_bulk:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SocialTariffApi->delete_socialtariff_exports_delete_bulk: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_delete_social_tariffs_request** | [**BulkDeleteSocialTariffsRequest**](BulkDeleteSocialTariffsRequest.md)| The request containing the identifiers of exports to delete. | [optional] 

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

# **delete_socialtariff_exports_expuuid**
> BooleanApiResponseDTO delete_socialtariff_exports_expuuid(expuuid, zf_tuuid, zf_ouuid)

Deletes a specific social tariff export.

Deletes a specific social tariff export.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.SocialTariffApi(api_client)
    expuuid = 'expuuid_example' # str | The unique identifier of the export to delete.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes a specific social tariff export.
        api_response = api_instance.delete_socialtariff_exports_expuuid(expuuid, zf_tuuid, zf_ouuid)
        print("The response of SocialTariffApi->delete_socialtariff_exports_expuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SocialTariffApi->delete_socialtariff_exports_expuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expuuid** | **str**| The unique identifier of the export to delete. | 
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
**404** | Not Found |  -  |
**204** | No Content |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_socialtariff_exports**
> SocialTariffExportDTOPagedResponseModelDTOApiResponseDTO get_socialtariff_exports(zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token)

Retrieves a paginated list of all social tariff exports.

Retrieves a paginated list of all social tariff exports.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.social_tariff_export_dto_paged_response_model_dto_api_response_dto import SocialTariffExportDTOPagedResponseModelDTOApiResponseDTO
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.SocialTariffApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    order_by = 'order_by_example' # str | The property to order the results by. (optional)
    continuation_token = 'continuation_token_example' # str | The token for continuation of paged results. (optional)

    try:
        # Retrieves a paginated list of all social tariff exports.
        api_response = api_instance.get_socialtariff_exports(zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token)
        print("The response of SocialTariffApi->get_socialtariff_exports:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SocialTariffApi->get_socialtariff_exports: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **order_by** | **str**| The property to order the results by. | [optional] 
 **continuation_token** | **str**| The token for continuation of paged results. | [optional] 

### Return type

[**SocialTariffExportDTOPagedResponseModelDTOApiResponseDTO**](SocialTariffExportDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **post_socialtariff_export_download_bulk**
> bytearray post_socialtariff_export_download_bulk(zf_tuuid, zf_ouuid, bulk_download_social_tariffs_request=bulk_download_social_tariffs_request)

Downloads multiple social tariff exports as a ZIP archive.

Downloads multiple social tariff exports as a ZIP archive.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.bulk_download_social_tariffs_request import BulkDownloadSocialTariffsRequest
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.SocialTariffApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_download_social_tariffs_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"]},"quickFilter":"string","socialTariffIds":["string"]} # BulkDownloadSocialTariffsRequest | The request containing the identifiers of exports to include in the ZIP file. (optional)

    try:
        # Downloads multiple social tariff exports as a ZIP archive.
        api_response = api_instance.post_socialtariff_export_download_bulk(zf_tuuid, zf_ouuid, bulk_download_social_tariffs_request=bulk_download_social_tariffs_request)
        print("The response of SocialTariffApi->post_socialtariff_export_download_bulk:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SocialTariffApi->post_socialtariff_export_download_bulk: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_download_social_tariffs_request** | [**BulkDownloadSocialTariffsRequest**](BulkDownloadSocialTariffsRequest.md)| The request containing the identifiers of exports to include in the ZIP file. | [optional] 

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

# **post_socialtariff_exports**
> SocialTariffExportDTOApiResponseDTO post_socialtariff_exports(zf_tuuid, zf_ouuid, create_customer_portfolio_social_tariff_export_request=create_customer_portfolio_social_tariff_export_request)

Legacy endpoint for creating a social tariff export.  Maintained for backwards compatibility.  Redirects to the CreateExportCustomerPortfolio method.

Legacy endpoint for creating a social tariff export.
Maintained for backwards compatibility.
Redirects to the CreateExportCustomerPortfolio method.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.create_customer_portfolio_social_tariff_export_request import CreateCustomerPortfolioSocialTariffExportRequest
from regionalregulations_client.models.social_tariff_export_dto_api_response_dto import SocialTariffExportDTOApiResponseDTO
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.SocialTariffApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_customer_portfolio_social_tariff_export_request = {"startDateTime":"string","endDateTime":"string","onlyMutations":true} # CreateCustomerPortfolioSocialTariffExportRequest | The request containing parameters for the export creation. (optional)

    try:
        # Legacy endpoint for creating a social tariff export.  Maintained for backwards compatibility.  Redirects to the CreateExportCustomerPortfolio method.
        api_response = api_instance.post_socialtariff_exports(zf_tuuid, zf_ouuid, create_customer_portfolio_social_tariff_export_request=create_customer_portfolio_social_tariff_export_request)
        print("The response of SocialTariffApi->post_socialtariff_exports:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SocialTariffApi->post_socialtariff_exports: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_customer_portfolio_social_tariff_export_request** | [**CreateCustomerPortfolioSocialTariffExportRequest**](CreateCustomerPortfolioSocialTariffExportRequest.md)| The request containing parameters for the export creation. | [optional] 

### Return type

[**SocialTariffExportDTOApiResponseDTO**](SocialTariffExportDTOApiResponseDTO.md)

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

# **post_socialtariff_exports_claimsprotectedcustomers**
> SocialTariffExportDTOApiResponseDTO post_socialtariff_exports_claimsprotectedcustomers(zf_tuuid, zf_ouuid, create_claims_protected_customers_social_tariff_export_request=create_claims_protected_customers_social_tariff_export_request)

Creates a social tariff export for claims protected customers.

Creates a social tariff export for claims protected customers.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.create_claims_protected_customers_social_tariff_export_request import CreateClaimsProtectedCustomersSocialTariffExportRequest
from regionalregulations_client.models.social_tariff_export_dto_api_response_dto import SocialTariffExportDTOApiResponseDTO
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.SocialTariffApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_claims_protected_customers_social_tariff_export_request = {"year":0} # CreateClaimsProtectedCustomersSocialTariffExportRequest | The request containing parameters for the export creation. (optional)

    try:
        # Creates a social tariff export for claims protected customers.
        api_response = api_instance.post_socialtariff_exports_claimsprotectedcustomers(zf_tuuid, zf_ouuid, create_claims_protected_customers_social_tariff_export_request=create_claims_protected_customers_social_tariff_export_request)
        print("The response of SocialTariffApi->post_socialtariff_exports_claimsprotectedcustomers:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SocialTariffApi->post_socialtariff_exports_claimsprotectedcustomers: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_claims_protected_customers_social_tariff_export_request** | [**CreateClaimsProtectedCustomersSocialTariffExportRequest**](CreateClaimsProtectedCustomersSocialTariffExportRequest.md)| The request containing parameters for the export creation. | [optional] 

### Return type

[**SocialTariffExportDTOApiResponseDTO**](SocialTariffExportDTOApiResponseDTO.md)

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

# **post_socialtariff_exports_customerportfolio**
> SocialTariffExportDTOApiResponseDTO post_socialtariff_exports_customerportfolio(zf_tuuid, zf_ouuid, create_customer_portfolio_social_tariff_export_request=create_customer_portfolio_social_tariff_export_request)

Creates a social tariff export for customer portfolio.

Creates a social tariff export for customer portfolio.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.create_customer_portfolio_social_tariff_export_request import CreateCustomerPortfolioSocialTariffExportRequest
from regionalregulations_client.models.social_tariff_export_dto_api_response_dto import SocialTariffExportDTOApiResponseDTO
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.SocialTariffApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_customer_portfolio_social_tariff_export_request = {"startDateTime":"string","endDateTime":"string","onlyMutations":true} # CreateCustomerPortfolioSocialTariffExportRequest | The request containing parameters for the export creation. (optional)

    try:
        # Creates a social tariff export for customer portfolio.
        api_response = api_instance.post_socialtariff_exports_customerportfolio(zf_tuuid, zf_ouuid, create_customer_portfolio_social_tariff_export_request=create_customer_portfolio_social_tariff_export_request)
        print("The response of SocialTariffApi->post_socialtariff_exports_customerportfolio:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SocialTariffApi->post_socialtariff_exports_customerportfolio: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_customer_portfolio_social_tariff_export_request** | [**CreateCustomerPortfolioSocialTariffExportRequest**](CreateCustomerPortfolioSocialTariffExportRequest.md)| The request containing parameters for the export creation. | [optional] 

### Return type

[**SocialTariffExportDTOApiResponseDTO**](SocialTariffExportDTOApiResponseDTO.md)

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

# **post_socialtariff_exports_expuuid_download**
> bytearray post_socialtariff_exports_expuuid_download(expuuid, zf_tuuid, zf_ouuid)

Downloads a specific social tariff export file.

Downloads a specific social tariff export file.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.SocialTariffApi(api_client)
    expuuid = 'expuuid_example' # str | The unique identifier of the export to download.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Downloads a specific social tariff export file.
        api_response = api_instance.post_socialtariff_exports_expuuid_download(expuuid, zf_tuuid, zf_ouuid)
        print("The response of SocialTariffApi->post_socialtariff_exports_expuuid_download:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SocialTariffApi->post_socialtariff_exports_expuuid_download: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expuuid** | **str**| The unique identifier of the export to download. | 
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
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

