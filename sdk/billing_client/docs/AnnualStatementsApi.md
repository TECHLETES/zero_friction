# billing_client.AnnualStatementsApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_annualstatements_annualstatementuuid**](AnnualStatementsApi.md#get_annualstatements_annualstatementuuid) | **GET** /AnnualStatements/{annualStatementuuid} | Retrieves an annual statement by its UUID.
[**post_annualstatements_annualstatementuuid_send**](AnnualStatementsApi.md#post_annualstatements_annualstatementuuid_send) | **POST** /AnnualStatements/{annualStatementuuid}/send | Sends an annual statement via email.
[**post_annualstatements_annualstatementuuid_sendviapostal**](AnnualStatementsApi.md#post_annualstatements_annualstatementuuid_sendviapostal) | **POST** /AnnualStatements/{annualStatementuuid}/sendviapostal | Sends an annual statement via postal mail.
[**post_annualstatements_bulk_send**](AnnualStatementsApi.md#post_annualstatements_bulk_send) | **POST** /AnnualStatements/bulk/send | Sends multiple annual statements via email in bulk.
[**post_annualstatements_bulk_sendviapostal**](AnnualStatementsApi.md#post_annualstatements_bulk_sendviapostal) | **POST** /AnnualStatements/bulk/sendviapostal | Sends multiple annual statements via postal mail in bulk.
[**post_annualstatements_customer_customerid**](AnnualStatementsApi.md#post_annualstatements_customer_customerid) | **POST** /AnnualStatements/customer/{customerId} | Creates a new annual statement for a specific customer.
[**post_annualstatements_filter**](AnnualStatementsApi.md#post_annualstatements_filter) | **POST** /AnnualStatements/filter | Retrieves all annual statements based on the provided query parameters.


# **get_annualstatements_annualstatementuuid**
> AnnualStatementDTOApiResponseDTO get_annualstatements_annualstatementuuid(annual_statementuuid, zf_tuuid, zf_ouuid)

Retrieves an annual statement by its UUID.

Retrieves an annual statement by its UUID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.annual_statement_dto_api_response_dto import AnnualStatementDTOApiResponseDTO
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
    api_instance = billing_client.AnnualStatementsApi(api_client)
    annual_statementuuid = 'annual_statementuuid_example' # str | The UUID of the annual statement.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves an annual statement by its UUID.
        api_response = api_instance.get_annualstatements_annualstatementuuid(annual_statementuuid, zf_tuuid, zf_ouuid)
        print("The response of AnnualStatementsApi->get_annualstatements_annualstatementuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AnnualStatementsApi->get_annualstatements_annualstatementuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **annual_statementuuid** | **str**| The UUID of the annual statement. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**AnnualStatementDTOApiResponseDTO**](AnnualStatementDTOApiResponseDTO.md)

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

# **post_annualstatements_annualstatementuuid_send**
> AnnualStatementDTOApiResponseDTO post_annualstatements_annualstatementuuid_send(annual_statementuuid, zf_tuuid, zf_ouuid)

Sends an annual statement via email.

Sends an annual statement via email.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.annual_statement_dto_api_response_dto import AnnualStatementDTOApiResponseDTO
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
    api_instance = billing_client.AnnualStatementsApi(api_client)
    annual_statementuuid = 'annual_statementuuid_example' # str | The ID of the annual statement.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Sends an annual statement via email.
        api_response = api_instance.post_annualstatements_annualstatementuuid_send(annual_statementuuid, zf_tuuid, zf_ouuid)
        print("The response of AnnualStatementsApi->post_annualstatements_annualstatementuuid_send:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AnnualStatementsApi->post_annualstatements_annualstatementuuid_send: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **annual_statementuuid** | **str**| The ID of the annual statement. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**AnnualStatementDTOApiResponseDTO**](AnnualStatementDTOApiResponseDTO.md)

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

# **post_annualstatements_annualstatementuuid_sendviapostal**
> AnnualStatementDTOApiResponseDTO post_annualstatements_annualstatementuuid_sendviapostal(annual_statementuuid, zf_tuuid, zf_ouuid)

Sends an annual statement via postal mail.

Sends an annual statement via postal mail.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.annual_statement_dto_api_response_dto import AnnualStatementDTOApiResponseDTO
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
    api_instance = billing_client.AnnualStatementsApi(api_client)
    annual_statementuuid = 'annual_statementuuid_example' # str | The ID of the annual statement.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Sends an annual statement via postal mail.
        api_response = api_instance.post_annualstatements_annualstatementuuid_sendviapostal(annual_statementuuid, zf_tuuid, zf_ouuid)
        print("The response of AnnualStatementsApi->post_annualstatements_annualstatementuuid_sendviapostal:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AnnualStatementsApi->post_annualstatements_annualstatementuuid_sendviapostal: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **annual_statementuuid** | **str**| The ID of the annual statement. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**AnnualStatementDTOApiResponseDTO**](AnnualStatementDTOApiResponseDTO.md)

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

# **post_annualstatements_bulk_send**
> ApiResponseDTO post_annualstatements_bulk_send(zf_tuuid, zf_ouuid, bulk_send_annual_statement_via_mail_request=bulk_send_annual_statement_via_mail_request)

Sends multiple annual statements via email in bulk.

Sends multiple annual statements via email in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.api_response_dto import ApiResponseDTO
from billing_client.models.bulk_send_annual_statement_via_mail_request import BulkSendAnnualStatementViaMailRequest
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
    api_instance = billing_client.AnnualStatementsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_send_annual_statement_via_mail_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"customerId":"string","statuses":["string"],"year":0,"limit":0},"quickFilter":"string"} # BulkSendAnnualStatementViaMailRequest | The bulk send annual statement via email request containing the details of the annual statements to be sent. (optional)

    try:
        # Sends multiple annual statements via email in bulk.
        api_response = api_instance.post_annualstatements_bulk_send(zf_tuuid, zf_ouuid, bulk_send_annual_statement_via_mail_request=bulk_send_annual_statement_via_mail_request)
        print("The response of AnnualStatementsApi->post_annualstatements_bulk_send:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AnnualStatementsApi->post_annualstatements_bulk_send: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_send_annual_statement_via_mail_request** | [**BulkSendAnnualStatementViaMailRequest**](BulkSendAnnualStatementViaMailRequest.md)| The bulk send annual statement via email request containing the details of the annual statements to be sent. | [optional] 

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
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_annualstatements_bulk_sendviapostal**
> ApiResponseDTO post_annualstatements_bulk_sendviapostal(zf_tuuid, zf_ouuid, bulk_send_annual_statement_via_postal_request=bulk_send_annual_statement_via_postal_request)

Sends multiple annual statements via postal mail in bulk.

Sends multiple annual statements via postal mail in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.api_response_dto import ApiResponseDTO
from billing_client.models.bulk_send_annual_statement_via_postal_request import BulkSendAnnualStatementViaPostalRequest
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
    api_instance = billing_client.AnnualStatementsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_send_annual_statement_via_postal_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"customerId":"string","statuses":["string"],"year":0,"limit":0},"quickFilter":"string"} # BulkSendAnnualStatementViaPostalRequest | The bulk send annual statement via postal request containing the details of the annual statements to be sent. (optional)

    try:
        # Sends multiple annual statements via postal mail in bulk.
        api_response = api_instance.post_annualstatements_bulk_sendviapostal(zf_tuuid, zf_ouuid, bulk_send_annual_statement_via_postal_request=bulk_send_annual_statement_via_postal_request)
        print("The response of AnnualStatementsApi->post_annualstatements_bulk_sendviapostal:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AnnualStatementsApi->post_annualstatements_bulk_sendviapostal: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_send_annual_statement_via_postal_request** | [**BulkSendAnnualStatementViaPostalRequest**](BulkSendAnnualStatementViaPostalRequest.md)| The bulk send annual statement via postal request containing the details of the annual statements to be sent. | [optional] 

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
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_annualstatements_customer_customerid**
> AnnualStatementDTOApiResponseDTO post_annualstatements_customer_customerid(customer_id, zf_tuuid, zf_ouuid, create_annual_statement_request=create_annual_statement_request)

Creates a new annual statement for a specific customer.

Creates a new annual statement for a specific customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.annual_statement_dto_api_response_dto import AnnualStatementDTOApiResponseDTO
from billing_client.models.create_annual_statement_request import CreateAnnualStatementRequest
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
    api_instance = billing_client.AnnualStatementsApi(api_client)
    customer_id = 'customer_id_example' # str | The ID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_annual_statement_request = {"year":0} # CreateAnnualStatementRequest | The request containing the details for the new annual statement. (optional)

    try:
        # Creates a new annual statement for a specific customer.
        api_response = api_instance.post_annualstatements_customer_customerid(customer_id, zf_tuuid, zf_ouuid, create_annual_statement_request=create_annual_statement_request)
        print("The response of AnnualStatementsApi->post_annualstatements_customer_customerid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AnnualStatementsApi->post_annualstatements_customer_customerid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_id** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_annual_statement_request** | [**CreateAnnualStatementRequest**](CreateAnnualStatementRequest.md)| The request containing the details for the new annual statement. | [optional] 

### Return type

[**AnnualStatementDTOApiResponseDTO**](AnnualStatementDTOApiResponseDTO.md)

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

# **post_annualstatements_filter**
> AnnualStatementDTOPagedResponseModelDTOApiResponseDTO post_annualstatements_filter(zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token, get_annual_statements_query_params=get_annual_statements_query_params)

Retrieves all annual statements based on the provided query parameters.

Retrieves all annual statements based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.annual_statement_dto_paged_response_model_dto_api_response_dto import AnnualStatementDTOPagedResponseModelDTOApiResponseDTO
from billing_client.models.get_annual_statements_query_params import GetAnnualStatementsQueryParams
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
    api_instance = billing_client.AnnualStatementsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    order_by = 'order_by_example' # str | The order by clause. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)
    get_annual_statements_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"customerId":"string","statuses":["string"],"year":0,"limit":0} # GetAnnualStatementsQueryParams | The query parameters for filtering annual statements. (optional)

    try:
        # Retrieves all annual statements based on the provided query parameters.
        api_response = api_instance.post_annualstatements_filter(zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token, get_annual_statements_query_params=get_annual_statements_query_params)
        print("The response of AnnualStatementsApi->post_annualstatements_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AnnualStatementsApi->post_annualstatements_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **order_by** | **str**| The order by clause. | [optional] 
 **continuation_token** | **str**| The continuation token for pagination. | [optional] 
 **get_annual_statements_query_params** | [**GetAnnualStatementsQueryParams**](GetAnnualStatementsQueryParams.md)| The query parameters for filtering annual statements. | [optional] 

### Return type

[**AnnualStatementDTOPagedResponseModelDTOApiResponseDTO**](AnnualStatementDTOPagedResponseModelDTOApiResponseDTO.md)

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

