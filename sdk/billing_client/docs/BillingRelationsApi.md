# billing_client.BillingRelationsApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**change_advance_amount**](BillingRelationsApi.md#change_advance_amount) | **POST** /BillingRelations/b/{billreluuid}/changeadvanceamount | Changes the advance amount for a specific billing relation.
[**get_billingrelations_customeruuid**](BillingRelationsApi.md#get_billingrelations_customeruuid) | **GET** /BillingRelations/{customeruuid} | Retrieves billing relations for a specific customer.
[**get_billingrelations_customeruuid_contractuuid**](BillingRelationsApi.md#get_billingrelations_customeruuid_contractuuid) | **GET** /BillingRelations/{customeruuid}/{contractuuid} | Retrieves a billing relation for a specific customer and contract.
[**post_billingrelations_b_billreluuid_block**](BillingRelationsApi.md#post_billingrelations_b_billreluuid_block) | **POST** /BillingRelations/b/{billreluuid}/block | Blocks a specific billing relation from billing.
[**post_billingrelations_b_billreluuid_unblock**](BillingRelationsApi.md#post_billingrelations_b_billreluuid_unblock) | **POST** /BillingRelations/b/{billreluuid}/unblock | Unblocks a specific billing relation from billing.


# **change_advance_amount**
> BillingRelationDTOApiResponseDTO change_advance_amount(billreluuid, zf_tuuid, zf_ouuid, change_advance_amount_request=change_advance_amount_request)

Changes the advance amount for a specific billing relation.

Changes the advance amount for a specific billing relation.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.billing_relation_dto_api_response_dto import BillingRelationDTOApiResponseDTO
from billing_client.models.change_advance_amount_request import ChangeAdvanceAmountRequest
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
    api_instance = billing_client.BillingRelationsApi(api_client)
    billreluuid = 'billreluuid_example' # str | The UUID of the billing relation.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    change_advance_amount_request = {"newAdvanceAmount":0,"changedBy":{},"sendConfirmationEmail":true} # ChangeAdvanceAmountRequest | The request containing the new advance amount details. (optional)

    try:
        # Changes the advance amount for a specific billing relation.
        api_response = api_instance.change_advance_amount(billreluuid, zf_tuuid, zf_ouuid, change_advance_amount_request=change_advance_amount_request)
        print("The response of BillingRelationsApi->change_advance_amount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingRelationsApi->change_advance_amount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billreluuid** | **str**| The UUID of the billing relation. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **change_advance_amount_request** | [**ChangeAdvanceAmountRequest**](ChangeAdvanceAmountRequest.md)| The request containing the new advance amount details. | [optional] 

### Return type

[**BillingRelationDTOApiResponseDTO**](BillingRelationDTOApiResponseDTO.md)

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

# **get_billingrelations_customeruuid**
> BillingRelationDTOPagedResponseModelDTOApiResponseDTO get_billingrelations_customeruuid(customeruuid, zf_tuuid, zf_ouuid)

Retrieves billing relations for a specific customer.

Retrieves billing relations for a specific customer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.billing_relation_dto_paged_response_model_dto_api_response_dto import BillingRelationDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.BillingRelationsApi(api_client)
    customeruuid = 'customeruuid_example' # str | The UUID of the customer.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves billing relations for a specific customer.
        api_response = api_instance.get_billingrelations_customeruuid(customeruuid, zf_tuuid, zf_ouuid)
        print("The response of BillingRelationsApi->get_billingrelations_customeruuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingRelationsApi->get_billingrelations_customeruuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The UUID of the customer. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**BillingRelationDTOPagedResponseModelDTOApiResponseDTO**](BillingRelationDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_billingrelations_customeruuid_contractuuid**
> BillingRelationDTOApiResponseDTO get_billingrelations_customeruuid_contractuuid(customeruuid, contractuuid, zf_tuuid, zf_ouuid)

Retrieves a billing relation for a specific customer and contract.

Retrieves a billing relation for a specific customer and contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.billing_relation_dto_api_response_dto import BillingRelationDTOApiResponseDTO
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
    api_instance = billing_client.BillingRelationsApi(api_client)
    customeruuid = 'customeruuid_example' # str | The UUID of the customer.
    contractuuid = 'contractuuid_example' # str | The UUID of the contract.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a billing relation for a specific customer and contract.
        api_response = api_instance.get_billingrelations_customeruuid_contractuuid(customeruuid, contractuuid, zf_tuuid, zf_ouuid)
        print("The response of BillingRelationsApi->get_billingrelations_customeruuid_contractuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingRelationsApi->get_billingrelations_customeruuid_contractuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customeruuid** | **str**| The UUID of the customer. | 
 **contractuuid** | **str**| The UUID of the contract. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**BillingRelationDTOApiResponseDTO**](BillingRelationDTOApiResponseDTO.md)

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

# **post_billingrelations_b_billreluuid_block**
> BillingRelationDTOApiResponseDTO post_billingrelations_b_billreluuid_block(billreluuid, zf_tuuid, zf_ouuid, billing_block_request=billing_block_request)

Blocks a specific billing relation from billing.

Blocks a specific billing relation from billing.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.billing_block_request import BillingBlockRequest
from billing_client.models.billing_relation_dto_api_response_dto import BillingRelationDTOApiResponseDTO
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
    api_instance = billing_client.BillingRelationsApi(api_client)
    billreluuid = 'billreluuid_example' # str | The UUID of the billing relation.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    billing_block_request = {"comment":"string"} # BillingBlockRequest | The request containing the block details. (optional)

    try:
        # Blocks a specific billing relation from billing.
        api_response = api_instance.post_billingrelations_b_billreluuid_block(billreluuid, zf_tuuid, zf_ouuid, billing_block_request=billing_block_request)
        print("The response of BillingRelationsApi->post_billingrelations_b_billreluuid_block:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingRelationsApi->post_billingrelations_b_billreluuid_block: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billreluuid** | **str**| The UUID of the billing relation. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **billing_block_request** | [**BillingBlockRequest**](BillingBlockRequest.md)| The request containing the block details. | [optional] 

### Return type

[**BillingRelationDTOApiResponseDTO**](BillingRelationDTOApiResponseDTO.md)

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

# **post_billingrelations_b_billreluuid_unblock**
> BillingRelationDTOApiResponseDTO post_billingrelations_b_billreluuid_unblock(billreluuid, zf_tuuid, zf_ouuid, billing_block_request=billing_block_request)

Unblocks a specific billing relation from billing.

Unblocks a specific billing relation from billing.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.billing_block_request import BillingBlockRequest
from billing_client.models.billing_relation_dto_api_response_dto import BillingRelationDTOApiResponseDTO
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
    api_instance = billing_client.BillingRelationsApi(api_client)
    billreluuid = 'billreluuid_example' # str | The UUID of the billing relation.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    billing_block_request = {"comment":"string"} # BillingBlockRequest | The request containing the unblock details. (optional)

    try:
        # Unblocks a specific billing relation from billing.
        api_response = api_instance.post_billingrelations_b_billreluuid_unblock(billreluuid, zf_tuuid, zf_ouuid, billing_block_request=billing_block_request)
        print("The response of BillingRelationsApi->post_billingrelations_b_billreluuid_unblock:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BillingRelationsApi->post_billingrelations_b_billreluuid_unblock: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billreluuid** | **str**| The UUID of the billing relation. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **billing_block_request** | [**BillingBlockRequest**](BillingBlockRequest.md)| The request containing the unblock details. | [optional] 

### Return type

[**BillingRelationDTOApiResponseDTO**](BillingRelationDTOApiResponseDTO.md)

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

