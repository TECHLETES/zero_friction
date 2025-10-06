# billing_client.InvoicesApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_invoices_invoiceuuid**](InvoicesApi.md#delete_invoices_invoiceuuid) | **DELETE** /Invoices/{invoiceuuid} | Deletes an invoice by its UUID.
[**get_invoices_c_customeruuid**](InvoicesApi.md#get_invoices_c_customeruuid) | **GET** /Invoices/c/{customeruuid} | Retrieves invoices for a specific customer.
[**get_invoices_c_customeruuid_contractuuid**](InvoicesApi.md#get_invoices_c_customeruuid_contractuuid) | **GET** /Invoices/c/{customeruuid}/{contractuuid} | Retrieves invoices for a specific customer and contract.
[**get_invoices_c_customeruuid_contractuuid_productchange**](InvoicesApi.md#get_invoices_c_customeruuid_contractuuid_productchange) | **GET** /Invoices/c/{customeruuid}/{contractuuid}/productchange | Gets invoices that might be credited from a product change.
[**get_invoices_invoiceuuid**](InvoicesApi.md#get_invoices_invoiceuuid) | **GET** /Invoices/{invoiceuuid} | Retrieves an invoice by its UUID.
[**get_invoices_invoiceuuid_notetocustomer**](InvoicesApi.md#get_invoices_invoiceuuid_notetocustomer) | **GET** /Invoices/{invoiceuuid}/notetocustomer | Gets the note to customer from a specific invoice
[**mark_invoice_as_skipped**](InvoicesApi.md#mark_invoice_as_skipped) | **POST** /Invoices/{invoiceuuid}/markskipped | Marks an invoice as skipped.
[**post_invoices**](InvoicesApi.md#post_invoices) | **POST** /Invoices | Creates a new invoice.
[**post_invoices_bulk_approve**](InvoicesApi.md#post_invoices_bulk_approve) | **POST** /Invoices/bulk/approve | Approves multiple invoices in bulk.
[**post_invoices_bulk_changeexportstatus**](InvoicesApi.md#post_invoices_bulk_changeexportstatus) | **POST** /Invoices/bulk/changeexportstatus | Changes the export status of multiple invoices in bulk.
[**post_invoices_bulk_changepaymentdetails**](InvoicesApi.md#post_invoices_bulk_changepaymentdetails) | **POST** /Invoices/bulk/changepaymentdetails | Changes the payment details of multiple invoices in bulk.
[**post_invoices_bulk_credit**](InvoicesApi.md#post_invoices_bulk_credit) | **POST** /Invoices/bulk/credit | Credits multiple invoices in bulk.
[**post_invoices_bulk_delete**](InvoicesApi.md#post_invoices_bulk_delete) | **POST** /Invoices/bulk/delete | Deletes multiple invoices in bulk.
[**post_invoices_bulk_marksent**](InvoicesApi.md#post_invoices_bulk_marksent) | **POST** /Invoices/bulk/marksent | Marks multiple invoices as sent in bulk.
[**post_invoices_bulk_markskipped**](InvoicesApi.md#post_invoices_bulk_markskipped) | **POST** /Invoices/bulk/markskipped | Marks multiple invoices as skipped in bulk.
[**post_invoices_bulk_regenerate**](InvoicesApi.md#post_invoices_bulk_regenerate) | **POST** /Invoices/bulk/regenerate | Regenerates multiple invoices in bulk.
[**post_invoices_bulk_send**](InvoicesApi.md#post_invoices_bulk_send) | **POST** /Invoices/bulk/send | Sends multiple invoices via email in bulk.
[**post_invoices_bulk_sendviapostal**](InvoicesApi.md#post_invoices_bulk_sendviapostal) | **POST** /Invoices/bulk/sendviapostal | Sends multiple invoices via postal mail in bulk.
[**post_invoices_export**](InvoicesApi.md#post_invoices_export) | **POST** /Invoices/export | Triggers the integration export for an invoice.
[**post_invoices_filter**](InvoicesApi.md#post_invoices_filter) | **POST** /Invoices/filter | Retrieves all invoices based on the provided query parameters and filters.
[**post_invoices_filter_overviewcount**](InvoicesApi.md#post_invoices_filter_overviewcount) | **POST** /Invoices/filter/overviewcount | Retrieves the overview count of invoices based on the provided query parameters.
[**post_invoices_invoiceuuid_approve**](InvoicesApi.md#post_invoices_invoiceuuid_approve) | **POST** /Invoices/{invoiceuuid}/approve | Approves an invoice.
[**post_invoices_invoiceuuid_changeexportstatus**](InvoicesApi.md#post_invoices_invoiceuuid_changeexportstatus) | **POST** /Invoices/{invoiceuuid}/changeexportstatus | Changes the export status of an invoice.
[**post_invoices_invoiceuuid_changenewadvanceamount**](InvoicesApi.md#post_invoices_invoiceuuid_changenewadvanceamount) | **POST** /Invoices/{invoiceuuid}/changenewadvanceamount | Changes the new advance amount of an invoice.
[**post_invoices_invoiceuuid_changepaymentdetails**](InvoicesApi.md#post_invoices_invoiceuuid_changepaymentdetails) | **POST** /Invoices/{invoiceuuid}/changepaymentdetails | Changes the payment method of an invoice.
[**post_invoices_invoiceuuid_credit**](InvoicesApi.md#post_invoices_invoiceuuid_credit) | **POST** /Invoices/{invoiceuuid}/credit | Credits an invoice.
[**post_invoices_invoiceuuid_marksent**](InvoicesApi.md#post_invoices_invoiceuuid_marksent) | **POST** /Invoices/{invoiceuuid}/marksent | Marks an invoice as sent.
[**post_invoices_invoiceuuid_notetocustomer**](InvoicesApi.md#post_invoices_invoiceuuid_notetocustomer) | **POST** /Invoices/{invoiceuuid}/notetocustomer | Update the note to customer from a specific invoice
[**post_invoices_invoiceuuid_preview**](InvoicesApi.md#post_invoices_invoiceuuid_preview) | **POST** /Invoices/{invoiceuuid}/preview | Credits multiple invoices in bulk.
[**post_invoices_invoiceuuid_previewpdf**](InvoicesApi.md#post_invoices_invoiceuuid_previewpdf) | **POST** /Invoices/{invoiceuuid}/previewpdf | Previews an invoice as a PDF.
[**post_invoices_invoiceuuid_regenerate**](InvoicesApi.md#post_invoices_invoiceuuid_regenerate) | **POST** /Invoices/{invoiceuuid}/regenerate | Regenerates an invoice.
[**post_invoices_invoiceuuid_replacedocument**](InvoicesApi.md#post_invoices_invoiceuuid_replacedocument) | **POST** /Invoices/{invoiceuuid}/replacedocument | Replaces the document of an invoice.
[**post_invoices_invoiceuuid_send**](InvoicesApi.md#post_invoices_invoiceuuid_send) | **POST** /Invoices/{invoiceuuid}/send | Sends an invoice via email.
[**post_invoices_invoiceuuid_sendviapostal**](InvoicesApi.md#post_invoices_invoiceuuid_sendviapostal) | **POST** /Invoices/{invoiceuuid}/sendviapostal | Sends an invoice via postal mail.


# **delete_invoices_invoiceuuid**
> BooleanApiResponseDTO delete_invoices_invoiceuuid(invoiceuuid, zf_tuuid, zf_ouuid)

Deletes an invoice by its UUID.

Deletes an invoice by its UUID.

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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | The UUID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes an invoice by its UUID.
        api_response = api_instance.delete_invoices_invoiceuuid(invoiceuuid, zf_tuuid, zf_ouuid)
        print("The response of InvoicesApi->delete_invoices_invoiceuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->delete_invoices_invoiceuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**| The UUID of the invoice. | 
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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_invoices_c_customeruuid**
> InvoiceDTOPagedResponseModelDTOApiResponseDTO get_invoices_c_customeruuid(customeruuid, zf_tuuid, zf_ouuid, order_by=order_by)

Retrieves invoices for a specific customer.

Retrieves invoices for a specific customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.invoice_dto_paged_response_model_dto_api_response_dto import InvoiceDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    customeruuid = 'customeruuid_example' # str | The UUID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    order_by = 'order_by_example' # str | The order by clause. (optional)

    try:
        # Retrieves invoices for a specific customer.
        api_response = api_instance.get_invoices_c_customeruuid(customeruuid, zf_tuuid, zf_ouuid, order_by=order_by)
        print("The response of InvoicesApi->get_invoices_c_customeruuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->get_invoices_c_customeruuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The UUID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **order_by** | **str**| The order by clause. | [optional] 

### Return type

[**InvoiceDTOPagedResponseModelDTOApiResponseDTO**](InvoiceDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_invoices_c_customeruuid_contractuuid**
> InvoiceDTOPagedResponseModelDTOApiResponseDTO get_invoices_c_customeruuid_contractuuid(customeruuid, contractuuid, zf_tuuid, zf_ouuid, order_by=order_by)

Retrieves invoices for a specific customer and contract.

Retrieves invoices for a specific customer and contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.invoice_dto_paged_response_model_dto_api_response_dto import InvoiceDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    customeruuid = 'customeruuid_example' # str | The UUID of the customer.
    contractuuid = 'contractuuid_example' # str | The UUID of the contract.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    order_by = 'order_by_example' # str | The order by clause. (optional)

    try:
        # Retrieves invoices for a specific customer and contract.
        api_response = api_instance.get_invoices_c_customeruuid_contractuuid(customeruuid, contractuuid, zf_tuuid, zf_ouuid, order_by=order_by)
        print("The response of InvoicesApi->get_invoices_c_customeruuid_contractuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->get_invoices_c_customeruuid_contractuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The UUID of the customer. | 
 **contractuuid** | **str**| The UUID of the contract. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **order_by** | **str**| The order by clause. | [optional] 

### Return type

[**InvoiceDTOPagedResponseModelDTOApiResponseDTO**](InvoiceDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_invoices_c_customeruuid_contractuuid_productchange**
> InvoiceDTOPagedResponseModelDTOApiResponseDTO get_invoices_c_customeruuid_contractuuid_productchange(customeruuid, contractuuid, zf_tuuid, zf_ouuid, start_date=start_date, order_by=order_by)

Gets invoices that might be credited from a product change.

Gets invoices that might be credited from a product change.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.invoice_dto_paged_response_model_dto_api_response_dto import InvoiceDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    customeruuid = 'customeruuid_example' # str | The UUID of the customer.
    contractuuid = 'contractuuid_example' # str | The UUID of the contract.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    start_date = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). The start date for the product change. (optional)
    order_by = 'order_by_example' # str | The order by clause. (optional)

    try:
        # Gets invoices that might be credited from a product change.
        api_response = api_instance.get_invoices_c_customeruuid_contractuuid_productchange(customeruuid, contractuuid, zf_tuuid, zf_ouuid, start_date=start_date, order_by=order_by)
        print("The response of InvoicesApi->get_invoices_c_customeruuid_contractuuid_productchange:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->get_invoices_c_customeruuid_contractuuid_productchange: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The UUID of the customer. | 
 **contractuuid** | **str**| The UUID of the contract. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **start_date** | **datetime**| Format - date-time (as date-time in RFC3339). The start date for the product change. | [optional] 
 **order_by** | **str**| The order by clause. | [optional] 

### Return type

[**InvoiceDTOPagedResponseModelDTOApiResponseDTO**](InvoiceDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_invoices_invoiceuuid**
> InvoiceDTOApiResponseDTO get_invoices_invoiceuuid(invoiceuuid, zf_tuuid, zf_ouuid)

Retrieves an invoice by its UUID.

Retrieves an invoice by its UUID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | The UUID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves an invoice by its UUID.
        api_response = api_instance.get_invoices_invoiceuuid(invoiceuuid, zf_tuuid, zf_ouuid)
        print("The response of InvoicesApi->get_invoices_invoiceuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->get_invoices_invoiceuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**| The UUID of the invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **get_invoices_invoiceuuid_notetocustomer**
> StringApiResponseDTO get_invoices_invoiceuuid_notetocustomer(invoiceuuid, zf_tuuid, zf_ouuid)

Gets the note to customer from a specific invoice

Gets the note to customer from a specific invoice

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.string_api_response_dto import StringApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | The UUID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Gets the note to customer from a specific invoice
        api_response = api_instance.get_invoices_invoiceuuid_notetocustomer(invoiceuuid, zf_tuuid, zf_ouuid)
        print("The response of InvoicesApi->get_invoices_invoiceuuid_notetocustomer:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->get_invoices_invoiceuuid_notetocustomer: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**| The UUID of the invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**StringApiResponseDTO**](StringApiResponseDTO.md)

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

# **mark_invoice_as_skipped**
> InvoiceDTOApiResponseDTO mark_invoice_as_skipped(invoiceuuid, zf_tuuid, zf_ouuid)

Marks an invoice as skipped.

Marks an invoice as skipped.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | The UUID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Marks an invoice as skipped.
        api_response = api_instance.mark_invoice_as_skipped(invoiceuuid, zf_tuuid, zf_ouuid)
        print("The response of InvoicesApi->mark_invoice_as_skipped:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->mark_invoice_as_skipped: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**| The UUID of the invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices**
> InvoiceDTOApiResponseDTO post_invoices(zf_tuuid, zf_ouuid, create_invoice_request=create_invoice_request)

Creates a new invoice.

Creates a new invoice.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.create_invoice_request import CreateInvoiceRequest
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_invoice_request = {"invoiceNum":"string","status":{},"invoiceDate":"string","invoiceType":{},"remainingInvoiceAmount":0,"totalInvoiceAmountExclVAT":0,"totalInvoiceAmountInclVAT":0,"contractId":"string","creditedInvoiceId":"string","contractNumber":"string","customerId":"string","companyBankAccountId":"string","propertyGroups":[{"id":"string","name":"string"}],"paymentMethod":{},"paymentReference":"string","externalReference":"string","periodStartDateTime":"string","periodEndDateTime":"string","dueDate":"string","noteToCustomer":"string","sent":{},"lines":[{"quantity":0,"unitOfMeasure":{},"billingItemId":"string","unitPrice":0,"amountInclVAT":0,"amountExclVAT":0,"lineType":{},"serviceLocationId":"string","startDateTime":"string","endDateTime":"string","taxCodeId":"string","description":"string"}]} # CreateInvoiceRequest | The request containing the invoice details. (optional)

    try:
        # Creates a new invoice.
        api_response = api_instance.post_invoices(zf_tuuid, zf_ouuid, create_invoice_request=create_invoice_request)
        print("The response of InvoicesApi->post_invoices:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_invoice_request** | [**CreateInvoiceRequest**](CreateInvoiceRequest.md)| The request containing the invoice details. | [optional] 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_bulk_approve**
> InvoiceDTOApiResponseDTO post_invoices_bulk_approve(zf_tuuid, zf_ouuid, bulk_approve_invoice_request=bulk_approve_invoice_request)

Approves multiple invoices in bulk.

Approves multiple invoices in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.bulk_approve_invoice_request import BulkApproveInvoiceRequest
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_approve_invoice_request = {"invoiceDate":"string","onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"invoiceType":["string"],"propertyGroupIds":["string"],"productId":"string","customerId":"string","contractId":"string","invoiceStatus":["string"],"paymentProcessStatus":["string"],"billingCompletenessId":"string","paymentMethod":"string","startDateTime":"string","endDateTime":"string","periodStartDateTime":"string","periodEndDateTime":"string","periodStartDateTimeBegin":"string","periodStartDateTimeEnd":"string","periodEndDateTimeBegin":"string","periodEndDateTimeEnd":"string","paidDateTimeBegin":"string","exportStatus":"string","collectionCaseId":"string","customerGroupId":"string","companyBankAccountId":"string"},"quickFilter":"string"} # BulkApproveInvoiceRequest | The bulk approve invoice request containing the details of the invoices to be approved. (optional)

    try:
        # Approves multiple invoices in bulk.
        api_response = api_instance.post_invoices_bulk_approve(zf_tuuid, zf_ouuid, bulk_approve_invoice_request=bulk_approve_invoice_request)
        print("The response of InvoicesApi->post_invoices_bulk_approve:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_bulk_approve: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_approve_invoice_request** | [**BulkApproveInvoiceRequest**](BulkApproveInvoiceRequest.md)| The bulk approve invoice request containing the details of the invoices to be approved. | [optional] 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_bulk_changeexportstatus**
> InvoiceDTOApiResponseDTO post_invoices_bulk_changeexportstatus(zf_tuuid, zf_ouuid, bulk_change_export_status_request=bulk_change_export_status_request)

Changes the export status of multiple invoices in bulk.

Changes the export status of multiple invoices in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.bulk_change_export_status_request import BulkChangeExportStatusRequest
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_change_export_status_request = {"exportStatus":{},"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"invoiceType":["string"],"propertyGroupIds":["string"],"productId":"string","customerId":"string","contractId":"string","invoiceStatus":["string"],"paymentProcessStatus":["string"],"billingCompletenessId":"string","paymentMethod":"string","startDateTime":"string","endDateTime":"string","periodStartDateTime":"string","periodEndDateTime":"string","periodStartDateTimeBegin":"string","periodStartDateTimeEnd":"string","periodEndDateTimeBegin":"string","periodEndDateTimeEnd":"string","paidDateTimeBegin":"string","exportStatus":"string","collectionCaseId":"string","customerGroupId":"string","companyBankAccountId":"string"},"quickFilter":"string"} # BulkChangeExportStatusRequest | The bulk change export status request containing the details of the invoices to be updated. (optional)

    try:
        # Changes the export status of multiple invoices in bulk.
        api_response = api_instance.post_invoices_bulk_changeexportstatus(zf_tuuid, zf_ouuid, bulk_change_export_status_request=bulk_change_export_status_request)
        print("The response of InvoicesApi->post_invoices_bulk_changeexportstatus:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_bulk_changeexportstatus: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_change_export_status_request** | [**BulkChangeExportStatusRequest**](BulkChangeExportStatusRequest.md)| The bulk change export status request containing the details of the invoices to be updated. | [optional] 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_bulk_changepaymentdetails**
> InvoiceDTOApiResponseDTO post_invoices_bulk_changepaymentdetails(zf_tuuid, zf_ouuid, bulk_change_payment_details_request=bulk_change_payment_details_request)

Changes the payment details of multiple invoices in bulk.

Changes the payment details of multiple invoices in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.bulk_change_payment_details_request import BulkChangePaymentDetailsRequest
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_change_payment_details_request = {"newPaymentMethod":{},"collectionDate":"string","onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"invoiceType":["string"],"propertyGroupIds":["string"],"productId":"string","customerId":"string","contractId":"string","invoiceStatus":["string"],"paymentProcessStatus":["string"],"billingCompletenessId":"string","paymentMethod":"string","startDateTime":"string","endDateTime":"string","periodStartDateTime":"string","periodEndDateTime":"string","periodStartDateTimeBegin":"string","periodStartDateTimeEnd":"string","periodEndDateTimeBegin":"string","periodEndDateTimeEnd":"string","paidDateTimeBegin":"string","exportStatus":"string","collectionCaseId":"string","customerGroupId":"string","companyBankAccountId":"string"},"quickFilter":"string"} # BulkChangePaymentDetailsRequest | The bulk change payment details request containing the details of the invoices to be updated. (optional)

    try:
        # Changes the payment details of multiple invoices in bulk.
        api_response = api_instance.post_invoices_bulk_changepaymentdetails(zf_tuuid, zf_ouuid, bulk_change_payment_details_request=bulk_change_payment_details_request)
        print("The response of InvoicesApi->post_invoices_bulk_changepaymentdetails:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_bulk_changepaymentdetails: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_change_payment_details_request** | [**BulkChangePaymentDetailsRequest**](BulkChangePaymentDetailsRequest.md)| The bulk change payment details request containing the details of the invoices to be updated. | [optional] 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_bulk_credit**
> InvoiceDTOApiResponseDTO post_invoices_bulk_credit(zf_tuuid, zf_ouuid, bulk_credit_invoice_request=bulk_credit_invoice_request)

Credits multiple invoices in bulk.

Credits multiple invoices in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.bulk_credit_invoice_request import BulkCreditInvoiceRequest
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_credit_invoice_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"invoiceType":["string"],"propertyGroupIds":["string"],"productId":"string","customerId":"string","contractId":"string","invoiceStatus":["string"],"paymentProcessStatus":["string"],"billingCompletenessId":"string","paymentMethod":"string","startDateTime":"string","endDateTime":"string","periodStartDateTime":"string","periodEndDateTime":"string","periodStartDateTimeBegin":"string","periodStartDateTimeEnd":"string","periodEndDateTimeBegin":"string","periodEndDateTimeEnd":"string","paidDateTimeBegin":"string","exportStatus":"string","collectionCaseId":"string","customerGroupId":"string","companyBankAccountId":"string"},"quickFilter":"string"} # BulkCreditInvoiceRequest | The bulk credit invoice request containing the details of the invoices to be credited. (optional)

    try:
        # Credits multiple invoices in bulk.
        api_response = api_instance.post_invoices_bulk_credit(zf_tuuid, zf_ouuid, bulk_credit_invoice_request=bulk_credit_invoice_request)
        print("The response of InvoicesApi->post_invoices_bulk_credit:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_bulk_credit: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_credit_invoice_request** | [**BulkCreditInvoiceRequest**](BulkCreditInvoiceRequest.md)| The bulk credit invoice request containing the details of the invoices to be credited. | [optional] 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_bulk_delete**
> BooleanApiResponseDTO post_invoices_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_invoice_request=bulk_delete_invoice_request)

Deletes multiple invoices in bulk.

Deletes multiple invoices in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from billing_client.models.bulk_delete_invoice_request import BulkDeleteInvoiceRequest
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
    api_instance = billing_client.InvoicesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_delete_invoice_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"invoiceType":["string"],"propertyGroupIds":["string"],"productId":"string","customerId":"string","contractId":"string","invoiceStatus":["string"],"paymentProcessStatus":["string"],"billingCompletenessId":"string","paymentMethod":"string","startDateTime":"string","endDateTime":"string","periodStartDateTime":"string","periodEndDateTime":"string","periodStartDateTimeBegin":"string","periodStartDateTimeEnd":"string","periodEndDateTimeBegin":"string","periodEndDateTimeEnd":"string","paidDateTimeBegin":"string","exportStatus":"string","collectionCaseId":"string","customerGroupId":"string","companyBankAccountId":"string"},"quickFilter":"string"} # BulkDeleteInvoiceRequest | The bulk delete invoice request containing the details of the invoices to be deleted. (optional)

    try:
        # Deletes multiple invoices in bulk.
        api_response = api_instance.post_invoices_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_invoice_request=bulk_delete_invoice_request)
        print("The response of InvoicesApi->post_invoices_bulk_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_bulk_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_delete_invoice_request** | [**BulkDeleteInvoiceRequest**](BulkDeleteInvoiceRequest.md)| The bulk delete invoice request containing the details of the invoices to be deleted. | [optional] 

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

# **post_invoices_bulk_marksent**
> InvoiceDTOApiResponseDTO post_invoices_bulk_marksent(zf_tuuid, zf_ouuid, bulk_mark_invoice_sent_request=bulk_mark_invoice_sent_request)

Marks multiple invoices as sent in bulk.

Marks multiple invoices as sent in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.bulk_mark_invoice_sent_request import BulkMarkInvoiceSentRequest
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_mark_invoice_sent_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"invoiceType":["string"],"propertyGroupIds":["string"],"productId":"string","customerId":"string","contractId":"string","invoiceStatus":["string"],"paymentProcessStatus":["string"],"billingCompletenessId":"string","paymentMethod":"string","startDateTime":"string","endDateTime":"string","periodStartDateTime":"string","periodEndDateTime":"string","periodStartDateTimeBegin":"string","periodStartDateTimeEnd":"string","periodEndDateTimeBegin":"string","periodEndDateTimeEnd":"string","paidDateTimeBegin":"string","exportStatus":"string","collectionCaseId":"string","customerGroupId":"string","companyBankAccountId":"string"},"quickFilter":"string"} # BulkMarkInvoiceSentRequest | The bulk mark invoice sent request containing the details of the invoices to be marked as sent. (optional)

    try:
        # Marks multiple invoices as sent in bulk.
        api_response = api_instance.post_invoices_bulk_marksent(zf_tuuid, zf_ouuid, bulk_mark_invoice_sent_request=bulk_mark_invoice_sent_request)
        print("The response of InvoicesApi->post_invoices_bulk_marksent:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_bulk_marksent: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_mark_invoice_sent_request** | [**BulkMarkInvoiceSentRequest**](BulkMarkInvoiceSentRequest.md)| The bulk mark invoice sent request containing the details of the invoices to be marked as sent. | [optional] 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_bulk_markskipped**
> InvoiceDTOApiResponseDTO post_invoices_bulk_markskipped(zf_tuuid, zf_ouuid, bulk_mark_invoice_sent_skipped_request=bulk_mark_invoice_sent_skipped_request)

Marks multiple invoices as skipped in bulk.

Marks multiple invoices as skipped in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.bulk_mark_invoice_sent_skipped_request import BulkMarkInvoiceSentSkippedRequest
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_mark_invoice_sent_skipped_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"invoiceType":["string"],"propertyGroupIds":["string"],"productId":"string","customerId":"string","contractId":"string","invoiceStatus":["string"],"paymentProcessStatus":["string"],"billingCompletenessId":"string","paymentMethod":"string","startDateTime":"string","endDateTime":"string","periodStartDateTime":"string","periodEndDateTime":"string","periodStartDateTimeBegin":"string","periodStartDateTimeEnd":"string","periodEndDateTimeBegin":"string","periodEndDateTimeEnd":"string","paidDateTimeBegin":"string","exportStatus":"string","collectionCaseId":"string","customerGroupId":"string","companyBankAccountId":"string"},"quickFilter":"string"} # BulkMarkInvoiceSentSkippedRequest | The bulk mark invoice skipped request containing the details of the invoices to be marked as skipped. (optional)

    try:
        # Marks multiple invoices as skipped in bulk.
        api_response = api_instance.post_invoices_bulk_markskipped(zf_tuuid, zf_ouuid, bulk_mark_invoice_sent_skipped_request=bulk_mark_invoice_sent_skipped_request)
        print("The response of InvoicesApi->post_invoices_bulk_markskipped:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_bulk_markskipped: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_mark_invoice_sent_skipped_request** | [**BulkMarkInvoiceSentSkippedRequest**](BulkMarkInvoiceSentSkippedRequest.md)| The bulk mark invoice skipped request containing the details of the invoices to be marked as skipped. | [optional] 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_bulk_regenerate**
> InvoiceDTOApiResponseDTO post_invoices_bulk_regenerate(zf_tuuid, zf_ouuid, bulk_regenerate_invoice_request=bulk_regenerate_invoice_request)

Regenerates multiple invoices in bulk.

Regenerates multiple invoices in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.bulk_regenerate_invoice_request import BulkRegenerateInvoiceRequest
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_regenerate_invoice_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"invoiceType":["string"],"propertyGroupIds":["string"],"productId":"string","customerId":"string","contractId":"string","invoiceStatus":["string"],"paymentProcessStatus":["string"],"billingCompletenessId":"string","paymentMethod":"string","startDateTime":"string","endDateTime":"string","periodStartDateTime":"string","periodEndDateTime":"string","periodStartDateTimeBegin":"string","periodStartDateTimeEnd":"string","periodEndDateTimeBegin":"string","periodEndDateTimeEnd":"string","paidDateTimeBegin":"string","exportStatus":"string","collectionCaseId":"string","customerGroupId":"string","companyBankAccountId":"string"},"quickFilter":"string"} # BulkRegenerateInvoiceRequest | The bulk regenerate invoice request containing the details of the invoices to be regenerated. (optional)

    try:
        # Regenerates multiple invoices in bulk.
        api_response = api_instance.post_invoices_bulk_regenerate(zf_tuuid, zf_ouuid, bulk_regenerate_invoice_request=bulk_regenerate_invoice_request)
        print("The response of InvoicesApi->post_invoices_bulk_regenerate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_bulk_regenerate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_regenerate_invoice_request** | [**BulkRegenerateInvoiceRequest**](BulkRegenerateInvoiceRequest.md)| The bulk regenerate invoice request containing the details of the invoices to be regenerated. | [optional] 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_bulk_send**
> InvoiceDTOApiResponseDTO post_invoices_bulk_send(zf_tuuid, zf_ouuid, bulk_send_invoice_via_mail_request=bulk_send_invoice_via_mail_request)

Sends multiple invoices via email in bulk.

Sends multiple invoices via email in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.bulk_send_invoice_via_mail_request import BulkSendInvoiceViaMailRequest
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_send_invoice_via_mail_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"invoiceType":["string"],"propertyGroupIds":["string"],"productId":"string","customerId":"string","contractId":"string","invoiceStatus":["string"],"paymentProcessStatus":["string"],"billingCompletenessId":"string","paymentMethod":"string","startDateTime":"string","endDateTime":"string","periodStartDateTime":"string","periodEndDateTime":"string","periodStartDateTimeBegin":"string","periodStartDateTimeEnd":"string","periodEndDateTimeBegin":"string","periodEndDateTimeEnd":"string","paidDateTimeBegin":"string","exportStatus":"string","collectionCaseId":"string","customerGroupId":"string","companyBankAccountId":"string"},"quickFilter":"string"} # BulkSendInvoiceViaMailRequest | The bulk send invoice via email request containing the details of the invoices to be sent. (optional)

    try:
        # Sends multiple invoices via email in bulk.
        api_response = api_instance.post_invoices_bulk_send(zf_tuuid, zf_ouuid, bulk_send_invoice_via_mail_request=bulk_send_invoice_via_mail_request)
        print("The response of InvoicesApi->post_invoices_bulk_send:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_bulk_send: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_send_invoice_via_mail_request** | [**BulkSendInvoiceViaMailRequest**](BulkSendInvoiceViaMailRequest.md)| The bulk send invoice via email request containing the details of the invoices to be sent. | [optional] 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_bulk_sendviapostal**
> InvoiceDTOApiResponseDTO post_invoices_bulk_sendviapostal(zf_tuuid, zf_ouuid, bulk_send_invoice_via_postal_request=bulk_send_invoice_via_postal_request)

Sends multiple invoices via postal mail in bulk.

Sends multiple invoices via postal mail in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.bulk_send_invoice_via_postal_request import BulkSendInvoiceViaPostalRequest
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_send_invoice_via_postal_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"invoiceType":["string"],"propertyGroupIds":["string"],"productId":"string","customerId":"string","contractId":"string","invoiceStatus":["string"],"paymentProcessStatus":["string"],"billingCompletenessId":"string","paymentMethod":"string","startDateTime":"string","endDateTime":"string","periodStartDateTime":"string","periodEndDateTime":"string","periodStartDateTimeBegin":"string","periodStartDateTimeEnd":"string","periodEndDateTimeBegin":"string","periodEndDateTimeEnd":"string","paidDateTimeBegin":"string","exportStatus":"string","collectionCaseId":"string","customerGroupId":"string","companyBankAccountId":"string"},"quickFilter":"string"} # BulkSendInvoiceViaPostalRequest | The bulk send invoice via postal request containing the details of the invoices to be sent. (optional)

    try:
        # Sends multiple invoices via postal mail in bulk.
        api_response = api_instance.post_invoices_bulk_sendviapostal(zf_tuuid, zf_ouuid, bulk_send_invoice_via_postal_request=bulk_send_invoice_via_postal_request)
        print("The response of InvoicesApi->post_invoices_bulk_sendviapostal:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_bulk_sendviapostal: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_send_invoice_via_postal_request** | [**BulkSendInvoiceViaPostalRequest**](BulkSendInvoiceViaPostalRequest.md)| The bulk send invoice via postal request containing the details of the invoices to be sent. | [optional] 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_export**
> BooleanApiResponseDTO post_invoices_export(zf_tuuid, zf_ouuid, request_invoice_export_request=request_invoice_export_request)

Triggers the integration export for an invoice.

Triggers the integration export for an invoice.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from billing_client.models.request_invoice_export_request import RequestInvoiceExportRequest
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
    api_instance = billing_client.InvoicesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    request_invoice_export_request = {"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"invoiceType":["string"],"propertyGroupIds":["string"],"productId":"string","customerId":"string","contractId":"string","invoiceStatus":["string"],"paymentProcessStatus":["string"],"billingCompletenessId":"string","paymentMethod":"string","startDateTime":"string","endDateTime":"string","periodStartDateTime":"string","periodEndDateTime":"string","periodStartDateTimeBegin":"string","periodStartDateTimeEnd":"string","periodEndDateTimeBegin":"string","periodEndDateTimeEnd":"string","paidDateTimeBegin":"string","exportStatus":"string","collectionCaseId":"string","customerGroupId":"string","companyBankAccountId":"string"},"quickFilter":"string","configuredPluginId":"string","markAsExported":true} # RequestInvoiceExportRequest | The request containing the export details. (optional)

    try:
        # Triggers the integration export for an invoice.
        api_response = api_instance.post_invoices_export(zf_tuuid, zf_ouuid, request_invoice_export_request=request_invoice_export_request)
        print("The response of InvoicesApi->post_invoices_export:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_export: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **request_invoice_export_request** | [**RequestInvoiceExportRequest**](RequestInvoiceExportRequest.md)| The request containing the export details. | [optional] 

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
**200** | Success |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_invoices_filter**
> InvoiceDTOPagedResponseModelDTOApiResponseDTO post_invoices_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_invoices_query_params=get_invoices_query_params)

Retrieves all invoices based on the provided query parameters and filters.

Retrieves all invoices based on the provided query parameters and filters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.get_invoices_query_params import GetInvoicesQueryParams
from billing_client.models.invoice_dto_paged_response_model_dto_api_response_dto import InvoiceDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    order_by = 'order_by_example' # str | The order by clause. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)
    get_invoices_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"invoiceType":["string"],"propertyGroupIds":["string"],"productId":"string","customerId":"string","contractId":"string","invoiceStatus":["string"],"paymentProcessStatus":["string"],"billingCompletenessId":"string","paymentMethod":"string","startDateTime":"string","endDateTime":"string","periodStartDateTime":"string","periodEndDateTime":"string","periodStartDateTimeBegin":"string","periodStartDateTimeEnd":"string","periodEndDateTimeBegin":"string","periodEndDateTimeEnd":"string","paidDateTimeBegin":"string","exportStatus":"string","collectionCaseId":"string","customerGroupId":"string","companyBankAccountId":"string"} # GetInvoicesQueryParams | The query parameters for filtering invoices. (optional)

    try:
        # Retrieves all invoices based on the provided query parameters and filters.
        api_response = api_instance.post_invoices_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_invoices_query_params=get_invoices_query_params)
        print("The response of InvoicesApi->post_invoices_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **order_by** | **str**| The order by clause. | [optional] 
 **continuation_token** | **str**| The continuation token for pagination. | [optional] 
 **get_invoices_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md)| The query parameters for filtering invoices. | [optional] 

### Return type

[**InvoiceDTOPagedResponseModelDTOApiResponseDTO**](InvoiceDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **post_invoices_filter_overviewcount**
> InvoiceOverviewCountDTOApiResponseDTO post_invoices_filter_overviewcount(zf_tuuid, zf_ouuid, get_invoices_query_params=get_invoices_query_params)

Retrieves the overview count of invoices based on the provided query parameters.

Retrieves the overview count of invoices based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.get_invoices_query_params import GetInvoicesQueryParams
from billing_client.models.invoice_overview_count_dto_api_response_dto import InvoiceOverviewCountDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    get_invoices_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"invoiceType":["string"],"propertyGroupIds":["string"],"productId":"string","customerId":"string","contractId":"string","invoiceStatus":["string"],"paymentProcessStatus":["string"],"billingCompletenessId":"string","paymentMethod":"string","startDateTime":"string","endDateTime":"string","periodStartDateTime":"string","periodEndDateTime":"string","periodStartDateTimeBegin":"string","periodStartDateTimeEnd":"string","periodEndDateTimeBegin":"string","periodEndDateTimeEnd":"string","paidDateTimeBegin":"string","exportStatus":"string","collectionCaseId":"string","customerGroupId":"string","companyBankAccountId":"string"} # GetInvoicesQueryParams | The query parameters for filtering invoices. (optional)

    try:
        # Retrieves the overview count of invoices based on the provided query parameters.
        api_response = api_instance.post_invoices_filter_overviewcount(zf_tuuid, zf_ouuid, get_invoices_query_params=get_invoices_query_params)
        print("The response of InvoicesApi->post_invoices_filter_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_filter_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **get_invoices_query_params** | [**GetInvoicesQueryParams**](GetInvoicesQueryParams.md)| The query parameters for filtering invoices. | [optional] 

### Return type

[**InvoiceOverviewCountDTOApiResponseDTO**](InvoiceOverviewCountDTOApiResponseDTO.md)

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

# **post_invoices_invoiceuuid_approve**
> InvoiceDTOApiResponseDTO post_invoices_invoiceuuid_approve(invoiceuuid, zf_tuuid, zf_ouuid, approve_invoice_request=approve_invoice_request)

Approves an invoice.

Approves an invoice.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.approve_invoice_request import ApproveInvoiceRequest
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | The UUID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    approve_invoice_request = {"invoiceDate":"string"} # ApproveInvoiceRequest | The request containing the approval details. (optional)

    try:
        # Approves an invoice.
        api_response = api_instance.post_invoices_invoiceuuid_approve(invoiceuuid, zf_tuuid, zf_ouuid, approve_invoice_request=approve_invoice_request)
        print("The response of InvoicesApi->post_invoices_invoiceuuid_approve:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_invoiceuuid_approve: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**| The UUID of the invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **approve_invoice_request** | [**ApproveInvoiceRequest**](ApproveInvoiceRequest.md)| The request containing the approval details. | [optional] 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_invoiceuuid_changeexportstatus**
> InvoiceDTOApiResponseDTO post_invoices_invoiceuuid_changeexportstatus(invoiceuuid, zf_tuuid, zf_ouuid, change_export_status_request=change_export_status_request)

Changes the export status of an invoice.

Changes the export status of an invoice.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.change_export_status_request import ChangeExportStatusRequest
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | The UUID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    change_export_status_request = {"exportStatus":{}} # ChangeExportStatusRequest | The request containing the new export status. (optional)

    try:
        # Changes the export status of an invoice.
        api_response = api_instance.post_invoices_invoiceuuid_changeexportstatus(invoiceuuid, zf_tuuid, zf_ouuid, change_export_status_request=change_export_status_request)
        print("The response of InvoicesApi->post_invoices_invoiceuuid_changeexportstatus:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_invoiceuuid_changeexportstatus: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**| The UUID of the invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **change_export_status_request** | [**ChangeExportStatusRequest**](ChangeExportStatusRequest.md)| The request containing the new export status. | [optional] 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_invoiceuuid_changenewadvanceamount**
> InvoiceDTOApiResponseDTO post_invoices_invoiceuuid_changenewadvanceamount(invoiceuuid, zf_tuuid, zf_ouuid, change_new_advance_amount_request=change_new_advance_amount_request)

Changes the new advance amount of an invoice.

Changes the new advance amount of an invoice.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.change_new_advance_amount_request import ChangeNewAdvanceAmountRequest
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | The UUID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    change_new_advance_amount_request = {"newAdvanceAmountInclVAT":0} # ChangeNewAdvanceAmountRequest | The request containing the new advance amount. (optional)

    try:
        # Changes the new advance amount of an invoice.
        api_response = api_instance.post_invoices_invoiceuuid_changenewadvanceamount(invoiceuuid, zf_tuuid, zf_ouuid, change_new_advance_amount_request=change_new_advance_amount_request)
        print("The response of InvoicesApi->post_invoices_invoiceuuid_changenewadvanceamount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_invoiceuuid_changenewadvanceamount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**| The UUID of the invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **change_new_advance_amount_request** | [**ChangeNewAdvanceAmountRequest**](ChangeNewAdvanceAmountRequest.md)| The request containing the new advance amount. | [optional] 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_invoiceuuid_changepaymentdetails**
> InvoiceDTOApiResponseDTO post_invoices_invoiceuuid_changepaymentdetails(invoiceuuid, zf_tuuid, zf_ouuid, change_payment_details_request=change_payment_details_request)

Changes the payment method of an invoice.

Changes the payment method of an invoice.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.change_payment_details_request import ChangePaymentDetailsRequest
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | The UUID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    change_payment_details_request = {"newPaymentMethod":{},"collectionDate":"string"} # ChangePaymentDetailsRequest | The request containing the new payment details. (optional)

    try:
        # Changes the payment method of an invoice.
        api_response = api_instance.post_invoices_invoiceuuid_changepaymentdetails(invoiceuuid, zf_tuuid, zf_ouuid, change_payment_details_request=change_payment_details_request)
        print("The response of InvoicesApi->post_invoices_invoiceuuid_changepaymentdetails:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_invoiceuuid_changepaymentdetails: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**| The UUID of the invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **change_payment_details_request** | [**ChangePaymentDetailsRequest**](ChangePaymentDetailsRequest.md)| The request containing the new payment details. | [optional] 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_invoiceuuid_credit**
> InvoiceDTOApiResponseDTO post_invoices_invoiceuuid_credit(invoiceuuid, zf_tuuid, zf_ouuid)

Credits an invoice.

Credits an invoice.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | The UUID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Credits an invoice.
        api_response = api_instance.post_invoices_invoiceuuid_credit(invoiceuuid, zf_tuuid, zf_ouuid)
        print("The response of InvoicesApi->post_invoices_invoiceuuid_credit:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_invoiceuuid_credit: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**| The UUID of the invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_invoiceuuid_marksent**
> InvoiceDTOApiResponseDTO post_invoices_invoiceuuid_marksent(invoiceuuid, zf_tuuid, zf_ouuid)

Marks an invoice as sent.

Marks an invoice as sent.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | The UUID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Marks an invoice as sent.
        api_response = api_instance.post_invoices_invoiceuuid_marksent(invoiceuuid, zf_tuuid, zf_ouuid)
        print("The response of InvoicesApi->post_invoices_invoiceuuid_marksent:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_invoiceuuid_marksent: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**| The UUID of the invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_invoiceuuid_notetocustomer**
> InvoiceDTOApiResponseDTO post_invoices_invoiceuuid_notetocustomer(invoiceuuid, zf_tuuid, zf_ouuid, change_note_to_customer_request=change_note_to_customer_request)

Update the note to customer from a specific invoice

Update the note to customer from a specific invoice

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.change_note_to_customer_request import ChangeNoteToCustomerRequest
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | The UUID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    change_note_to_customer_request = {"noteToCustomer":"string"} # ChangeNoteToCustomerRequest |  (optional)

    try:
        # Update the note to customer from a specific invoice
        api_response = api_instance.post_invoices_invoiceuuid_notetocustomer(invoiceuuid, zf_tuuid, zf_ouuid, change_note_to_customer_request=change_note_to_customer_request)
        print("The response of InvoicesApi->post_invoices_invoiceuuid_notetocustomer:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_invoiceuuid_notetocustomer: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**| The UUID of the invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **change_note_to_customer_request** | [**ChangeNoteToCustomerRequest**](ChangeNoteToCustomerRequest.md)|  | [optional] 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_invoiceuuid_preview**
> str post_invoices_invoiceuuid_preview(invoiceuuid, zf_tuuid, zf_ouuid)

Credits multiple invoices in bulk.

Credits multiple invoices in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Credits multiple invoices in bulk.
        api_response = api_instance.post_invoices_invoiceuuid_preview(invoiceuuid, zf_tuuid, zf_ouuid)
        print("The response of InvoicesApi->post_invoices_invoiceuuid_preview:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_invoiceuuid_preview: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

**str**

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_invoices_invoiceuuid_previewpdf**
> bytearray post_invoices_invoiceuuid_previewpdf(invoiceuuid, zf_tuuid, zf_ouuid)

Previews an invoice as a PDF.

Previews an invoice as a PDF.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | The UUID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Previews an invoice as a PDF.
        api_response = api_instance.post_invoices_invoiceuuid_previewpdf(invoiceuuid, zf_tuuid, zf_ouuid)
        print("The response of InvoicesApi->post_invoices_invoiceuuid_previewpdf:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_invoiceuuid_previewpdf: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**| The UUID of the invoice. | 
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
**200** | Success |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_invoices_invoiceuuid_regenerate**
> InvoiceDTOApiResponseDTO post_invoices_invoiceuuid_regenerate(invoiceuuid, zf_tuuid, zf_ouuid)

Regenerates an invoice.

Regenerates an invoice.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | The UUID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Regenerates an invoice.
        api_response = api_instance.post_invoices_invoiceuuid_regenerate(invoiceuuid, zf_tuuid, zf_ouuid)
        print("The response of InvoicesApi->post_invoices_invoiceuuid_regenerate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_invoiceuuid_regenerate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**| The UUID of the invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_invoiceuuid_replacedocument**
> InvoiceDTOApiResponseDTO post_invoices_invoiceuuid_replacedocument(invoiceuuid, zf_tuuid, zf_ouuid, content_type=content_type, content_disposition=content_disposition, headers=headers, length=length, name=name, file_name=file_name)

Replaces the document of an invoice.

Replaces the document of an invoice.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | The UUID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    content_type = 'content_type_example' # str |  (optional)
    content_disposition = 'content_disposition_example' # str |  (optional)
    headers = None # object |  (optional)
    length = 56 # int |  (optional)
    name = 'name_example' # str |  (optional)
    file_name = 'file_name_example' # str |  (optional)

    try:
        # Replaces the document of an invoice.
        api_response = api_instance.post_invoices_invoiceuuid_replacedocument(invoiceuuid, zf_tuuid, zf_ouuid, content_type=content_type, content_disposition=content_disposition, headers=headers, length=length, name=name, file_name=file_name)
        print("The response of InvoicesApi->post_invoices_invoiceuuid_replacedocument:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_invoiceuuid_replacedocument: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**| The UUID of the invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **content_type** | **str**|  | [optional] 
 **content_disposition** | **str**|  | [optional] 
 **headers** | [**object**](object.md)|  | [optional] 
 **length** | **int**|  | [optional] 
 **name** | **str**|  | [optional] 
 **file_name** | **str**|  | [optional] 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_invoices_invoiceuuid_send**
> InvoiceDTOApiResponseDTO post_invoices_invoiceuuid_send(invoiceuuid, zf_tuuid, zf_ouuid)

Sends an invoice via email.

Sends an invoice via email.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | The UUID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Sends an invoice via email.
        api_response = api_instance.post_invoices_invoiceuuid_send(invoiceuuid, zf_tuuid, zf_ouuid)
        print("The response of InvoicesApi->post_invoices_invoiceuuid_send:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_invoiceuuid_send: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**| The UUID of the invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

# **post_invoices_invoiceuuid_sendviapostal**
> InvoiceDTOApiResponseDTO post_invoices_invoiceuuid_sendviapostal(invoiceuuid, zf_tuuid, zf_ouuid)

Sends an invoice via postal mail.

Sends an invoice via postal mail.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.invoice_dto_api_response_dto import InvoiceDTOApiResponseDTO
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
    api_instance = billing_client.InvoicesApi(api_client)
    invoiceuuid = 'invoiceuuid_example' # str | The UUID of the invoice.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Sends an invoice via postal mail.
        api_response = api_instance.post_invoices_invoiceuuid_sendviapostal(invoiceuuid, zf_tuuid, zf_ouuid)
        print("The response of InvoicesApi->post_invoices_invoiceuuid_sendviapostal:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling InvoicesApi->post_invoices_invoiceuuid_sendviapostal: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoiceuuid** | **str**| The UUID of the invoice. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**InvoiceDTOApiResponseDTO**](InvoiceDTOApiResponseDTO.md)

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

