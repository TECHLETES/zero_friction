# billing_client.IncomingInvoicesApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_incominginvoices_incominginvoiceid**](IncomingInvoicesApi.md#delete_incominginvoices_incominginvoiceid) | **DELETE** /IncomingInvoices/{incominginvoiceid} | Deletes a specific incoming invoice by its ID.
[**get_incominginvoices**](IncomingInvoicesApi.md#get_incominginvoices) | **GET** /IncomingInvoices | Retrieves all incoming invoices based on the provided query parameters.
[**get_incominginvoices_incominginvoiceid**](IncomingInvoicesApi.md#get_incominginvoices_incominginvoiceid) | **GET** /IncomingInvoices/{incominginvoiceid} | Retrieves a specific incoming invoice by its ID.
[**post_incominginvoices**](IncomingInvoicesApi.md#post_incominginvoices) | **POST** /IncomingInvoices | Creates a new incoming invoice.
[**post_incominginvoices_incominginvoiceid**](IncomingInvoicesApi.md#post_incominginvoices_incominginvoiceid) | **POST** /IncomingInvoices/{incominginvoiceid} | Updates a specific incoming invoice by its ID.


# **delete_incominginvoices_incominginvoiceid**
> BooleanApiResponseDTO delete_incominginvoices_incominginvoiceid(incominginvoiceid, zf_tuuid, zf_ouuid)

Deletes a specific incoming invoice by its ID.

Deletes a specific incoming invoice by its ID.

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
    api_instance = billing_client.IncomingInvoicesApi(api_client)
    incominginvoiceid = 'incominginvoiceid_example' # str | ID of the incoming invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes a specific incoming invoice by its ID.
        api_response = api_instance.delete_incominginvoices_incominginvoiceid(incominginvoiceid, zf_tuuid, zf_ouuid)
        print("The response of IncomingInvoicesApi->delete_incominginvoices_incominginvoiceid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingInvoicesApi->delete_incominginvoices_incominginvoiceid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incominginvoiceid** | **str**| ID of the incoming invoice. | 
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_incominginvoices**
> IncomingInvoiceDTOPagedResponseModelDTOApiResponseDTO get_incominginvoices(zf_tuuid, zf_ouuid, property_group_id=property_group_id, order_by=order_by, continuation_token=continuation_token)

Retrieves all incoming invoices based on the provided query parameters.

Retrieves all incoming invoices based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_invoice_dto_paged_response_model_dto_api_response_dto import IncomingInvoiceDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.IncomingInvoicesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    property_group_id = 'property_group_id_example' # str | ID of the property group to filter invoices. (optional)
    order_by = 'order_by_example' # str | Order by clause for sorting invoices. (optional)
    continuation_token = 'continuation_token_example' # str | Continuation token for pagination. (optional)

    try:
        # Retrieves all incoming invoices based on the provided query parameters.
        api_response = api_instance.get_incominginvoices(zf_tuuid, zf_ouuid, property_group_id=property_group_id, order_by=order_by, continuation_token=continuation_token)
        print("The response of IncomingInvoicesApi->get_incominginvoices:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingInvoicesApi->get_incominginvoices: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **property_group_id** | **str**| ID of the property group to filter invoices. | [optional] 
 **order_by** | **str**| Order by clause for sorting invoices. | [optional] 
 **continuation_token** | **str**| Continuation token for pagination. | [optional] 

### Return type

[**IncomingInvoiceDTOPagedResponseModelDTOApiResponseDTO**](IncomingInvoiceDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_incominginvoices_incominginvoiceid**
> IncomingInvoiceDTOApiResponseDTO get_incominginvoices_incominginvoiceid(incominginvoiceid, zf_tuuid, zf_ouuid)

Retrieves a specific incoming invoice by its ID.

Retrieves a specific incoming invoice by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_invoice_dto_api_response_dto import IncomingInvoiceDTOApiResponseDTO
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
    api_instance = billing_client.IncomingInvoicesApi(api_client)
    incominginvoiceid = 'incominginvoiceid_example' # str | ID of the incoming invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific incoming invoice by its ID.
        api_response = api_instance.get_incominginvoices_incominginvoiceid(incominginvoiceid, zf_tuuid, zf_ouuid)
        print("The response of IncomingInvoicesApi->get_incominginvoices_incominginvoiceid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingInvoicesApi->get_incominginvoices_incominginvoiceid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incominginvoiceid** | **str**| ID of the incoming invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**IncomingInvoiceDTOApiResponseDTO**](IncomingInvoiceDTOApiResponseDTO.md)

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

# **post_incominginvoices**
> IncomingInvoiceDTOApiResponseDTO post_incominginvoices(zf_tuuid, zf_ouuid, create_incoming_invoice_request=create_incoming_invoice_request)

Creates a new incoming invoice.

Creates a new incoming invoice.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.create_incoming_invoice_request import CreateIncomingInvoiceRequest
from billing_client.models.incoming_invoice_dto_api_response_dto import IncomingInvoiceDTOApiResponseDTO
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
    api_instance = billing_client.IncomingInvoicesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_incoming_invoice_request = {"propertyGroupId":"string","invoiceNumber":"string","invoiceDate":"string","description":"string","startDate":"string","endDate":"string","totalAmountExclVat":0,"totalAmountInclVat":0} # CreateIncomingInvoiceRequest | Request containing the details of the incoming invoice to create. (optional)

    try:
        # Creates a new incoming invoice.
        api_response = api_instance.post_incominginvoices(zf_tuuid, zf_ouuid, create_incoming_invoice_request=create_incoming_invoice_request)
        print("The response of IncomingInvoicesApi->post_incominginvoices:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingInvoicesApi->post_incominginvoices: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_incoming_invoice_request** | [**CreateIncomingInvoiceRequest**](CreateIncomingInvoiceRequest.md)| Request containing the details of the incoming invoice to create. | [optional] 

### Return type

[**IncomingInvoiceDTOApiResponseDTO**](IncomingInvoiceDTOApiResponseDTO.md)

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

# **post_incominginvoices_incominginvoiceid**
> IncomingInvoiceDTOApiResponseDTO post_incominginvoices_incominginvoiceid(incominginvoiceid, zf_tuuid, zf_ouuid, update_incoming_invoice_request=update_incoming_invoice_request)

Updates a specific incoming invoice by its ID.

Updates a specific incoming invoice by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_invoice_dto_api_response_dto import IncomingInvoiceDTOApiResponseDTO
from billing_client.models.update_incoming_invoice_request import UpdateIncomingInvoiceRequest
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
    api_instance = billing_client.IncomingInvoicesApi(api_client)
    incominginvoiceid = 'incominginvoiceid_example' # str | ID of the incoming invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_incoming_invoice_request = {"invoiceDate":"string","description":"string","startDate":"string","endDate":"string","totalAmountExclVat":0,"totalAmountInclVat":0} # UpdateIncomingInvoiceRequest | Request containing the updated details of the incoming invoice. (optional)

    try:
        # Updates a specific incoming invoice by its ID.
        api_response = api_instance.post_incominginvoices_incominginvoiceid(incominginvoiceid, zf_tuuid, zf_ouuid, update_incoming_invoice_request=update_incoming_invoice_request)
        print("The response of IncomingInvoicesApi->post_incominginvoices_incominginvoiceid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IncomingInvoicesApi->post_incominginvoices_incominginvoiceid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incominginvoiceid** | **str**| ID of the incoming invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_incoming_invoice_request** | [**UpdateIncomingInvoiceRequest**](UpdateIncomingInvoiceRequest.md)| Request containing the updated details of the incoming invoice. | [optional] 

### Return type

[**IncomingInvoiceDTOApiResponseDTO**](IncomingInvoiceDTOApiResponseDTO.md)

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

