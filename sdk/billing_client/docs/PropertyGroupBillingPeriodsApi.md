# billing_client.PropertyGroupBillingPeriodsApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_propertygroupbillingperiods_propertygroupid_periodid**](PropertyGroupBillingPeriodsApi.md#delete_propertygroupbillingperiods_propertygroupid_periodid) | **DELETE** /PropertyGroupBillingPeriods/{propertygroupid}/{periodid} | Deletes a specific billing period.
[**delete_propertygroupbillingperiods_propertygroupid_periodid_incominginvoicec**](PropertyGroupBillingPeriodsApi.md#delete_propertygroupbillingperiods_propertygroupid_periodid_incominginvoicec) | **DELETE** /PropertyGroupBillingPeriods/{propertygroupid}/{periodid}/IncomingInvoiceCostComponentValues/{id} | Removes an incoming invoice cost component value from a billing period.
[**get_propertygroupbillingperiods_propertygroupid**](PropertyGroupBillingPeriodsApi.md#get_propertygroupbillingperiods_propertygroupid) | **GET** /PropertyGroupBillingPeriods/{propertygroupid} | Gets all billing periods for a specific property group.
[**get_propertygroupbillingperiods_propertygroupid_periodid**](PropertyGroupBillingPeriodsApi.md#get_propertygroupbillingperiods_propertygroupid_periodid) | **GET** /PropertyGroupBillingPeriods/{propertygroupid}/{periodid} | Gets a specific billing period by its ID.
[**post_propertygroupbillingperiods_propertygroupid**](PropertyGroupBillingPeriodsApi.md#post_propertygroupbillingperiods_propertygroupid) | **POST** /PropertyGroupBillingPeriods/{propertygroupid} | Creates a new billing period for a specific property group.
[**post_propertygroupbillingperiods_propertygroupid_periodid_calculateformulae**](PropertyGroupBillingPeriodsApi.md#post_propertygroupbillingperiods_propertygroupid_periodid_calculateformulae) | **POST** /PropertyGroupBillingPeriods/{propertygroupid}/{periodid}/calculateformulae | Calculates formulae for a billing period.
[**post_propertygroupbillingperiods_propertygroupid_periodid_incominginvoicecos**](PropertyGroupBillingPeriodsApi.md#post_propertygroupbillingperiods_propertygroupid_periodid_incominginvoicecos) | **POST** /PropertyGroupBillingPeriods/{propertygroupid}/{periodid}/IncomingInvoiceCostComponentValues | Adds an incoming invoice cost component value to a billing period.
[**post_propertygroupbillingperiods_propertygroupid_periodid_lock**](PropertyGroupBillingPeriodsApi.md#post_propertygroupbillingperiods_propertygroupid_periodid_lock) | **POST** /PropertyGroupBillingPeriods/{propertygroupid}/{periodid}/lock | Locks a billing period.
[**post_propertygroupbillingperiods_propertygroupid_periodid_triggerbilling**](PropertyGroupBillingPeriodsApi.md#post_propertygroupbillingperiods_propertygroupid_periodid_triggerbilling) | **POST** /PropertyGroupBillingPeriods/{propertygroupid}/{periodid}/triggerbilling | Triggers billing for a specific period.


# **delete_propertygroupbillingperiods_propertygroupid_periodid**
> BooleanApiResponseDTO delete_propertygroupbillingperiods_propertygroupid_periodid(propertygroupid, periodid, zf_tuuid, zf_ouuid)

Deletes a specific billing period.

Deletes a specific billing period.

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
    api_instance = billing_client.PropertyGroupBillingPeriodsApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The property group ID.
    periodid = 'periodid_example' # str | The billing period ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Deletes a specific billing period.
        api_response = api_instance.delete_propertygroupbillingperiods_propertygroupid_periodid(propertygroupid, periodid, zf_tuuid, zf_ouuid)
        print("The response of PropertyGroupBillingPeriodsApi->delete_propertygroupbillingperiods_propertygroupid_periodid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingPeriodsApi->delete_propertygroupbillingperiods_propertygroupid_periodid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The property group ID. | 
 **periodid** | **str**| The billing period ID. | 
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

# **delete_propertygroupbillingperiods_propertygroupid_periodid_incominginvoicec**
> PropertyGroupBillingPeriodDTOApiResponseDTO delete_propertygroupbillingperiods_propertygroupid_periodid_incominginvoicec(propertygroupid, periodid, id, zf_tuuid, zf_ouuid)

Removes an incoming invoice cost component value from a billing period.

Removes an incoming invoice cost component value from a billing period.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.property_group_billing_period_dto_api_response_dto import PropertyGroupBillingPeriodDTOApiResponseDTO
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
    api_instance = billing_client.PropertyGroupBillingPeriodsApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The property group ID.
    periodid = 'periodid_example' # str | The billing period ID.
    id = 'id_example' # str | The ID of the cost component value to remove.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Removes an incoming invoice cost component value from a billing period.
        api_response = api_instance.delete_propertygroupbillingperiods_propertygroupid_periodid_incominginvoicec(propertygroupid, periodid, id, zf_tuuid, zf_ouuid)
        print("The response of PropertyGroupBillingPeriodsApi->delete_propertygroupbillingperiods_propertygroupid_periodid_incominginvoicec:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingPeriodsApi->delete_propertygroupbillingperiods_propertygroupid_periodid_incominginvoicec: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The property group ID. | 
 **periodid** | **str**| The billing period ID. | 
 **id** | **str**| The ID of the cost component value to remove. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PropertyGroupBillingPeriodDTOApiResponseDTO**](PropertyGroupBillingPeriodDTOApiResponseDTO.md)

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

# **get_propertygroupbillingperiods_propertygroupid**
> PropertyGroupBillingPeriodDTOPagedResponseModelDTOApiResponseDTO get_propertygroupbillingperiods_propertygroupid(propertygroupid, zf_tuuid, zf_ouuid, incoming_invoice_id=incoming_invoice_id, start_date_time=start_date_time, end_date_time=end_date_time, continuation_token=continuation_token)

Gets all billing periods for a specific property group.

Gets all billing periods for a specific property group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.property_group_billing_period_dto_paged_response_model_dto_api_response_dto import PropertyGroupBillingPeriodDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.PropertyGroupBillingPeriodsApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The property group ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    incoming_invoice_id = 'incoming_invoice_id_example' # str | The incoming invoice ID. (optional)
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). The start date and time. (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). The end date and time. (optional)
    continuation_token = 'continuation_token_example' # str | The continuation token for pagination. (optional)

    try:
        # Gets all billing periods for a specific property group.
        api_response = api_instance.get_propertygroupbillingperiods_propertygroupid(propertygroupid, zf_tuuid, zf_ouuid, incoming_invoice_id=incoming_invoice_id, start_date_time=start_date_time, end_date_time=end_date_time, continuation_token=continuation_token)
        print("The response of PropertyGroupBillingPeriodsApi->get_propertygroupbillingperiods_propertygroupid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingPeriodsApi->get_propertygroupbillingperiods_propertygroupid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The property group ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **incoming_invoice_id** | **str**| The incoming invoice ID. | [optional] 
 **start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). The start date and time. | [optional] 
 **end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). The end date and time. | [optional] 
 **continuation_token** | **str**| The continuation token for pagination. | [optional] 

### Return type

[**PropertyGroupBillingPeriodDTOPagedResponseModelDTOApiResponseDTO**](PropertyGroupBillingPeriodDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_propertygroupbillingperiods_propertygroupid_periodid**
> PropertyGroupBillingPeriodDTOApiResponseDTO get_propertygroupbillingperiods_propertygroupid_periodid(propertygroupid, periodid, zf_tuuid, zf_ouuid)

Gets a specific billing period by its ID.

Gets a specific billing period by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.property_group_billing_period_dto_api_response_dto import PropertyGroupBillingPeriodDTOApiResponseDTO
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
    api_instance = billing_client.PropertyGroupBillingPeriodsApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The property group ID.
    periodid = 'periodid_example' # str | The billing period ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Gets a specific billing period by its ID.
        api_response = api_instance.get_propertygroupbillingperiods_propertygroupid_periodid(propertygroupid, periodid, zf_tuuid, zf_ouuid)
        print("The response of PropertyGroupBillingPeriodsApi->get_propertygroupbillingperiods_propertygroupid_periodid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingPeriodsApi->get_propertygroupbillingperiods_propertygroupid_periodid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The property group ID. | 
 **periodid** | **str**| The billing period ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PropertyGroupBillingPeriodDTOApiResponseDTO**](PropertyGroupBillingPeriodDTOApiResponseDTO.md)

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

# **post_propertygroupbillingperiods_propertygroupid**
> PropertyGroupBillingPeriodDTOApiResponseDTO post_propertygroupbillingperiods_propertygroupid(propertygroupid, zf_tuuid, zf_ouuid, create_property_group_billing_period_request=create_property_group_billing_period_request)

Creates a new billing period for a specific property group.

Creates a new billing period for a specific property group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.create_property_group_billing_period_request import CreatePropertyGroupBillingPeriodRequest
from billing_client.models.property_group_billing_period_dto_api_response_dto import PropertyGroupBillingPeriodDTOApiResponseDTO
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
    api_instance = billing_client.PropertyGroupBillingPeriodsApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The property group ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_property_group_billing_period_request = {"startDateTime":"string","endDateTime":"string"} # CreatePropertyGroupBillingPeriodRequest | The request containing the details of the billing period to create. (optional)

    try:
        # Creates a new billing period for a specific property group.
        api_response = api_instance.post_propertygroupbillingperiods_propertygroupid(propertygroupid, zf_tuuid, zf_ouuid, create_property_group_billing_period_request=create_property_group_billing_period_request)
        print("The response of PropertyGroupBillingPeriodsApi->post_propertygroupbillingperiods_propertygroupid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingPeriodsApi->post_propertygroupbillingperiods_propertygroupid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The property group ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_property_group_billing_period_request** | [**CreatePropertyGroupBillingPeriodRequest**](CreatePropertyGroupBillingPeriodRequest.md)| The request containing the details of the billing period to create. | [optional] 

### Return type

[**PropertyGroupBillingPeriodDTOApiResponseDTO**](PropertyGroupBillingPeriodDTOApiResponseDTO.md)

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

# **post_propertygroupbillingperiods_propertygroupid_periodid_calculateformulae**
> PropertyGroupBillingPeriodDTOApiResponseDTO post_propertygroupbillingperiods_propertygroupid_periodid_calculateformulae(propertygroupid, periodid, zf_tuuid, zf_ouuid)

Calculates formulae for a billing period.

Calculates formulae for a billing period.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.property_group_billing_period_dto_api_response_dto import PropertyGroupBillingPeriodDTOApiResponseDTO
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
    api_instance = billing_client.PropertyGroupBillingPeriodsApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The property group ID.
    periodid = 'periodid_example' # str | The billing period ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Calculates formulae for a billing period.
        api_response = api_instance.post_propertygroupbillingperiods_propertygroupid_periodid_calculateformulae(propertygroupid, periodid, zf_tuuid, zf_ouuid)
        print("The response of PropertyGroupBillingPeriodsApi->post_propertygroupbillingperiods_propertygroupid_periodid_calculateformulae:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingPeriodsApi->post_propertygroupbillingperiods_propertygroupid_periodid_calculateformulae: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The property group ID. | 
 **periodid** | **str**| The billing period ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PropertyGroupBillingPeriodDTOApiResponseDTO**](PropertyGroupBillingPeriodDTOApiResponseDTO.md)

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

# **post_propertygroupbillingperiods_propertygroupid_periodid_incominginvoicecos**
> PropertyGroupBillingPeriodDTOApiResponseDTO post_propertygroupbillingperiods_propertygroupid_periodid_incominginvoicecos(propertygroupid, periodid, zf_tuuid, zf_ouuid, add_incoming_invoice_component_to_billing_period_request=add_incoming_invoice_component_to_billing_period_request)

Adds an incoming invoice cost component value to a billing period.

Adds an incoming invoice cost component value to a billing period.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.add_incoming_invoice_component_to_billing_period_request import AddIncomingInvoiceComponentToBillingPeriodRequest
from billing_client.models.property_group_billing_period_dto_api_response_dto import PropertyGroupBillingPeriodDTOApiResponseDTO
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
    api_instance = billing_client.PropertyGroupBillingPeriodsApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The property group ID.
    periodid = 'periodid_example' # str | The billing period ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    add_incoming_invoice_component_to_billing_period_request = {"incomingInvoiceComponentId":"string","value":0,"incomingInvoiceId":"string"} # AddIncomingInvoiceComponentToBillingPeriodRequest | The request containing the details of the cost component value to add. (optional)

    try:
        # Adds an incoming invoice cost component value to a billing period.
        api_response = api_instance.post_propertygroupbillingperiods_propertygroupid_periodid_incominginvoicecos(propertygroupid, periodid, zf_tuuid, zf_ouuid, add_incoming_invoice_component_to_billing_period_request=add_incoming_invoice_component_to_billing_period_request)
        print("The response of PropertyGroupBillingPeriodsApi->post_propertygroupbillingperiods_propertygroupid_periodid_incominginvoicecos:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingPeriodsApi->post_propertygroupbillingperiods_propertygroupid_periodid_incominginvoicecos: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The property group ID. | 
 **periodid** | **str**| The billing period ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **add_incoming_invoice_component_to_billing_period_request** | [**AddIncomingInvoiceComponentToBillingPeriodRequest**](AddIncomingInvoiceComponentToBillingPeriodRequest.md)| The request containing the details of the cost component value to add. | [optional] 

### Return type

[**PropertyGroupBillingPeriodDTOApiResponseDTO**](PropertyGroupBillingPeriodDTOApiResponseDTO.md)

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

# **post_propertygroupbillingperiods_propertygroupid_periodid_lock**
> PropertyGroupBillingPeriodDTOApiResponseDTO post_propertygroupbillingperiods_propertygroupid_periodid_lock(propertygroupid, periodid, zf_tuuid, zf_ouuid)

Locks a billing period.

Locks a billing period.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.property_group_billing_period_dto_api_response_dto import PropertyGroupBillingPeriodDTOApiResponseDTO
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
    api_instance = billing_client.PropertyGroupBillingPeriodsApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The property group ID.
    periodid = 'periodid_example' # str | The billing period ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Locks a billing period.
        api_response = api_instance.post_propertygroupbillingperiods_propertygroupid_periodid_lock(propertygroupid, periodid, zf_tuuid, zf_ouuid)
        print("The response of PropertyGroupBillingPeriodsApi->post_propertygroupbillingperiods_propertygroupid_periodid_lock:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingPeriodsApi->post_propertygroupbillingperiods_propertygroupid_periodid_lock: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The property group ID. | 
 **periodid** | **str**| The billing period ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PropertyGroupBillingPeriodDTOApiResponseDTO**](PropertyGroupBillingPeriodDTOApiResponseDTO.md)

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

# **post_propertygroupbillingperiods_propertygroupid_periodid_triggerbilling**
> PropertyGroupBillingPeriodDTOApiResponseDTO post_propertygroupbillingperiods_propertygroupid_periodid_triggerbilling(propertygroupid, periodid, zf_tuuid, zf_ouuid)

Triggers billing for a specific period.

Triggers billing for a specific period.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.property_group_billing_period_dto_api_response_dto import PropertyGroupBillingPeriodDTOApiResponseDTO
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
    api_instance = billing_client.PropertyGroupBillingPeriodsApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The property group ID.
    periodid = 'periodid_example' # str | The billing period ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Triggers billing for a specific period.
        api_response = api_instance.post_propertygroupbillingperiods_propertygroupid_periodid_triggerbilling(propertygroupid, periodid, zf_tuuid, zf_ouuid)
        print("The response of PropertyGroupBillingPeriodsApi->post_propertygroupbillingperiods_propertygroupid_periodid_triggerbilling:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingPeriodsApi->post_propertygroupbillingperiods_propertygroupid_periodid_triggerbilling: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The property group ID. | 
 **periodid** | **str**| The billing period ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PropertyGroupBillingPeriodDTOApiResponseDTO**](PropertyGroupBillingPeriodDTOApiResponseDTO.md)

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

