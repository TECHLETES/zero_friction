# configuration_client.CollectionStepsApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_collectionsteps_id**](CollectionStepsApi.md#delete_collectionsteps_id) | **DELETE** /CollectionSteps/{id} | Deletes a collection flow step by its identifier.
[**get_collectionsteps**](CollectionStepsApi.md#get_collectionsteps) | **GET** /CollectionSteps | Retrieves a paged list of collection flow steps.
[**post_collectionsteps**](CollectionStepsApi.md#post_collectionsteps) | **POST** /CollectionSteps | Creates a new collection flow step.
[**post_collectionsteps_entityid_translations**](CollectionStepsApi.md#post_collectionsteps_entityid_translations) | **POST** /CollectionSteps/{entityId}/translations | /CollectionSteps/{entityId}/translations - POST
[**post_collectionsteps_id**](CollectionStepsApi.md#post_collectionsteps_id) | **POST** /CollectionSteps/{id} | Updates an existing collection flow step.


# **delete_collectionsteps_id**
> BooleanApiResponseDTO delete_collectionsteps_id(id, zf_tuuid)

Deletes a collection flow step by its identifier.

Deletes a collection flow step by its identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.CollectionStepsApi(api_client)
    id = 'id_example' # str | The unique identifier of the collection flow step to delete.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID

    try:
        # Deletes a collection flow step by its identifier.
        api_response = api_instance.delete_collectionsteps_id(id, zf_tuuid)
        print("The response of CollectionStepsApi->delete_collectionsteps_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionStepsApi->delete_collectionsteps_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the collection flow step to delete. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 

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
**404** | Not Found |  -  |
**204** | No Content |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_collectionsteps**
> CollectionFlowStepDTOPagedResponseModelDTOApiResponseDTO get_collectionsteps(zf_tuuid, zf_ouuid, continuation_token=continuation_token)

Retrieves a paged list of collection flow steps.

Retrieves a paged list of collection flow steps.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.collection_flow_step_dto_paged_response_model_dto_api_response_dto import CollectionFlowStepDTOPagedResponseModelDTOApiResponseDTO
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.CollectionStepsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of collection flow steps.
        api_response = api_instance.get_collectionsteps(zf_tuuid, zf_ouuid, continuation_token=continuation_token)
        print("The response of CollectionStepsApi->get_collectionsteps:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionStepsApi->get_collectionsteps: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**CollectionFlowStepDTOPagedResponseModelDTOApiResponseDTO**](CollectionFlowStepDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **post_collectionsteps**
> CollectionFlowStepDTOApiResponseDTO post_collectionsteps(zf_tuuid, collection_flow_step_request=collection_flow_step_request)

Creates a new collection flow step.

Creates a new collection flow step.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.collection_flow_step_dto_api_response_dto import CollectionFlowStepDTOApiResponseDTO
from configuration_client.models.collection_flow_step_request import CollectionFlowStepRequest
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.CollectionStepsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    collection_flow_step_request = {"id":"string","name":"string","triggerDays":0,"stepType":{},"chargeType":{},"chargeParameters":{"taxCodeId":"string"},"communicationType":{},"messageTitle":"string","communicationLevel":{},"communicationAttachments":[{"id":"string","internalFilePath":"string","fileName":"string"}],"localisationLevel":{},"localisedFields":["string"],"translatedFields":{}} # CollectionFlowStepRequest | The details of the collection flow step to create. (optional)

    try:
        # Creates a new collection flow step.
        api_response = api_instance.post_collectionsteps(zf_tuuid, collection_flow_step_request=collection_flow_step_request)
        print("The response of CollectionStepsApi->post_collectionsteps:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionStepsApi->post_collectionsteps: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **collection_flow_step_request** | [**CollectionFlowStepRequest**](CollectionFlowStepRequest.md)| The details of the collection flow step to create. | [optional] 

### Return type

[**CollectionFlowStepDTOApiResponseDTO**](CollectionFlowStepDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_collectionsteps_entityid_translations**
> ApiResponseDTO post_collectionsteps_entityid_translations(entity_id, zf_tuuid, zf_ouuid, update_entity_translation_request=update_entity_translation_request)

/CollectionSteps/{entityId}/translations - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.api_response_dto import ApiResponseDTO
from configuration_client.models.update_entity_translation_request import UpdateEntityTranslationRequest
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.CollectionStepsApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_entity_translation_request = {"translatedFields":{}} # UpdateEntityTranslationRequest |  (optional)

    try:
        # /CollectionSteps/{entityId}/translations - POST
        api_response = api_instance.post_collectionsteps_entityid_translations(entity_id, zf_tuuid, zf_ouuid, update_entity_translation_request=update_entity_translation_request)
        print("The response of CollectionStepsApi->post_collectionsteps_entityid_translations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionStepsApi->post_collectionsteps_entityid_translations: %s\n" % e)
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

# **post_collectionsteps_id**
> CollectionFlowStepDTOApiResponseDTO post_collectionsteps_id(id, zf_tuuid, collection_flow_step_request=collection_flow_step_request)

Updates an existing collection flow step.

Updates an existing collection flow step.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.collection_flow_step_dto_api_response_dto import CollectionFlowStepDTOApiResponseDTO
from configuration_client.models.collection_flow_step_request import CollectionFlowStepRequest
from configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/cfg
# See configuration.py for a list of all supported configuration parameters.
configuration = configuration_client.Configuration(
    host = "https://api.zerofriction.co/api/cfg"
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
with configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = configuration_client.CollectionStepsApi(api_client)
    id = 'id_example' # str | The unique identifier of the collection flow step to update.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    collection_flow_step_request = {"id":"string","name":"string","triggerDays":0,"stepType":{},"chargeType":{},"chargeParameters":{"taxCodeId":"string"},"communicationType":{},"messageTitle":"string","communicationLevel":{},"communicationAttachments":[{"id":"string","internalFilePath":"string","fileName":"string"}],"localisationLevel":{},"localisedFields":["string"],"translatedFields":{}} # CollectionFlowStepRequest | The updated collection flow step details. (optional)

    try:
        # Updates an existing collection flow step.
        api_response = api_instance.post_collectionsteps_id(id, zf_tuuid, collection_flow_step_request=collection_flow_step_request)
        print("The response of CollectionStepsApi->post_collectionsteps_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CollectionStepsApi->post_collectionsteps_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the collection flow step to update. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **collection_flow_step_request** | [**CollectionFlowStepRequest**](CollectionFlowStepRequest.md)| The updated collection flow step details. | [optional] 

### Return type

[**CollectionFlowStepDTOApiResponseDTO**](CollectionFlowStepDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

