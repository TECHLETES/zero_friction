# forecasting_client.PropertyGroupForecastingConfigurationApi

All URIs are relative to *https://api.zerofriction.co/api/fct*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_property_group_forecasting_config**](PropertyGroupForecastingConfigurationApi.md#get_property_group_forecasting_config) | **GET** /PropertyGroupForecastingConfiguration/{propertygroupid} | Retrieves the property group forecasting configuration by its identifier
[**update_property_group_config_consumer_groups**](PropertyGroupForecastingConfigurationApi.md#update_property_group_config_consumer_groups) | **POST** /PropertyGroupForecastingConfiguration/{propertygroupid}/consumergroups | Updates consumer group configuration an existing property group


# **get_property_group_forecasting_config**
> PropertyGroupForecastingConfigurationDTOApiResponseDTO get_property_group_forecasting_config(propertygroupid, zf_tuuid, zf_ouuid)

Retrieves the property group forecasting configuration by its identifier

Retrieves the property group forecasting configuration by its identifier

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.property_group_forecasting_configuration_dto_api_response_dto import PropertyGroupForecastingConfigurationDTOApiResponseDTO
from forecasting_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/fct
# See configuration.py for a list of all supported configuration parameters.
configuration = forecasting_client.Configuration(
    host = "https://api.zerofriction.co/api/fct"
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
with forecasting_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = forecasting_client.PropertyGroupForecastingConfigurationApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The unique identifier of the property group
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves the property group forecasting configuration by its identifier
        api_response = api_instance.get_property_group_forecasting_config(propertygroupid, zf_tuuid, zf_ouuid)
        print("The response of PropertyGroupForecastingConfigurationApi->get_property_group_forecasting_config:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupForecastingConfigurationApi->get_property_group_forecasting_config: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The unique identifier of the property group | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PropertyGroupForecastingConfigurationDTOApiResponseDTO**](PropertyGroupForecastingConfigurationDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_property_group_config_consumer_groups**
> PropertyGroupForecastingConfigurationDTOApiResponseDTO update_property_group_config_consumer_groups(propertygroupid, zf_tuuid, zf_ouuid, update_property_group_forecasting_config_consumer_groups_request=update_property_group_forecasting_config_consumer_groups_request)

Updates consumer group configuration an existing property group

Updates consumer group configuration an existing property group

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.property_group_forecasting_configuration_dto_api_response_dto import PropertyGroupForecastingConfigurationDTOApiResponseDTO
from forecasting_client.models.update_property_group_forecasting_config_consumer_groups_request import UpdatePropertyGroupForecastingConfigConsumerGroupsRequest
from forecasting_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/fct
# See configuration.py for a list of all supported configuration parameters.
configuration = forecasting_client.Configuration(
    host = "https://api.zerofriction.co/api/fct"
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
with forecasting_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = forecasting_client.PropertyGroupForecastingConfigurationApi(api_client)
    propertygroupid = 'propertygroupid_example' # str | The unique identifier of the property group to update consumer group configuration on
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_property_group_forecasting_config_consumer_groups_request = {"consumerGroups":{}} # UpdatePropertyGroupForecastingConfigConsumerGroupsRequest | The consumer groups to update configuration on (optional)

    try:
        # Updates consumer group configuration an existing property group
        api_response = api_instance.update_property_group_config_consumer_groups(propertygroupid, zf_tuuid, zf_ouuid, update_property_group_forecasting_config_consumer_groups_request=update_property_group_forecasting_config_consumer_groups_request)
        print("The response of PropertyGroupForecastingConfigurationApi->update_property_group_config_consumer_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupForecastingConfigurationApi->update_property_group_config_consumer_groups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertygroupid** | **str**| The unique identifier of the property group to update consumer group configuration on | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_property_group_forecasting_config_consumer_groups_request** | [**UpdatePropertyGroupForecastingConfigConsumerGroupsRequest**](UpdatePropertyGroupForecastingConfigConsumerGroupsRequest.md)| The consumer groups to update configuration on | [optional] 

### Return type

[**PropertyGroupForecastingConfigurationDTOApiResponseDTO**](PropertyGroupForecastingConfigurationDTOApiResponseDTO.md)

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

