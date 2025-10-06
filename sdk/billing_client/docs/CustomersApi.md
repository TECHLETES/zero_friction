# billing_client.CustomersApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_customers_customeruuid**](CustomersApi.md#get_customers_customeruuid) | **GET** /Customers/{customeruuid} | Retrieves a billing customer by their UUID.


# **get_customers_customeruuid**
> BillingCustomerDTOApiResponseDTO get_customers_customeruuid(customeruuid, zf_tuuid, zf_ouuid)

Retrieves a billing customer by their UUID.

Retrieves a billing customer by their UUID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.billing_customer_dto_api_response_dto import BillingCustomerDTOApiResponseDTO
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
    api_instance = billing_client.CustomersApi(api_client)
    customeruuid = 'customeruuid_example' # str | The UUID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a billing customer by their UUID.
        api_response = api_instance.get_customers_customeruuid(customeruuid, zf_tuuid, zf_ouuid)
        print("The response of CustomersApi->get_customers_customeruuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomersApi->get_customers_customeruuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The UUID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**BillingCustomerDTOApiResponseDTO**](BillingCustomerDTOApiResponseDTO.md)

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

