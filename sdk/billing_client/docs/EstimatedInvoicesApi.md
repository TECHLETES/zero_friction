# billing_client.EstimatedInvoicesApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_estimatedinvoices_bc_billingcompletenessid**](EstimatedInvoicesApi.md#get_estimatedinvoices_bc_billingcompletenessid) | **GET** /EstimatedInvoices/bc/{billingcompletenessid} | Retrieves an estimated invoice by its associated billing completeness ID.
[**get_estimatedinvoices_estimatedinvoiceuuid**](EstimatedInvoicesApi.md#get_estimatedinvoices_estimatedinvoiceuuid) | **GET** /EstimatedInvoices/{estimatedinvoiceuuid} | Retrieves an estimated invoice by its UUID.
[**post_estimatedinvoices_br_billingrelationid**](EstimatedInvoicesApi.md#post_estimatedinvoices_br_billingrelationid) | **POST** /EstimatedInvoices/br/{billingRelationId} | Manually triggers invoice estimation for a specific billing relation.


# **get_estimatedinvoices_bc_billingcompletenessid**
> EstimatedInvoiceDTOApiResponseDTO get_estimatedinvoices_bc_billingcompletenessid(billingcompletenessid, zf_tuuid, zf_ouuid)

Retrieves an estimated invoice by its associated billing completeness ID.

Retrieves an estimated invoice by its associated billing completeness ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.estimated_invoice_dto_api_response_dto import EstimatedInvoiceDTOApiResponseDTO
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.EstimatedInvoicesApi(api_client)
    billingcompletenessid = 'billingcompletenessid_example' # str | The ID of the billing completeness.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves an estimated invoice by its associated billing completeness ID.
        api_response = api_instance.get_estimatedinvoices_bc_billingcompletenessid(billingcompletenessid, zf_tuuid, zf_ouuid)
        print("The response of EstimatedInvoicesApi->get_estimatedinvoices_bc_billingcompletenessid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EstimatedInvoicesApi->get_estimatedinvoices_bc_billingcompletenessid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billingcompletenessid** | **str**| The ID of the billing completeness. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**EstimatedInvoiceDTOApiResponseDTO**](EstimatedInvoiceDTOApiResponseDTO.md)

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

# **get_estimatedinvoices_estimatedinvoiceuuid**
> EstimatedInvoiceDTOApiResponseDTO get_estimatedinvoices_estimatedinvoiceuuid(estimatedinvoiceuuid, zf_tuuid, zf_ouuid)

Retrieves an estimated invoice by its UUID.

Retrieves an estimated invoice by its UUID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.estimated_invoice_dto_api_response_dto import EstimatedInvoiceDTOApiResponseDTO
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.EstimatedInvoicesApi(api_client)
    estimatedinvoiceuuid = 'estimatedinvoiceuuid_example' # str | The UUID of the estimated invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves an estimated invoice by its UUID.
        api_response = api_instance.get_estimatedinvoices_estimatedinvoiceuuid(estimatedinvoiceuuid, zf_tuuid, zf_ouuid)
        print("The response of EstimatedInvoicesApi->get_estimatedinvoices_estimatedinvoiceuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EstimatedInvoicesApi->get_estimatedinvoices_estimatedinvoiceuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **estimatedinvoiceuuid** | **str**| The UUID of the estimated invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**EstimatedInvoiceDTOApiResponseDTO**](EstimatedInvoiceDTOApiResponseDTO.md)

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

# **post_estimatedinvoices_br_billingrelationid**
> BooleanApiResponseDTO post_estimatedinvoices_br_billingrelationid(billing_relation_id, zf_tuuid, zf_ouuid)

Manually triggers invoice estimation for a specific billing relation.

Manually triggers invoice estimation for a specific billing relation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from billing_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/bill
# See configuration.py for a list of all supported configuration parameters.
configuration = billing_client.Configuration(
    host = "https://api.zerofriction.co/api/bill"
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
with billing_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = billing_client.EstimatedInvoicesApi(api_client)
    billing_relation_id = 'billing_relation_id_example' # str | The ID of the billing relation.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Manually triggers invoice estimation for a specific billing relation.
        api_response = api_instance.post_estimatedinvoices_br_billingrelationid(billing_relation_id, zf_tuuid, zf_ouuid)
        print("The response of EstimatedInvoicesApi->post_estimatedinvoices_br_billingrelationid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EstimatedInvoicesApi->post_estimatedinvoices_br_billingrelationid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billing_relation_id** | **str**| The ID of the billing relation. | 
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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

