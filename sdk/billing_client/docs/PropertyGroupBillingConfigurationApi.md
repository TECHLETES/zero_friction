# billing_client.PropertyGroupBillingConfigurationApi

All URIs are relative to *https://api.zerofriction.co/api/bill*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_propertygroupbillingconfiguration_formulas**](PropertyGroupBillingConfigurationApi.md#get_propertygroupbillingconfiguration_formulas) | **GET** /PropertyGroupBillingConfiguration/formulas | Lists all available formulas.
[**get_propertygroupbillingconfiguration_propertygroupid**](PropertyGroupBillingConfigurationApi.md#get_propertygroupbillingconfiguration_propertygroupid) | **GET** /PropertyGroupBillingConfiguration/{propertygroupid} | Gets the billing configuration for a specific property group.
[**post_propertygroupbillingconfiguration**](PropertyGroupBillingConfigurationApi.md#post_propertygroupbillingconfiguration) | **POST** /PropertyGroupBillingConfiguration | Updates a billing configuration for a property group.
[**post_propertygroupbillingconfiguration_consolidatednotestocustomer**](PropertyGroupBillingConfigurationApi.md#post_propertygroupbillingconfiguration_consolidatednotestocustomer) | **POST** /PropertyGroupBillingConfiguration/consolidatednotestocustomer | Gets consolidated notes to customer for property groups.
[**post_propertygroupbillingconfiguration_entityid_translations**](PropertyGroupBillingConfigurationApi.md#post_propertygroupbillingconfiguration_entityid_translations) | **POST** /PropertyGroupBillingConfiguration/{entityId}/translations | /PropertyGroupBillingConfiguration/{entityId}/translations - POST
[**post_propertygroupbillingconfiguration_getall**](PropertyGroupBillingConfigurationApi.md#post_propertygroupbillingconfiguration_getall) | **POST** /PropertyGroupBillingConfiguration/getall | Gets all billing configurations for property groups.
[**post_propertygroupbillingconfiguration_propertygroupid_costallocation**](PropertyGroupBillingConfigurationApi.md#post_propertygroupbillingconfiguration_propertygroupid_costallocation) | **POST** /PropertyGroupBillingConfiguration/{propertygroupid}/costallocation | Updates the cost allocation for a specific property group.
[**post_propertygroupbillingconfiguration_propertygroupid_costallocation_billwi**](PropertyGroupBillingConfigurationApi.md#post_propertygroupbillingconfiguration_propertygroupid_costallocation_billwi) | **POST** /PropertyGroupBillingConfiguration/{propertygroupid}/costallocation/billwithprevioustariffs | Triggers billing with previous tariffs for a specific property group.
[**post_propertygroupbillingconfiguration_propertygroupid_costallocation_disabl**](PropertyGroupBillingConfigurationApi.md#post_propertygroupbillingconfiguration_propertygroupid_costallocation_disabl) | **POST** /PropertyGroupBillingConfiguration/{propertygroupid}/costallocation/disable | Disables cost allocation for a specific property group.
[**post_propertygroupbillingconfiguration_propertygroupid_costallocation_enable**](PropertyGroupBillingConfigurationApi.md#post_propertygroupbillingconfiguration_propertygroupid_costallocation_enable) | **POST** /PropertyGroupBillingConfiguration/{propertygroupid}/costallocation/enable | Enables cost allocation for a specific property group.
[**post_propertygroupbillingconfiguration_propertygroupid_costallocation_valida**](PropertyGroupBillingConfigurationApi.md#post_propertygroupbillingconfiguration_propertygroupid_costallocation_valida) | **POST** /PropertyGroupBillingConfiguration/{propertygroupid}/costallocation/validate | Validates cost allocation for a specific property group.
[**post_propertygroupbillingconfiguration_propertygroupid_notetocustomer**](PropertyGroupBillingConfigurationApi.md#post_propertygroupbillingconfiguration_propertygroupid_notetocustomer) | **POST** /PropertyGroupBillingConfiguration/{propertygroupid}/notetocustomer | Updates the note to customer for a specific property group.
[**post_propertygroupbillingconfiguration_suggestions_firstinvoiceenddatetime**](PropertyGroupBillingConfigurationApi.md#post_propertygroupbillingconfiguration_suggestions_firstinvoiceenddatetime) | **POST** /PropertyGroupBillingConfiguration/suggestions/firstInvoiceEndDateTime | Gets the first invoice end date time suggestion for provided service locations.
[**post_propertygroupbillingconfiguration_suggestions_invoicebillingconfigurati**](PropertyGroupBillingConfigurationApi.md#post_propertygroupbillingconfiguration_suggestions_invoicebillingconfigurati) | **POST** /PropertyGroupBillingConfiguration/suggestions/invoicebillingconfiguration | Gets invoice billing configuration suggestions.
[**post_propertygroupbillingconfiguration_suggestions_product**](PropertyGroupBillingConfigurationApi.md#post_propertygroupbillingconfiguration_suggestions_product) | **POST** /PropertyGroupBillingConfiguration/suggestions/product | Gets product suggestions for invoice billing configuration.


# **get_propertygroupbillingconfiguration_formulas**
> FunctionDescriptionDTOListApiResponseDTO get_propertygroupbillingconfiguration_formulas(zf_tuuid, zf_ouuid)

Lists all available formulas.

Lists all available formulas.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.function_description_dto_list_api_response_dto import FunctionDescriptionDTOListApiResponseDTO
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
    api_instance = billing_client.PropertyGroupBillingConfigurationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Lists all available formulas.
        api_response = api_instance.get_propertygroupbillingconfiguration_formulas(zf_tuuid, zf_ouuid)
        print("The response of PropertyGroupBillingConfigurationApi->get_propertygroupbillingconfiguration_formulas:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingConfigurationApi->get_propertygroupbillingconfiguration_formulas: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**FunctionDescriptionDTOListApiResponseDTO**](FunctionDescriptionDTOListApiResponseDTO.md)

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

# **get_propertygroupbillingconfiguration_propertygroupid**
> PropertyGroupBillingConfigurationDTOApiResponseDTO get_propertygroupbillingconfiguration_propertygroupid(propertygroupid, zf_tuuid, zf_ouuid)

Gets the billing configuration for a specific property group.

Gets the billing configuration for a specific property group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.property_group_billing_configuration_dto_api_response_dto import PropertyGroupBillingConfigurationDTOApiResponseDTO
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
    api_instance = billing_client.PropertyGroupBillingConfigurationApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The property group ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Gets the billing configuration for a specific property group.
        api_response = api_instance.get_propertygroupbillingconfiguration_propertygroupid(propertygroupid, zf_tuuid, zf_ouuid)
        print("The response of PropertyGroupBillingConfigurationApi->get_propertygroupbillingconfiguration_propertygroupid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingConfigurationApi->get_propertygroupbillingconfiguration_propertygroupid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The property group ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PropertyGroupBillingConfigurationDTOApiResponseDTO**](PropertyGroupBillingConfigurationDTOApiResponseDTO.md)

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

# **post_propertygroupbillingconfiguration**
> PropertyGroupBillingConfigurationDTOApiResponseDTO post_propertygroupbillingconfiguration(zf_tuuid, zf_ouuid, update_property_group_billing_configuration_request=update_property_group_billing_configuration_request)

Updates a billing configuration for a property group.

Updates a billing configuration for a property group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.property_group_billing_configuration_dto_api_response_dto import PropertyGroupBillingConfigurationDTOApiResponseDTO
from billing_client.models.update_property_group_billing_configuration_request import UpdatePropertyGroupBillingConfigurationRequest
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
    api_instance = billing_client.PropertyGroupBillingConfigurationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_property_group_billing_configuration_request = {"propertyGroup":{"id":"string","name":"string"},"companyBankAccountId":"string","advanceFrequency":{},"invoiceFrequency":{},"invoiceDay":0,"invoiceMonth":0,"productId":"string","paymentTermsId":"string"} # UpdatePropertyGroupBillingConfigurationRequest | The update request. (optional)

    try:
        # Updates a billing configuration for a property group.
        api_response = api_instance.post_propertygroupbillingconfiguration(zf_tuuid, zf_ouuid, update_property_group_billing_configuration_request=update_property_group_billing_configuration_request)
        print("The response of PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_property_group_billing_configuration_request** | [**UpdatePropertyGroupBillingConfigurationRequest**](UpdatePropertyGroupBillingConfigurationRequest.md)| The update request. | [optional] 

### Return type

[**PropertyGroupBillingConfigurationDTOApiResponseDTO**](PropertyGroupBillingConfigurationDTOApiResponseDTO.md)

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

# **post_propertygroupbillingconfiguration_consolidatednotestocustomer**
> StringApiResponseDTO post_propertygroupbillingconfiguration_consolidatednotestocustomer(zf_tuuid, zf_ouuid, get_property_group_billing_configuration_consolidated_notes_to_customer_request=get_property_group_billing_configuration_consolidated_notes_to_customer_request)

Gets consolidated notes to customer for property groups.

Gets consolidated notes to customer for property groups.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.get_property_group_billing_configuration_consolidated_notes_to_customer_request import GetPropertyGroupBillingConfigurationConsolidatedNotesToCustomerRequest
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
    api_instance = billing_client.PropertyGroupBillingConfigurationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    get_property_group_billing_configuration_consolidated_notes_to_customer_request = {"propertyGroupIds":["string"],"culture":{}} # GetPropertyGroupBillingConfigurationConsolidatedNotesToCustomerRequest | The request containing property group IDs and culture. (optional)

    try:
        # Gets consolidated notes to customer for property groups.
        api_response = api_instance.post_propertygroupbillingconfiguration_consolidatednotestocustomer(zf_tuuid, zf_ouuid, get_property_group_billing_configuration_consolidated_notes_to_customer_request=get_property_group_billing_configuration_consolidated_notes_to_customer_request)
        print("The response of PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_consolidatednotestocustomer:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_consolidatednotestocustomer: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **get_property_group_billing_configuration_consolidated_notes_to_customer_request** | [**GetPropertyGroupBillingConfigurationConsolidatedNotesToCustomerRequest**](GetPropertyGroupBillingConfigurationConsolidatedNotesToCustomerRequest.md)| The request containing property group IDs and culture. | [optional] 

### Return type

[**StringApiResponseDTO**](StringApiResponseDTO.md)

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

# **post_propertygroupbillingconfiguration_entityid_translations**
> ApiResponseDTO post_propertygroupbillingconfiguration_entityid_translations(entity_id, zf_tuuid, zf_ouuid, update_entity_translation_request=update_entity_translation_request)

/PropertyGroupBillingConfiguration/{entityId}/translations - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.api_response_dto import ApiResponseDTO
from billing_client.models.update_entity_translation_request import UpdateEntityTranslationRequest
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
    api_instance = billing_client.PropertyGroupBillingConfigurationApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_entity_translation_request = {"translatedFields":{}} # UpdateEntityTranslationRequest |  (optional)

    try:
        # /PropertyGroupBillingConfiguration/{entityId}/translations - POST
        api_response = api_instance.post_propertygroupbillingconfiguration_entityid_translations(entity_id, zf_tuuid, zf_ouuid, update_entity_translation_request=update_entity_translation_request)
        print("The response of PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_entityid_translations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_entityid_translations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_entity_translation_request** | [**UpdateEntityTranslationRequest**](UpdateEntityTranslationRequest.md)|  | [optional] 

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
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_propertygroupbillingconfiguration_getall**
> PropertyGroupBillingConfigurationDTOPagedResponseModelDTOApiResponseDTO post_propertygroupbillingconfiguration_getall(zf_tuuid, zf_ouuid, continuation_token=continuation_token, paged_property_group_billing_configurations_query_params=paged_property_group_billing_configurations_query_params)

Gets all billing configurations for property groups.

Gets all billing configurations for property groups.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.paged_property_group_billing_configurations_query_params import PagedPropertyGroupBillingConfigurationsQueryParams
from billing_client.models.property_group_billing_configuration_dto_paged_response_model_dto_api_response_dto import PropertyGroupBillingConfigurationDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = billing_client.PropertyGroupBillingConfigurationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    continuation_token = 'continuation_token_example' # str | The continuation token. (optional)
    paged_property_group_billing_configurations_query_params = {"propertyGroupIds":["string"]} # PagedPropertyGroupBillingConfigurationsQueryParams | The query parameters. (optional)

    try:
        # Gets all billing configurations for property groups.
        api_response = api_instance.post_propertygroupbillingconfiguration_getall(zf_tuuid, zf_ouuid, continuation_token=continuation_token, paged_property_group_billing_configurations_query_params=paged_property_group_billing_configurations_query_params)
        print("The response of PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_getall:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_getall: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **continuation_token** | **str**| The continuation token. | [optional] 
 **paged_property_group_billing_configurations_query_params** | [**PagedPropertyGroupBillingConfigurationsQueryParams**](PagedPropertyGroupBillingConfigurationsQueryParams.md)| The query parameters. | [optional] 

### Return type

[**PropertyGroupBillingConfigurationDTOPagedResponseModelDTOApiResponseDTO**](PropertyGroupBillingConfigurationDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **post_propertygroupbillingconfiguration_propertygroupid_costallocation**
> PropertyGroupBillingConfigurationDTOApiResponseDTO post_propertygroupbillingconfiguration_propertygroupid_costallocation(propertygroupid, zf_tuuid, zf_ouuid, update_property_group_billing_configuration_cost_allocation_request=update_property_group_billing_configuration_cost_allocation_request)

Updates the cost allocation for a specific property group.

Updates the cost allocation for a specific property group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.property_group_billing_configuration_dto_api_response_dto import PropertyGroupBillingConfigurationDTOApiResponseDTO
from billing_client.models.update_property_group_billing_configuration_cost_allocation_request import UpdatePropertyGroupBillingConfigurationCostAllocationRequest
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
    api_instance = billing_client.PropertyGroupBillingConfigurationApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The property group ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_property_group_billing_configuration_cost_allocation_request = {"requiredIncomingInvoiceComponents":[{"id":"string","optional":true}],"calculationConfigurations":[{"name":"string","id":"string","serviceLocationIds":["string"],"billingItems":[{"billingItemId":"string","deviatingTariffCalculation":true,"tariffFormula":{"functions":{}}}]}]} # UpdatePropertyGroupBillingConfigurationCostAllocationRequest | The update request. (optional)

    try:
        # Updates the cost allocation for a specific property group.
        api_response = api_instance.post_propertygroupbillingconfiguration_propertygroupid_costallocation(propertygroupid, zf_tuuid, zf_ouuid, update_property_group_billing_configuration_cost_allocation_request=update_property_group_billing_configuration_cost_allocation_request)
        print("The response of PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_propertygroupid_costallocation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_propertygroupid_costallocation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The property group ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_property_group_billing_configuration_cost_allocation_request** | [**UpdatePropertyGroupBillingConfigurationCostAllocationRequest**](UpdatePropertyGroupBillingConfigurationCostAllocationRequest.md)| The update request. | [optional] 

### Return type

[**PropertyGroupBillingConfigurationDTOApiResponseDTO**](PropertyGroupBillingConfigurationDTOApiResponseDTO.md)

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

# **post_propertygroupbillingconfiguration_propertygroupid_costallocation_billwi**
> BooleanApiResponseDTO post_propertygroupbillingconfiguration_propertygroupid_costallocation_billwi(propertygroupid, zf_tuuid, zf_ouuid, bill_with_previous_tariffs_request=bill_with_previous_tariffs_request)

Triggers billing with previous tariffs for a specific property group.

Triggers billing with previous tariffs for a specific property group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.bill_with_previous_tariffs_request import BillWithPreviousTariffsRequest
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
    api_instance = billing_client.PropertyGroupBillingConfigurationApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The property group ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bill_with_previous_tariffs_request = {"billingRelationIds":["string"]} # BillWithPreviousTariffsRequest | The request containing billing relation IDs. (optional)

    try:
        # Triggers billing with previous tariffs for a specific property group.
        api_response = api_instance.post_propertygroupbillingconfiguration_propertygroupid_costallocation_billwi(propertygroupid, zf_tuuid, zf_ouuid, bill_with_previous_tariffs_request=bill_with_previous_tariffs_request)
        print("The response of PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_propertygroupid_costallocation_billwi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_propertygroupid_costallocation_billwi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The property group ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bill_with_previous_tariffs_request** | [**BillWithPreviousTariffsRequest**](BillWithPreviousTariffsRequest.md)| The request containing billing relation IDs. | [optional] 

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_propertygroupbillingconfiguration_propertygroupid_costallocation_disabl**
> PropertyGroupBillingConfigurationDTOApiResponseDTO post_propertygroupbillingconfiguration_propertygroupid_costallocation_disabl(propertygroupid, zf_tuuid, zf_ouuid)

Disables cost allocation for a specific property group.

Disables cost allocation for a specific property group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.property_group_billing_configuration_dto_api_response_dto import PropertyGroupBillingConfigurationDTOApiResponseDTO
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
    api_instance = billing_client.PropertyGroupBillingConfigurationApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The property group ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Disables cost allocation for a specific property group.
        api_response = api_instance.post_propertygroupbillingconfiguration_propertygroupid_costallocation_disabl(propertygroupid, zf_tuuid, zf_ouuid)
        print("The response of PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_propertygroupid_costallocation_disabl:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_propertygroupid_costallocation_disabl: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The property group ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PropertyGroupBillingConfigurationDTOApiResponseDTO**](PropertyGroupBillingConfigurationDTOApiResponseDTO.md)

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

# **post_propertygroupbillingconfiguration_propertygroupid_costallocation_enable**
> PropertyGroupBillingConfigurationDTOApiResponseDTO post_propertygroupbillingconfiguration_propertygroupid_costallocation_enable(propertygroupid, zf_tuuid, zf_ouuid)

Enables cost allocation for a specific property group.

Enables cost allocation for a specific property group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.property_group_billing_configuration_dto_api_response_dto import PropertyGroupBillingConfigurationDTOApiResponseDTO
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
    api_instance = billing_client.PropertyGroupBillingConfigurationApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The property group ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Enables cost allocation for a specific property group.
        api_response = api_instance.post_propertygroupbillingconfiguration_propertygroupid_costallocation_enable(propertygroupid, zf_tuuid, zf_ouuid)
        print("The response of PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_propertygroupid_costallocation_enable:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_propertygroupid_costallocation_enable: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The property group ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PropertyGroupBillingConfigurationDTOApiResponseDTO**](PropertyGroupBillingConfigurationDTOApiResponseDTO.md)

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

# **post_propertygroupbillingconfiguration_propertygroupid_costallocation_valida**
> PropertyGroupBillingConfigurationDTOApiResponseDTO post_propertygroupbillingconfiguration_propertygroupid_costallocation_valida(propertygroupid, zf_tuuid, zf_ouuid)

Validates cost allocation for a specific property group.

Validates cost allocation for a specific property group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.property_group_billing_configuration_dto_api_response_dto import PropertyGroupBillingConfigurationDTOApiResponseDTO
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
    api_instance = billing_client.PropertyGroupBillingConfigurationApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The property group ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Validates cost allocation for a specific property group.
        api_response = api_instance.post_propertygroupbillingconfiguration_propertygroupid_costallocation_valida(propertygroupid, zf_tuuid, zf_ouuid)
        print("The response of PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_propertygroupid_costallocation_valida:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_propertygroupid_costallocation_valida: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The property group ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PropertyGroupBillingConfigurationDTOApiResponseDTO**](PropertyGroupBillingConfigurationDTOApiResponseDTO.md)

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

# **post_propertygroupbillingconfiguration_propertygroupid_notetocustomer**
> PropertyGroupBillingConfigurationDTOApiResponseDTO post_propertygroupbillingconfiguration_propertygroupid_notetocustomer(propertygroupid, zf_tuuid, zf_ouuid, update_property_group_billing_configuration_note_to_customer_request=update_property_group_billing_configuration_note_to_customer_request)

Updates the note to customer for a specific property group.

Updates the note to customer for a specific property group.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.property_group_billing_configuration_dto_api_response_dto import PropertyGroupBillingConfigurationDTOApiResponseDTO
from billing_client.models.update_property_group_billing_configuration_note_to_customer_request import UpdatePropertyGroupBillingConfigurationNoteToCustomerRequest
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
    api_instance = billing_client.PropertyGroupBillingConfigurationApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The property group ID.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_property_group_billing_configuration_note_to_customer_request = {"noteToCustomer":"string"} # UpdatePropertyGroupBillingConfigurationNoteToCustomerRequest | The update request. (optional)

    try:
        # Updates the note to customer for a specific property group.
        api_response = api_instance.post_propertygroupbillingconfiguration_propertygroupid_notetocustomer(propertygroupid, zf_tuuid, zf_ouuid, update_property_group_billing_configuration_note_to_customer_request=update_property_group_billing_configuration_note_to_customer_request)
        print("The response of PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_propertygroupid_notetocustomer:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_propertygroupid_notetocustomer: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The property group ID. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_property_group_billing_configuration_note_to_customer_request** | [**UpdatePropertyGroupBillingConfigurationNoteToCustomerRequest**](UpdatePropertyGroupBillingConfigurationNoteToCustomerRequest.md)| The update request. | [optional] 

### Return type

[**PropertyGroupBillingConfigurationDTOApiResponseDTO**](PropertyGroupBillingConfigurationDTOApiResponseDTO.md)

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

# **post_propertygroupbillingconfiguration_suggestions_firstinvoiceenddatetime**
> FirstInvoiceEndDateTimeSuggestionResponseDTOApiResponseDTO post_propertygroupbillingconfiguration_suggestions_firstinvoiceenddatetime(zf_tuuid, zf_ouuid, property_group_first_invoice_end_date_time_suggestions_request=property_group_first_invoice_end_date_time_suggestions_request)

Gets the first invoice end date time suggestion for provided service locations.

Gets the first invoice end date time suggestion for provided service locations.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.first_invoice_end_date_time_suggestion_response_dto_api_response_dto import FirstInvoiceEndDateTimeSuggestionResponseDTOApiResponseDTO
from billing_client.models.property_group_first_invoice_end_date_time_suggestions_request import PropertyGroupFirstInvoiceEndDateTimeSuggestionsRequest
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
    api_instance = billing_client.PropertyGroupBillingConfigurationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    property_group_first_invoice_end_date_time_suggestions_request = {"serviceLocationIds":["string"],"invoiceFrequency":{},"invoiceStartDateTimeUTC":"string"} # PropertyGroupFirstInvoiceEndDateTimeSuggestionsRequest | The request containing service location IDs, invoice frequency, and invoice start date time UTC. (optional)

    try:
        # Gets the first invoice end date time suggestion for provided service locations.
        api_response = api_instance.post_propertygroupbillingconfiguration_suggestions_firstinvoiceenddatetime(zf_tuuid, zf_ouuid, property_group_first_invoice_end_date_time_suggestions_request=property_group_first_invoice_end_date_time_suggestions_request)
        print("The response of PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_suggestions_firstinvoiceenddatetime:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_suggestions_firstinvoiceenddatetime: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **property_group_first_invoice_end_date_time_suggestions_request** | [**PropertyGroupFirstInvoiceEndDateTimeSuggestionsRequest**](PropertyGroupFirstInvoiceEndDateTimeSuggestionsRequest.md)| The request containing service location IDs, invoice frequency, and invoice start date time UTC. | [optional] 

### Return type

[**FirstInvoiceEndDateTimeSuggestionResponseDTOApiResponseDTO**](FirstInvoiceEndDateTimeSuggestionResponseDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_propertygroupbillingconfiguration_suggestions_invoicebillingconfigurati**
> InvoiceBillingConfigurationSuggestionsResponseDTOApiResponseDTO post_propertygroupbillingconfiguration_suggestions_invoicebillingconfigurati(zf_tuuid, zf_ouuid, invoice_billing_configurations_suggestions_request=invoice_billing_configurations_suggestions_request)

Gets invoice billing configuration suggestions.

Gets invoice billing configuration suggestions.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.invoice_billing_configuration_suggestions_response_dto_api_response_dto import InvoiceBillingConfigurationSuggestionsResponseDTOApiResponseDTO
from billing_client.models.invoice_billing_configurations_suggestions_request import InvoiceBillingConfigurationsSuggestionsRequest
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
    api_instance = billing_client.PropertyGroupBillingConfigurationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    invoice_billing_configurations_suggestions_request = {"serviceLocationIds":["string"],"contractId":"string"} # InvoiceBillingConfigurationsSuggestionsRequest | The request containing service location IDs and contract ID. (optional)

    try:
        # Gets invoice billing configuration suggestions.
        api_response = api_instance.post_propertygroupbillingconfiguration_suggestions_invoicebillingconfigurati(zf_tuuid, zf_ouuid, invoice_billing_configurations_suggestions_request=invoice_billing_configurations_suggestions_request)
        print("The response of PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_suggestions_invoicebillingconfigurati:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_suggestions_invoicebillingconfigurati: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **invoice_billing_configurations_suggestions_request** | [**InvoiceBillingConfigurationsSuggestionsRequest**](InvoiceBillingConfigurationsSuggestionsRequest.md)| The request containing service location IDs and contract ID. | [optional] 

### Return type

[**InvoiceBillingConfigurationSuggestionsResponseDTOApiResponseDTO**](InvoiceBillingConfigurationSuggestionsResponseDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_propertygroupbillingconfiguration_suggestions_product**
> InvoiceProductConfigurationSuggestionsResponseDTOApiResponseDTO post_propertygroupbillingconfiguration_suggestions_product(zf_tuuid, zf_ouuid, invoice_product_configurations_suggestions_request=invoice_product_configurations_suggestions_request)

Gets product suggestions for invoice billing configuration.

Gets product suggestions for invoice billing configuration.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import billing_client
from billing_client.models.invoice_product_configuration_suggestions_response_dto_api_response_dto import InvoiceProductConfigurationSuggestionsResponseDTOApiResponseDTO
from billing_client.models.invoice_product_configurations_suggestions_request import InvoiceProductConfigurationsSuggestionsRequest
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
    api_instance = billing_client.PropertyGroupBillingConfigurationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    invoice_product_configurations_suggestions_request = {"serviceLocationIds":["string"],"contractId":"string"} # InvoiceProductConfigurationsSuggestionsRequest | The request containing service location IDs and contract ID. (optional)

    try:
        # Gets product suggestions for invoice billing configuration.
        api_response = api_instance.post_propertygroupbillingconfiguration_suggestions_product(zf_tuuid, zf_ouuid, invoice_product_configurations_suggestions_request=invoice_product_configurations_suggestions_request)
        print("The response of PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_suggestions_product:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupBillingConfigurationApi->post_propertygroupbillingconfiguration_suggestions_product: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **invoice_product_configurations_suggestions_request** | [**InvoiceProductConfigurationsSuggestionsRequest**](InvoiceProductConfigurationsSuggestionsRequest.md)| The request containing service location IDs and contract ID. | [optional] 

### Return type

[**InvoiceProductConfigurationSuggestionsResponseDTOApiResponseDTO**](InvoiceProductConfigurationSuggestionsResponseDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

