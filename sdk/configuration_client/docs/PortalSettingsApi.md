# configuration_client.PortalSettingsApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_page_notification**](PortalSettingsApi.md#delete_page_notification) | **POST** /PortalSettings/notification/{pageIdentifier}/delete | Removes a page notification from the portal settings.
[**get_portal_settings**](PortalSettingsApi.md#get_portal_settings) | **GET** /PortalSettings | Retrieves portal settings for a specific portal URL.
[**update_portal_settings**](PortalSettingsApi.md#update_portal_settings) | **POST** /PortalSettings | Updates portal settings configuration.
[**upsert_page_notification**](PortalSettingsApi.md#upsert_page_notification) | **POST** /PortalSettings/notification | Upserts a page notification to the portal settings.


# **delete_page_notification**
> PortalSettingsDTOApiResponseDTO delete_page_notification(page_identifier, zf_tuuid, zf_ouuid)

Removes a page notification from the portal settings.

Removes a page notification from the portal settings.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.portal_settings_dto_api_response_dto import PortalSettingsDTOApiResponseDTO
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
    api_instance = configuration_client.PortalSettingsApi(api_client)
    page_identifier = 'page_identifier_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Removes a page notification from the portal settings.
        api_response = api_instance.delete_page_notification(page_identifier, zf_tuuid, zf_ouuid)
        print("The response of PortalSettingsApi->delete_page_notification:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PortalSettingsApi->delete_page_notification: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_identifier** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PortalSettingsDTOApiResponseDTO**](PortalSettingsDTOApiResponseDTO.md)

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

# **get_portal_settings**
> PortalSettingsDTOApiResponseDTO get_portal_settings(zf_tuuid, zf_ouuid, portal_url=portal_url)

Retrieves portal settings for a specific portal URL.

Retrieves portal settings for a specific portal URL.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.portal_settings_dto_api_response_dto import PortalSettingsDTOApiResponseDTO
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
    api_instance = configuration_client.PortalSettingsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    portal_url = 'portal_url_example' # str | The URL of the portal for which to retrieve settings. (optional)

    try:
        # Retrieves portal settings for a specific portal URL.
        api_response = api_instance.get_portal_settings(zf_tuuid, zf_ouuid, portal_url=portal_url)
        print("The response of PortalSettingsApi->get_portal_settings:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PortalSettingsApi->get_portal_settings: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **portal_url** | **str**| The URL of the portal for which to retrieve settings. | [optional] 

### Return type

[**PortalSettingsDTOApiResponseDTO**](PortalSettingsDTOApiResponseDTO.md)

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

# **update_portal_settings**
> PortalSettingsDTOApiResponseDTO update_portal_settings(zf_tuuid, zf_ouuid, update_portal_settings_request=update_portal_settings_request)

Updates portal settings configuration.

Updates portal settings configuration.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.portal_settings_dto_api_response_dto import PortalSettingsDTOApiResponseDTO
from configuration_client.models.update_portal_settings_request import UpdatePortalSettingsRequest
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
    api_instance = configuration_client.PortalSettingsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_portal_settings_request = {"favIcon":"string","logo":"string","primaryColor":"string","secondaryColor":"string","advanceChangeLimit":{"rangeMin":0,"rangeMax":0,"type":{}},"billingSettings":{"allowCustomerToChangeAdvanceAmount":true,"hideInvoiceSection":true}} # UpdatePortalSettingsRequest | The updated portal settings. (optional)

    try:
        # Updates portal settings configuration.
        api_response = api_instance.update_portal_settings(zf_tuuid, zf_ouuid, update_portal_settings_request=update_portal_settings_request)
        print("The response of PortalSettingsApi->update_portal_settings:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PortalSettingsApi->update_portal_settings: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_portal_settings_request** | [**UpdatePortalSettingsRequest**](UpdatePortalSettingsRequest.md)| The updated portal settings. | [optional] 

### Return type

[**PortalSettingsDTOApiResponseDTO**](PortalSettingsDTOApiResponseDTO.md)

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

# **upsert_page_notification**
> PortalSettingsDTOApiResponseDTO upsert_page_notification(zf_tuuid, zf_ouuid, upsert_portal_page_notification_request=upsert_portal_page_notification_request)

Upserts a page notification to the portal settings.

Upserts a page notification to the portal settings.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.portal_settings_dto_api_response_dto import PortalSettingsDTOApiResponseDTO
from configuration_client.models.upsert_portal_page_notification_request import UpsertPortalPageNotificationRequest
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
    api_instance = configuration_client.PortalSettingsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    upsert_portal_page_notification_request = {"pageIdentifier":{},"notificationType":{},"translatedContent":{}} # UpsertPortalPageNotificationRequest | The request to upsert a page notification. (optional)

    try:
        # Upserts a page notification to the portal settings.
        api_response = api_instance.upsert_page_notification(zf_tuuid, zf_ouuid, upsert_portal_page_notification_request=upsert_portal_page_notification_request)
        print("The response of PortalSettingsApi->upsert_page_notification:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PortalSettingsApi->upsert_page_notification: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **upsert_portal_page_notification_request** | [**UpsertPortalPageNotificationRequest**](UpsertPortalPageNotificationRequest.md)| The request to upsert a page notification. | [optional] 

### Return type

[**PortalSettingsDTOApiResponseDTO**](PortalSettingsDTOApiResponseDTO.md)

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

