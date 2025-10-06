# billing_client.IntegrationApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_integration_export_outgoingbankingtransaction_paymentrefund_enabledforma**](IntegrationApi.md#get_integration_export_outgoingbankingtransaction_paymentrefund_enabledforma) | **GET** /Integration/export/outgoingbankingtransaction/paymentrefund/enabledFormats | Retrieves all supported formats for exporting outgoing banking transaction payment refunds.
[**get_integration_export_outgoingbankingtransaction_paymentrequest_enabledform**](IntegrationApi.md#get_integration_export_outgoingbankingtransaction_paymentrequest_enabledform) | **GET** /Integration/export/outgoingbankingtransaction/paymentrequest/enabledFormats | Retrieves all supported formats for exporting outgoing banking transaction payment requests.
[**get_integration_import_incomingbankingtransaction_enabledformats**](IntegrationApi.md#get_integration_import_incomingbankingtransaction_enabledformats) | **GET** /Integration/import/incomingbankingtransaction/enabledFormats | Retrieves all supported formats for importing incoming banking transactions.
[**post_integration_export_incomingbankingtransaction_bulk**](IntegrationApi.md#post_integration_export_incomingbankingtransaction_bulk) | **POST** /Integration/export/incomingbankingtransaction/bulk | Exports multiple incoming banking transactions as a bulk operation.
[**post_integration_export_incomingbankingtransaction_incomingbankingtransactio**](IntegrationApi.md#post_integration_export_incomingbankingtransaction_incomingbankingtransactio) | **POST** /Integration/export/incomingbankingtransaction/{incomingBankingTransactionId} | Exports a specific incoming banking transaction.
[**post_integration_export_invoice_ublformat_bulk**](IntegrationApi.md#post_integration_export_invoice_ublformat_bulk) | **POST** /Integration/export/invoice/ublformat/bulk | Exports multiple invoices in UBL format as a bulk operation.
[**post_integration_export_invoice_ublformat_single**](IntegrationApi.md#post_integration_export_invoice_ublformat_single) | **POST** /Integration/export/invoice/ublformat/single | Exports a single invoice in UBL format.
[**post_integration_export_invoice_ublformat_validate**](IntegrationApi.md#post_integration_export_invoice_ublformat_validate) | **POST** /Integration/export/invoice/ublformat/validate | Validates the UBL format of invoices for export.
[**post_integration_export_outgoingbankingtransaction_bulk**](IntegrationApi.md#post_integration_export_outgoingbankingtransaction_bulk) | **POST** /Integration/export/outgoingbankingtransaction/bulk | Exports multiple outgoing banking transactions as a bulk operation.
[**post_integration_export_outgoingbankingtransaction_paymentrefund_outgoingban**](IntegrationApi.md#post_integration_export_outgoingbankingtransaction_paymentrefund_outgoingban) | **POST** /Integration/export/outgoingbankingtransaction/paymentrefund/{outgoingbankingtransactionid} | Exports an outgoing banking transaction payment refund.
[**post_integration_export_outgoingbankingtransaction_paymentrequest_outgoingba**](IntegrationApi.md#post_integration_export_outgoingbankingtransaction_paymentrequest_outgoingba) | **POST** /Integration/export/outgoingbankingtransaction/paymentrequest/{outgoingbankingtransactionid} | Exports an outgoing banking transaction payment request.
[**post_integration_import_incomingbankingtransaction**](IntegrationApi.md#post_integration_import_incomingbankingtransaction) | **POST** /Integration/import/incomingbankingtransaction | Imports incoming banking transactions from the provided files.


# **get_integration_export_outgoingbankingtransaction_paymentrefund_enabledforma**
> ExportOutgoingBankingTransactionPaymentRefundFormatTypeListApiResponseDTO get_integration_export_outgoingbankingtransaction_paymentrefund_enabledforma(zf_tuuid, zf_ouuid)

Retrieves all supported formats for exporting outgoing banking transaction payment refunds.

Retrieves all supported formats for exporting outgoing banking transaction payment refunds.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.export_outgoing_banking_transaction_payment_refund_format_type_list_api_response_dto import ExportOutgoingBankingTransactionPaymentRefundFormatTypeListApiResponseDTO
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
    api_instance = billing_client.IntegrationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves all supported formats for exporting outgoing banking transaction payment refunds.
        api_response = api_instance.get_integration_export_outgoingbankingtransaction_paymentrefund_enabledforma(zf_tuuid, zf_ouuid)
        print("The response of IntegrationApi->get_integration_export_outgoingbankingtransaction_paymentrefund_enabledforma:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationApi->get_integration_export_outgoingbankingtransaction_paymentrefund_enabledforma: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**ExportOutgoingBankingTransactionPaymentRefundFormatTypeListApiResponseDTO**](ExportOutgoingBankingTransactionPaymentRefundFormatTypeListApiResponseDTO.md)

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

# **get_integration_export_outgoingbankingtransaction_paymentrequest_enabledform**
> ExportOutgoingBankingTransactionPaymentRequestFormatTypeListApiResponseDTO get_integration_export_outgoingbankingtransaction_paymentrequest_enabledform(zf_tuuid, zf_ouuid)

Retrieves all supported formats for exporting outgoing banking transaction payment requests.

Retrieves all supported formats for exporting outgoing banking transaction payment requests.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.export_outgoing_banking_transaction_payment_request_format_type_list_api_response_dto import ExportOutgoingBankingTransactionPaymentRequestFormatTypeListApiResponseDTO
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
    api_instance = billing_client.IntegrationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves all supported formats for exporting outgoing banking transaction payment requests.
        api_response = api_instance.get_integration_export_outgoingbankingtransaction_paymentrequest_enabledform(zf_tuuid, zf_ouuid)
        print("The response of IntegrationApi->get_integration_export_outgoingbankingtransaction_paymentrequest_enabledform:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationApi->get_integration_export_outgoingbankingtransaction_paymentrequest_enabledform: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**ExportOutgoingBankingTransactionPaymentRequestFormatTypeListApiResponseDTO**](ExportOutgoingBankingTransactionPaymentRequestFormatTypeListApiResponseDTO.md)

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

# **get_integration_import_incomingbankingtransaction_enabledformats**
> IncomingBankingTransactionFormatTypeListApiResponseDTO get_integration_import_incomingbankingtransaction_enabledformats(zf_tuuid, zf_ouuid)

Retrieves all supported formats for importing incoming banking transactions.

Retrieves all supported formats for importing incoming banking transactions.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_banking_transaction_format_type_list_api_response_dto import IncomingBankingTransactionFormatTypeListApiResponseDTO
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
    api_instance = billing_client.IntegrationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves all supported formats for importing incoming banking transactions.
        api_response = api_instance.get_integration_import_incomingbankingtransaction_enabledformats(zf_tuuid, zf_ouuid)
        print("The response of IntegrationApi->get_integration_import_incomingbankingtransaction_enabledformats:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationApi->get_integration_import_incomingbankingtransaction_enabledformats: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**IncomingBankingTransactionFormatTypeListApiResponseDTO**](IncomingBankingTransactionFormatTypeListApiResponseDTO.md)

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

# **post_integration_export_incomingbankingtransaction_bulk**
> post_integration_export_incomingbankingtransaction_bulk(zf_tuuid, zf_ouuid, download_incoming_banking_transaction_zip_request=download_incoming_banking_transaction_zip_request)

Exports multiple incoming banking transactions as a bulk operation.

Exports multiple incoming banking transactions as a bulk operation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.download_incoming_banking_transaction_zip_request import DownloadIncomingBankingTransactionZipRequest
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
    api_instance = billing_client.IntegrationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    download_incoming_banking_transaction_zip_request = {"incomingBankingTransactionIds":["string"]} # DownloadIncomingBankingTransactionZipRequest | Request containing the details for the bulk export. (optional)

    try:
        # Exports multiple incoming banking transactions as a bulk operation.
        api_instance.post_integration_export_incomingbankingtransaction_bulk(zf_tuuid, zf_ouuid, download_incoming_banking_transaction_zip_request=download_incoming_banking_transaction_zip_request)
    except Exception as e:
        print("Exception when calling IntegrationApi->post_integration_export_incomingbankingtransaction_bulk: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **download_incoming_banking_transaction_zip_request** | [**DownloadIncomingBankingTransactionZipRequest**](DownloadIncomingBankingTransactionZipRequest.md)| Request containing the details for the bulk export. | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integration_export_incomingbankingtransaction_incomingbankingtransactio**
> post_integration_export_incomingbankingtransaction_incomingbankingtransactio(incoming_banking_transaction_id, zf_tuuid, zf_ouuid)

Exports a specific incoming banking transaction.

Exports a specific incoming banking transaction.

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
    api_instance = billing_client.IntegrationApi(api_client)
    incoming_banking_transaction_id = 'incoming_banking_transaction_id_example' # str | ID of the incoming banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Exports a specific incoming banking transaction.
        api_instance.post_integration_export_incomingbankingtransaction_incomingbankingtransactio(incoming_banking_transaction_id, zf_tuuid, zf_ouuid)
    except Exception as e:
        print("Exception when calling IntegrationApi->post_integration_export_incomingbankingtransaction_incomingbankingtransactio: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incoming_banking_transaction_id** | **str**| ID of the incoming banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

void (empty response body)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integration_export_invoice_ublformat_bulk**
> bytearray post_integration_export_invoice_ublformat_bulk(zf_tuuid, zf_ouuid, export_ubl_format_bulk_request=export_ubl_format_bulk_request)

Exports multiple invoices in UBL format as a bulk operation.

Exports multiple invoices in UBL format as a bulk operation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.export_ubl_format_bulk_request import ExportUblFormatBulkRequest
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
    api_instance = billing_client.IntegrationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    export_ubl_format_bulk_request = {"invoiceIds":["string"],"markAsExported":true} # ExportUblFormatBulkRequest | Request containing the details for the bulk export. (optional)

    try:
        # Exports multiple invoices in UBL format as a bulk operation.
        api_response = api_instance.post_integration_export_invoice_ublformat_bulk(zf_tuuid, zf_ouuid, export_ubl_format_bulk_request=export_ubl_format_bulk_request)
        print("The response of IntegrationApi->post_integration_export_invoice_ublformat_bulk:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationApi->post_integration_export_invoice_ublformat_bulk: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **export_ubl_format_bulk_request** | [**ExportUblFormatBulkRequest**](ExportUblFormatBulkRequest.md)| Request containing the details for the bulk export. | [optional] 

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
**200** | Success |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integration_export_invoice_ublformat_single**
> bytearray post_integration_export_invoice_ublformat_single(zf_tuuid, zf_ouuid, export_ubl_format_single_request=export_ubl_format_single_request)

Exports a single invoice in UBL format.

Exports a single invoice in UBL format.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.export_ubl_format_single_request import ExportUblFormatSingleRequest
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
    api_instance = billing_client.IntegrationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    export_ubl_format_single_request = {"invoiceId":"string","markAsExported":true} # ExportUblFormatSingleRequest | Request containing the details for the export. (optional)

    try:
        # Exports a single invoice in UBL format.
        api_response = api_instance.post_integration_export_invoice_ublformat_single(zf_tuuid, zf_ouuid, export_ubl_format_single_request=export_ubl_format_single_request)
        print("The response of IntegrationApi->post_integration_export_invoice_ublformat_single:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationApi->post_integration_export_invoice_ublformat_single: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **export_ubl_format_single_request** | [**ExportUblFormatSingleRequest**](ExportUblFormatSingleRequest.md)| Request containing the details for the export. | [optional] 

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
**200** | Success |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integration_export_invoice_ublformat_validate**
> InvoiceUBLValidationErrorResponseDTO post_integration_export_invoice_ublformat_validate(zf_tuuid, zf_ouuid, export_ubl_validate_request=export_ubl_validate_request)

Validates the UBL format of invoices for export.

Validates the UBL format of invoices for export.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.export_ubl_validate_request import ExportUblValidateRequest
from billing_client.models.invoice_ubl_validation_error_response_dto import InvoiceUBLValidationErrorResponseDTO
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
    api_instance = billing_client.IntegrationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    export_ubl_validate_request = {"invoiceIds":["string"]} # ExportUblValidateRequest | Request containing the details for the validation. (optional)

    try:
        # Validates the UBL format of invoices for export.
        api_response = api_instance.post_integration_export_invoice_ublformat_validate(zf_tuuid, zf_ouuid, export_ubl_validate_request=export_ubl_validate_request)
        print("The response of IntegrationApi->post_integration_export_invoice_ublformat_validate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationApi->post_integration_export_invoice_ublformat_validate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **export_ubl_validate_request** | [**ExportUblValidateRequest**](ExportUblValidateRequest.md)| Request containing the details for the validation. | [optional] 

### Return type

[**InvoiceUBLValidationErrorResponseDTO**](InvoiceUBLValidationErrorResponseDTO.md)

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

# **post_integration_export_outgoingbankingtransaction_bulk**
> bytearray post_integration_export_outgoingbankingtransaction_bulk(zf_tuuid, zf_ouuid, export_outgoing_banking_transaction_bulk_request=export_outgoing_banking_transaction_bulk_request)

Exports multiple outgoing banking transactions as a bulk operation.

Exports multiple outgoing banking transactions as a bulk operation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.export_outgoing_banking_transaction_bulk_request import ExportOutgoingBankingTransactionBulkRequest
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
    api_instance = billing_client.IntegrationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    export_outgoing_banking_transaction_bulk_request = {"outgoingBankingTransactionIds":["string"]} # ExportOutgoingBankingTransactionBulkRequest | Request containing the details for the bulk export. (optional)

    try:
        # Exports multiple outgoing banking transactions as a bulk operation.
        api_response = api_instance.post_integration_export_outgoingbankingtransaction_bulk(zf_tuuid, zf_ouuid, export_outgoing_banking_transaction_bulk_request=export_outgoing_banking_transaction_bulk_request)
        print("The response of IntegrationApi->post_integration_export_outgoingbankingtransaction_bulk:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationApi->post_integration_export_outgoingbankingtransaction_bulk: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **export_outgoing_banking_transaction_bulk_request** | [**ExportOutgoingBankingTransactionBulkRequest**](ExportOutgoingBankingTransactionBulkRequest.md)| Request containing the details for the bulk export. | [optional] 

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
**400** | Bad Request |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integration_export_outgoingbankingtransaction_paymentrefund_outgoingban**
> bytearray post_integration_export_outgoingbankingtransaction_paymentrefund_outgoingban(outgoingbankingtransactionid, zf_tuuid, zf_ouuid, export_outgoing_banking_transaction_payment_refund_request=export_outgoing_banking_transaction_payment_refund_request)

Exports an outgoing banking transaction payment refund.

Exports an outgoing banking transaction payment refund.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.export_outgoing_banking_transaction_payment_refund_request import ExportOutgoingBankingTransactionPaymentRefundRequest
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
    api_instance = billing_client.IntegrationApi(api_client)
    outgoingbankingtransactionid = 'outgoingbankingtransactionid_example' # str | ID of the outgoing banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    export_outgoing_banking_transaction_payment_refund_request = {"formatType":{}} # ExportOutgoingBankingTransactionPaymentRefundRequest | Request containing the details for the export. (optional)

    try:
        # Exports an outgoing banking transaction payment refund.
        api_response = api_instance.post_integration_export_outgoingbankingtransaction_paymentrefund_outgoingban(outgoingbankingtransactionid, zf_tuuid, zf_ouuid, export_outgoing_banking_transaction_payment_refund_request=export_outgoing_banking_transaction_payment_refund_request)
        print("The response of IntegrationApi->post_integration_export_outgoingbankingtransaction_paymentrefund_outgoingban:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationApi->post_integration_export_outgoingbankingtransaction_paymentrefund_outgoingban: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **outgoingbankingtransactionid** | **str**| ID of the outgoing banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **export_outgoing_banking_transaction_payment_refund_request** | [**ExportOutgoingBankingTransactionPaymentRefundRequest**](ExportOutgoingBankingTransactionPaymentRefundRequest.md)| Request containing the details for the export. | [optional] 

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
**200** | Success |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integration_export_outgoingbankingtransaction_paymentrequest_outgoingba**
> bytearray post_integration_export_outgoingbankingtransaction_paymentrequest_outgoingba(outgoingbankingtransactionid, zf_tuuid, zf_ouuid, export_outgoing_banking_transaction_payment_request_request=export_outgoing_banking_transaction_payment_request_request)

Exports an outgoing banking transaction payment request.

Exports an outgoing banking transaction payment request.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.export_outgoing_banking_transaction_payment_request_request import ExportOutgoingBankingTransactionPaymentRequestRequest
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
    api_instance = billing_client.IntegrationApi(api_client)
    outgoingbankingtransactionid = 'outgoingbankingtransactionid_example' # str | ID of the outgoing banking transaction.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    export_outgoing_banking_transaction_payment_request_request = {"formatType":{}} # ExportOutgoingBankingTransactionPaymentRequestRequest | Request containing the details for the export. (optional)

    try:
        # Exports an outgoing banking transaction payment request.
        api_response = api_instance.post_integration_export_outgoingbankingtransaction_paymentrequest_outgoingba(outgoingbankingtransactionid, zf_tuuid, zf_ouuid, export_outgoing_banking_transaction_payment_request_request=export_outgoing_banking_transaction_payment_request_request)
        print("The response of IntegrationApi->post_integration_export_outgoingbankingtransaction_paymentrequest_outgoingba:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationApi->post_integration_export_outgoingbankingtransaction_paymentrequest_outgoingba: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **outgoingbankingtransactionid** | **str**| ID of the outgoing banking transaction. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **export_outgoing_banking_transaction_payment_request_request** | [**ExportOutgoingBankingTransactionPaymentRequestRequest**](ExportOutgoingBankingTransactionPaymentRequestRequest.md)| Request containing the details for the export. | [optional] 

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
**200** | Success |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integration_import_incomingbankingtransaction**
> IncomingBankingTransactionDTOListApiResponseDTO post_integration_import_incomingbankingtransaction(zf_tuuid, zf_ouuid, files=files, content_type=content_type, content_disposition=content_disposition, headers=headers, length=length, name=name, file_name=file_name, format_type=format_type, automatically_created=automatically_created)

Imports incoming banking transactions from the provided files.

Imports incoming banking transactions from the provided files.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.incoming_banking_transaction_dto_list_api_response_dto import IncomingBankingTransactionDTOListApiResponseDTO
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
    api_instance = billing_client.IntegrationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    files = None # List[bytearray] |  (optional)
    content_type = 'content_type_example' # str |  (optional)
    content_disposition = 'content_disposition_example' # str |  (optional)
    headers = None # object |  (optional)
    length = 56 # int |  (optional)
    name = 'name_example' # str |  (optional)
    file_name = 'file_name_example' # str |  (optional)
    format_type = 'format_type_example' # str |  (optional)
    automatically_created = True # bool |  (optional)

    try:
        # Imports incoming banking transactions from the provided files.
        api_response = api_instance.post_integration_import_incomingbankingtransaction(zf_tuuid, zf_ouuid, files=files, content_type=content_type, content_disposition=content_disposition, headers=headers, length=length, name=name, file_name=file_name, format_type=format_type, automatically_created=automatically_created)
        print("The response of IntegrationApi->post_integration_import_incomingbankingtransaction:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IntegrationApi->post_integration_import_incomingbankingtransaction: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **files** | **List[bytearray]**|  | [optional] 
 **content_type** | **str**|  | [optional] 
 **content_disposition** | **str**|  | [optional] 
 **headers** | [**object**](object.md)|  | [optional] 
 **length** | **int**|  | [optional] 
 **name** | **str**|  | [optional] 
 **file_name** | **str**|  | [optional] 
 **format_type** | **str**|  | [optional] 
 **automatically_created** | **bool**|  | [optional] 

### Return type

[**IncomingBankingTransactionDTOListApiResponseDTO**](IncomingBankingTransactionDTOListApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

