# attachments_client.TemplateDataContainersApi

All URIs are relative to *https://api.zerofriction.co/api/att*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_template_data_container_by_id**](TemplateDataContainersApi.md#get_template_data_container_by_id) | **GET** /TemplateDataContainers/{id} | Retrieves a TemplateDataContainer by its ID.
[**update_payment_link**](TemplateDataContainersApi.md#update_payment_link) | **PUT** /TemplateDataContainers/{id}/paymentlink | Updates the payment link of a TemplateDataContainer.


# **get_template_data_container_by_id**
> TemplateDataContainerApiResponseDTO get_template_data_container_by_id(id, zf_tuuid, zf_ouuid)

Retrieves a TemplateDataContainer by its ID.

Retrieves a TemplateDataContainer by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.template_data_container_api_response_dto import TemplateDataContainerApiResponseDTO
from attachments_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/att
# See configuration.py for a list of all supported configuration parameters.
configuration = attachments_client.Configuration(
    host = "https://api.zerofriction.co/api/att"
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
with attachments_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = attachments_client.TemplateDataContainersApi(api_client)
    id = 'id_example' # str | The ID of the TemplateDataContainer to retrieve.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a TemplateDataContainer by its ID.
        api_response = api_instance.get_template_data_container_by_id(id, zf_tuuid, zf_ouuid)
        print("The response of TemplateDataContainersApi->get_template_data_container_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplateDataContainersApi->get_template_data_container_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The ID of the TemplateDataContainer to retrieve. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**TemplateDataContainerApiResponseDTO**](TemplateDataContainerApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_payment_link**
> TemplateDataContainerApiResponseDTO update_payment_link(id, zf_tuuid, zf_ouuid, update_payment_link_request=update_payment_link_request)

Updates the payment link of a TemplateDataContainer.

Updates the payment link of a TemplateDataContainer.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import attachments_client
from attachments_client.models.template_data_container_api_response_dto import TemplateDataContainerApiResponseDTO
from attachments_client.models.update_payment_link_request import UpdatePaymentLinkRequest
from attachments_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/att
# See configuration.py for a list of all supported configuration parameters.
configuration = attachments_client.Configuration(
    host = "https://api.zerofriction.co/api/att"
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
with attachments_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = attachments_client.TemplateDataContainersApi(api_client)
    id = 'id_example' # str | The ID of the TemplateDataContainer to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_payment_link_request = {"paymentLink":"string"} # UpdatePaymentLinkRequest | The request containing the new payment link information. (optional)

    try:
        # Updates the payment link of a TemplateDataContainer.
        api_response = api_instance.update_payment_link(id, zf_tuuid, zf_ouuid, update_payment_link_request=update_payment_link_request)
        print("The response of TemplateDataContainersApi->update_payment_link:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplateDataContainersApi->update_payment_link: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The ID of the TemplateDataContainer to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_payment_link_request** | [**UpdatePaymentLinkRequest**](UpdatePaymentLinkRequest.md)| The request containing the new payment link information. | [optional] 

### Return type

[**TemplateDataContainerApiResponseDTO**](TemplateDataContainerApiResponseDTO.md)

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

