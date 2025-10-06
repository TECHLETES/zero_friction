# masterdata_client.CustomersApi

All URIs are relative to *https://api.zerofriction.co/api/md*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_change_customer_group**](CustomersApi.md#bulk_change_customer_group) | **POST** /Customers/bulk/customergroup | Move multiple customers to customer group in bulk.
[**change_customer_billing_details**](CustomersApi.md#change_customer_billing_details) | **POST** /Customers/{customeruuid}/billingdetails | Update billing details of a customer.
[**change_customer_communication_preferences**](CustomersApi.md#change_customer_communication_preferences) | **POST** /Customers/{customeruuid}/communicationpreferences | Update communication preferences of a customer.
[**change_customer_contact_details**](CustomersApi.md#change_customer_contact_details) | **POST** /Customers/{customeruuid}/contactdetails | Update contact details of a customer.
[**change_customer_details**](CustomersApi.md#change_customer_details) | **POST** /Customers/{customeruuid}/details | Update details of a customer.
[**change_customer_group**](CustomersApi.md#change_customer_group) | **POST** /Customers/{customeruuid}/customergroup | Move customer to a different customer group.
[**change_customer_invoice_address**](CustomersApi.md#change_customer_invoice_address) | **POST** /Customers/{customeruuid}/invoiceaddress | Update invoice address of a customer.
[**change_portal_details**](CustomersApi.md#change_portal_details) | **POST** /Customers/{customeruuid}/portaldetails | Update customer portal details of a customer.
[**create_customer**](CustomersApi.md#create_customer) | **POST** /Customers | Create new customer.
[**filter_all_customers**](CustomersApi.md#filter_all_customers) | **POST** /Customers/filter | Retrieve customers based on the provided query parameters.
[**filter_overview_count_customers**](CustomersApi.md#filter_overview_count_customers) | **POST** /Customers/filter/overviewcount | Retrieve the overview count of customers based on the provided query parameters.
[**get_customer**](CustomersApi.md#get_customer) | **GET** /Customers/{customeruuid} | Retrieve a customer by its ID.
[**get_customer_by_account_number**](CustomersApi.md#get_customer_by_account_number) | **GET** /Customers/ByAccountNumber/{customerAccountNumber} | Retrieve a customer by its account number.
[**post_customers_annualstatement_year_filter_overviewcount**](CustomersApi.md#post_customers_annualstatement_year_filter_overviewcount) | **POST** /Customers/annualstatement/{year}/filter/overviewcount | Retrieve the overview count of annual statements for filtered customers based on the provided query parameters.
[**post_customers_bulk_createannualstatement**](CustomersApi.md#post_customers_bulk_createannualstatement) | **POST** /Customers/bulk/createannualstatement | Create and generate annual statements for multiple customers in bulk.
[**post_customers_entityid_customproperties**](CustomersApi.md#post_customers_entityid_customproperties) | **POST** /Customers/{entityId}/customproperties | /Customers/{entityId}/customproperties - POST
[**send_customer_communication_via_email**](CustomersApi.md#send_customer_communication_via_email) | **POST** /Customers/{customeruuid}/send/{subType} | Send email to a customer.


# **bulk_change_customer_group**
> ApiResponseDTO bulk_change_customer_group(zf_tuuid, zf_ouuid, bulk_change_customer_customer_group_request=bulk_change_customer_customer_group_request)

Move multiple customers to customer group in bulk.

Move multiple customers to customer group in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_change_customer_customer_group_request import BulkChangeCustomerCustomerGroupRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_change_customer_customer_group_request = {"customerGroupId":"string","onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"customerType":"string","defaultPaymentMethod":"string","propertyGroupIds":["string"],"excludePropertyGroupId":"string","customerGroupId":"string","excludeCustomerGroupId":"string","customerGroupName":"string","nameContains":"string","activationCode":"string","priorityServiceRegisterPropertyTypeId":"string","vulnerabilityRegisterPropertyTypeId":"string","priorityServiceRegisterIds":["string"],"vulnerabilityRegisterIds":["string"]},"quickFilter":"string"} # BulkChangeCustomerCustomerGroupRequest | The request containing ID of customer group, to which the customer should be assigned to, and query parameters to filter the customers to be moved. (optional)

    try:
        # Move multiple customers to customer group in bulk.
        api_response = api_instance.bulk_change_customer_group(zf_tuuid, zf_ouuid, bulk_change_customer_customer_group_request=bulk_change_customer_customer_group_request)
        print("The response of CustomersApi->bulk_change_customer_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->bulk_change_customer_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_change_customer_customer_group_request** | [**BulkChangeCustomerCustomerGroupRequest**](BulkChangeCustomerCustomerGroupRequest.md)| The request containing ID of customer group, to which the customer should be assigned to, and query parameters to filter the customers to be moved. | [optional] 

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

# **change_customer_billing_details**
> CustomerDTOApiResponseDTO change_customer_billing_details(customeruuid, zf_tuuid, zf_ouuid, update_customer_billing_details_request=update_customer_billing_details_request)

Update billing details of a customer.

Update billing details of a customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.customer_dto_api_response_dto import CustomerDTOApiResponseDTO
from masterdata_client.models.update_customer_billing_details_request import UpdateCustomerBillingDetailsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_customer_billing_details_request = {"paymentTermsId":"string","defaultPaymentMethod":{}} # UpdateCustomerBillingDetailsRequest | The request containing billing details. (optional)

    try:
        # Update billing details of a customer.
        api_response = api_instance.change_customer_billing_details(customeruuid, zf_tuuid, zf_ouuid, update_customer_billing_details_request=update_customer_billing_details_request)
        print("The response of CustomersApi->change_customer_billing_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->change_customer_billing_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_customer_billing_details_request** | [**UpdateCustomerBillingDetailsRequest**](UpdateCustomerBillingDetailsRequest.md)| The request containing billing details. | [optional] 

### Return type

[**CustomerDTOApiResponseDTO**](CustomerDTOApiResponseDTO.md)

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

# **change_customer_communication_preferences**
> CustomerDTOApiResponseDTO change_customer_communication_preferences(customeruuid, zf_tuuid, zf_ouuid, change_customer_communication_preferences_request=change_customer_communication_preferences_request)

Update communication preferences of a customer.

Update communication preferences of a customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.change_customer_communication_preferences_request import ChangeCustomerCommunicationPreferencesRequest
from masterdata_client.models.customer_dto_api_response_dto import CustomerDTOApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    change_customer_communication_preferences_request = {"communicationPreferences":{"culture":{},"invoiceCommunicationPreferences":[{"invoiceType":{},"communicationType":{}}],"annualStatementCommunicationPreference":{},"collectionFlowId":"string"}} # ChangeCustomerCommunicationPreferencesRequest | The request containing communication preferences. (optional)

    try:
        # Update communication preferences of a customer.
        api_response = api_instance.change_customer_communication_preferences(customeruuid, zf_tuuid, zf_ouuid, change_customer_communication_preferences_request=change_customer_communication_preferences_request)
        print("The response of CustomersApi->change_customer_communication_preferences:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->change_customer_communication_preferences: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **change_customer_communication_preferences_request** | [**ChangeCustomerCommunicationPreferencesRequest**](ChangeCustomerCommunicationPreferencesRequest.md)| The request containing communication preferences. | [optional] 

### Return type

[**CustomerDTOApiResponseDTO**](CustomerDTOApiResponseDTO.md)

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

# **change_customer_contact_details**
> CustomerDTOApiResponseDTO change_customer_contact_details(customeruuid, zf_tuuid, zf_ouuid, change_customer_contact_details_request=change_customer_contact_details_request)

Update contact details of a customer.

Update contact details of a customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.change_customer_contact_details_request import ChangeCustomerContactDetailsRequest
from masterdata_client.models.customer_dto_api_response_dto import CustomerDTOApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    change_customer_contact_details_request = {"contactEntries":[{"value":"string","description":"string","primaryForType":true,"contactType":{}}]} # ChangeCustomerContactDetailsRequest | The request containing contact details. (optional)

    try:
        # Update contact details of a customer.
        api_response = api_instance.change_customer_contact_details(customeruuid, zf_tuuid, zf_ouuid, change_customer_contact_details_request=change_customer_contact_details_request)
        print("The response of CustomersApi->change_customer_contact_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->change_customer_contact_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **change_customer_contact_details_request** | [**ChangeCustomerContactDetailsRequest**](ChangeCustomerContactDetailsRequest.md)| The request containing contact details. | [optional] 

### Return type

[**CustomerDTOApiResponseDTO**](CustomerDTOApiResponseDTO.md)

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

# **change_customer_details**
> CustomerDTOApiResponseDTO change_customer_details(customeruuid, zf_tuuid, zf_ouuid, change_customer_details_request=change_customer_details_request)

Update details of a customer.

Update details of a customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.change_customer_details_request import ChangeCustomerDetailsRequest
from masterdata_client.models.customer_dto_api_response_dto import CustomerDTOApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    change_customer_details_request = {"accountNumber":"string","salutation":"string","initials":"string","firstName":"string","lastName":"string","birthDate":"string","ssin":"string","ssinCountry":{},"companyName":"string","organizationNumber":"string","vatNumber":"string","customerType":{}} # ChangeCustomerDetailsRequest | The request containing customer details. (optional)

    try:
        # Update details of a customer.
        api_response = api_instance.change_customer_details(customeruuid, zf_tuuid, zf_ouuid, change_customer_details_request=change_customer_details_request)
        print("The response of CustomersApi->change_customer_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->change_customer_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **change_customer_details_request** | [**ChangeCustomerDetailsRequest**](ChangeCustomerDetailsRequest.md)| The request containing customer details. | [optional] 

### Return type

[**CustomerDTOApiResponseDTO**](CustomerDTOApiResponseDTO.md)

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

# **change_customer_group**
> CustomerDTOApiResponseDTO change_customer_group(customeruuid, zf_tuuid, zf_ouuid, change_customer_customer_group_request=change_customer_customer_group_request)

Move customer to a different customer group.

Move customer to a different customer group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.change_customer_customer_group_request import ChangeCustomerCustomerGroupRequest
from masterdata_client.models.customer_dto_api_response_dto import CustomerDTOApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    change_customer_customer_group_request = {"customerGroupId":"string"} # ChangeCustomerCustomerGroupRequest | The request containing ID of customer group, to which the customer should be assigned to. (optional)

    try:
        # Move customer to a different customer group.
        api_response = api_instance.change_customer_group(customeruuid, zf_tuuid, zf_ouuid, change_customer_customer_group_request=change_customer_customer_group_request)
        print("The response of CustomersApi->change_customer_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->change_customer_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **change_customer_customer_group_request** | [**ChangeCustomerCustomerGroupRequest**](ChangeCustomerCustomerGroupRequest.md)| The request containing ID of customer group, to which the customer should be assigned to. | [optional] 

### Return type

[**CustomerDTOApiResponseDTO**](CustomerDTOApiResponseDTO.md)

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

# **change_customer_invoice_address**
> CustomerDTOApiResponseDTO change_customer_invoice_address(customeruuid, zf_tuuid, zf_ouuid, update_invoice_address_request=update_invoice_address_request)

Update invoice address of a customer.

Update invoice address of a customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.customer_dto_api_response_dto import CustomerDTOApiResponseDTO
from masterdata_client.models.update_invoice_address_request import UpdateInvoiceAddressRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_invoice_address_request = {"invoiceAddress":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":{},"localizedDisplay":"string","lineOne":"string","lineTwo":"string"}} # UpdateInvoiceAddressRequest | The request containing invoice address. (optional)

    try:
        # Update invoice address of a customer.
        api_response = api_instance.change_customer_invoice_address(customeruuid, zf_tuuid, zf_ouuid, update_invoice_address_request=update_invoice_address_request)
        print("The response of CustomersApi->change_customer_invoice_address:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->change_customer_invoice_address: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_invoice_address_request** | [**UpdateInvoiceAddressRequest**](UpdateInvoiceAddressRequest.md)| The request containing invoice address. | [optional] 

### Return type

[**CustomerDTOApiResponseDTO**](CustomerDTOApiResponseDTO.md)

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

# **change_portal_details**
> CustomerDTOApiResponseDTO change_portal_details(customeruuid, zf_tuuid, zf_ouuid, update_customer_portal_details_request=update_customer_portal_details_request)

Update customer portal details of a customer.

Update customer portal details of a customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.customer_dto_api_response_dto import CustomerDTOApiResponseDTO
from masterdata_client.models.update_customer_portal_details_request import UpdateCustomerPortalDetailsRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_customer_portal_details_request = {"applicationUserId":"string","resetPasswordToken":"string","confirmAccountToken":"string","email":"string","sendCommunication":true} # UpdateCustomerPortalDetailsRequest | The request containing customer portal details. (optional)

    try:
        # Update customer portal details of a customer.
        api_response = api_instance.change_portal_details(customeruuid, zf_tuuid, zf_ouuid, update_customer_portal_details_request=update_customer_portal_details_request)
        print("The response of CustomersApi->change_portal_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->change_portal_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_customer_portal_details_request** | [**UpdateCustomerPortalDetailsRequest**](UpdateCustomerPortalDetailsRequest.md)| The request containing customer portal details. | [optional] 

### Return type

[**CustomerDTOApiResponseDTO**](CustomerDTOApiResponseDTO.md)

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

# **create_customer**
> CustomerDTOApiResponseDTO create_customer(zf_tuuid, zf_ouuid, create_customer_request=create_customer_request)

Create new customer.

Create new customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.create_customer_request import CreateCustomerRequest
from masterdata_client.models.customer_dto_api_response_dto import CustomerDTOApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_customer_request = {"accountNum":"string","salutation":"string","initials":"string","firstName":"string","lastName":"string","birthDate":"string","ssin":"string","ssinCountry":{},"customerType":{},"companyName":"string","vatNumber":"string","organizationNumber":"string","paymentTermsId":"string","defaultPaymentMethod":{},"customerGroupId":"string","invoiceAddress":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":{},"localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"bankAccounts":[{"iban":"string","signDate":"string"}],"contactDetails":[{"value":"string","description":"string","primaryForType":true,"contactType":{}}],"communicationPreferences":{"culture":{},"invoiceCommunicationPreferences":[{"invoiceType":{},"communicationType":{}}],"annualStatementCommunicationPreference":{},"collectionFlowId":"string"}} # CreateCustomerRequest | The request containing customer details. (optional)

    try:
        # Create new customer.
        api_response = api_instance.create_customer(zf_tuuid, zf_ouuid, create_customer_request=create_customer_request)
        print("The response of CustomersApi->create_customer:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->create_customer: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_customer_request** | [**CreateCustomerRequest**](CreateCustomerRequest.md)| The request containing customer details. | [optional] 

### Return type

[**CustomerDTOApiResponseDTO**](CustomerDTOApiResponseDTO.md)

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

# **filter_all_customers**
> CustomerDTOPagedResponseModelDTOApiResponseDTO filter_all_customers(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_customers_query_params=get_customers_query_params)

Retrieve customers based on the provided query parameters.

Retrieve customers based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.customer_dto_paged_response_model_dto_api_response_dto import CustomerDTOPagedResponseModelDTOApiResponseDTO
from masterdata_client.models.get_customers_query_params import GetCustomersQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    order_by = 'order_by_example' # str | Allows to order the customers. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)
    get_customers_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"customerType":"string","defaultPaymentMethod":"string","propertyGroupIds":["string"],"excludePropertyGroupId":"string","customerGroupId":"string","excludeCustomerGroupId":"string","customerGroupName":"string","nameContains":"string","activationCode":"string","priorityServiceRegisterPropertyTypeId":"string","vulnerabilityRegisterPropertyTypeId":"string","priorityServiceRegisterIds":["string"],"vulnerabilityRegisterIds":["string"]} # GetCustomersQueryParams | Allows to search on fields within the customers. (optional)

    try:
        # Retrieve customers based on the provided query parameters.
        api_response = api_instance.filter_all_customers(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_customers_query_params=get_customers_query_params)
        print("The response of CustomersApi->filter_all_customers:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->filter_all_customers: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **order_by** | **str**| Allows to order the customers. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 
 **get_customers_query_params** | [**GetCustomersQueryParams**](GetCustomersQueryParams.md)| Allows to search on fields within the customers. | [optional] 

### Return type

[**CustomerDTOPagedResponseModelDTOApiResponseDTO**](CustomerDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **filter_overview_count_customers**
> CustomerOverviewCountDTOApiResponseDTO filter_overview_count_customers(zf_tuuid, zf_ouuid, get_customers_query_params=get_customers_query_params)

Retrieve the overview count of customers based on the provided query parameters.

Retrieve the overview count of customers based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.customer_overview_count_dto_api_response_dto import CustomerOverviewCountDTOApiResponseDTO
from masterdata_client.models.get_customers_query_params import GetCustomersQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    get_customers_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"customerType":"string","defaultPaymentMethod":"string","propertyGroupIds":["string"],"excludePropertyGroupId":"string","customerGroupId":"string","excludeCustomerGroupId":"string","customerGroupName":"string","nameContains":"string","activationCode":"string","priorityServiceRegisterPropertyTypeId":"string","vulnerabilityRegisterPropertyTypeId":"string","priorityServiceRegisterIds":["string"],"vulnerabilityRegisterIds":["string"]} # GetCustomersQueryParams | Allows to search on fields within the customers. (optional)

    try:
        # Retrieve the overview count of customers based on the provided query parameters.
        api_response = api_instance.filter_overview_count_customers(zf_tuuid, zf_ouuid, get_customers_query_params=get_customers_query_params)
        print("The response of CustomersApi->filter_overview_count_customers:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->filter_overview_count_customers: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **get_customers_query_params** | [**GetCustomersQueryParams**](GetCustomersQueryParams.md)| Allows to search on fields within the customers. | [optional] 

### Return type

[**CustomerOverviewCountDTOApiResponseDTO**](CustomerOverviewCountDTOApiResponseDTO.md)

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

# **get_customer**
> CustomerDTOApiResponseDTO get_customer(customeruuid, zf_tuuid, zf_ouuid)

Retrieve a customer by its ID.

Retrieve a customer by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.customer_dto_api_response_dto import CustomerDTOApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieve a customer by its ID.
        api_response = api_instance.get_customer(customeruuid, zf_tuuid, zf_ouuid)
        print("The response of CustomersApi->get_customer:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->get_customer: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**CustomerDTOApiResponseDTO**](CustomerDTOApiResponseDTO.md)

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

# **get_customer_by_account_number**
> CustomerDTOApiResponseDTO get_customer_by_account_number(customer_account_number, zf_tuuid, zf_ouuid)

Retrieve a customer by its account number.

Retrieve a customer by its account number.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.customer_dto_api_response_dto import CustomerDTOApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    customer_account_number = 'customer_account_number_example' # str | The account number of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieve a customer by its account number.
        api_response = api_instance.get_customer_by_account_number(customer_account_number, zf_tuuid, zf_ouuid)
        print("The response of CustomersApi->get_customer_by_account_number:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->get_customer_by_account_number: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_account_number** | **str**| The account number of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**CustomerDTOApiResponseDTO**](CustomerDTOApiResponseDTO.md)

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

# **post_customers_annualstatement_year_filter_overviewcount**
> CustomerAnnualStatementOverviewCountDTOApiResponseDTO post_customers_annualstatement_year_filter_overviewcount(year, zf_tuuid, zf_ouuid, name=name, id=id, get_customers_query_params=get_customers_query_params)

Retrieve the overview count of annual statements for filtered customers based on the provided query parameters.

Retrieve the overview count of annual statements for filtered customers based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.customer_annual_statement_overview_count_dto_api_response_dto import CustomerAnnualStatementOverviewCountDTOApiResponseDTO
from masterdata_client.models.get_customers_query_params import GetCustomersQueryParams
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    year = 56 # int | Format - int32. Year for which the annual statements are supposed to be created.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    get_customers_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"customerType":"string","defaultPaymentMethod":"string","propertyGroupIds":["string"],"excludePropertyGroupId":"string","customerGroupId":"string","excludeCustomerGroupId":"string","customerGroupName":"string","nameContains":"string","activationCode":"string","priorityServiceRegisterPropertyTypeId":"string","vulnerabilityRegisterPropertyTypeId":"string","priorityServiceRegisterIds":["string"],"vulnerabilityRegisterIds":["string"]} # GetCustomersQueryParams | Allows to search on fields within the customers. (optional)

    try:
        # Retrieve the overview count of annual statements for filtered customers based on the provided query parameters.
        api_response = api_instance.post_customers_annualstatement_year_filter_overviewcount(year, zf_tuuid, zf_ouuid, name=name, id=id, get_customers_query_params=get_customers_query_params)
        print("The response of CustomersApi->post_customers_annualstatement_year_filter_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->post_customers_annualstatement_year_filter_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **year** | **int**| Format - int32. Year for which the annual statements are supposed to be created. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **get_customers_query_params** | [**GetCustomersQueryParams**](GetCustomersQueryParams.md)| Allows to search on fields within the customers. | [optional] 

### Return type

[**CustomerAnnualStatementOverviewCountDTOApiResponseDTO**](CustomerAnnualStatementOverviewCountDTOApiResponseDTO.md)

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

# **post_customers_bulk_createannualstatement**
> ApiResponseDTO post_customers_bulk_createannualstatement(zf_tuuid, zf_ouuid, bulk_create_annual_statement_request=bulk_create_annual_statement_request)

Create and generate annual statements for multiple customers in bulk.

Create and generate annual statements for multiple customers in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_create_annual_statement_request import BulkCreateAnnualStatementRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_create_annual_statement_request = {"year":0,"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"customerType":"string","defaultPaymentMethod":"string","propertyGroupIds":["string"],"excludePropertyGroupId":"string","customerGroupId":"string","excludeCustomerGroupId":"string","customerGroupName":"string","nameContains":"string","activationCode":"string","priorityServiceRegisterPropertyTypeId":"string","vulnerabilityRegisterPropertyTypeId":"string","priorityServiceRegisterIds":["string"],"vulnerabilityRegisterIds":["string"]},"quickFilter":"string","onlyWhereLatestNotGenerated":true} # BulkCreateAnnualStatementRequest | The request containing bulk annual statement generation details and query parameters to filter the customers, which are supposed to have annual statement generated. (optional)

    try:
        # Create and generate annual statements for multiple customers in bulk.
        api_response = api_instance.post_customers_bulk_createannualstatement(zf_tuuid, zf_ouuid, bulk_create_annual_statement_request=bulk_create_annual_statement_request)
        print("The response of CustomersApi->post_customers_bulk_createannualstatement:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->post_customers_bulk_createannualstatement: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_create_annual_statement_request** | [**BulkCreateAnnualStatementRequest**](BulkCreateAnnualStatementRequest.md)| The request containing bulk annual statement generation details and query parameters to filter the customers, which are supposed to have annual statement generated. | [optional] 

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

# **post_customers_entityid_customproperties**
> CustomerDTOApiResponseDTO post_customers_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)

/Customers/{entityId}/customproperties - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.customer_dto_api_response_dto import CustomerDTOApiResponseDTO
from masterdata_client.models.update_custom_entity_properties_request import UpdateCustomEntityPropertiesRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_custom_entity_properties_request = {"properties":[{"customEntityPropertyTypeId":"string","values":[{"startDateTime":"string","endDateTime":"string","valueDecimal":0,"valueString":"string","valueBoolean":true,"valueNumber":0,"valueDateTime":"string","valueDropdown":["string"]}]}]} # UpdateCustomEntityPropertiesRequest |  (optional)

    try:
        # /Customers/{entityId}/customproperties - POST
        api_response = api_instance.post_customers_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)
        print("The response of CustomersApi->post_customers_entityid_customproperties:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->post_customers_entityid_customproperties: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_custom_entity_properties_request** | [**UpdateCustomEntityPropertiesRequest**](UpdateCustomEntityPropertiesRequest.md)|  | [optional] 

### Return type

[**CustomerDTOApiResponseDTO**](CustomerDTOApiResponseDTO.md)

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

# **send_customer_communication_via_email**
> ApiResponseDTO send_customer_communication_via_email(customeruuid, sub_type)

Send email to a customer.

Send email to a customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.CustomersApi(api_client)
    customeruuid = 'customeruuid_example' # str | The ID of the customer.
    sub_type = 'sub_type_example' # str | 

    try:
        # Send email to a customer.
        api_response = api_instance.send_customer_communication_via_email(customeruuid, sub_type)
        print("The response of CustomersApi->send_customer_communication_via_email:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->send_customer_communication_via_email: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The ID of the customer. | 
 **sub_type** | **str**|  | 

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

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

