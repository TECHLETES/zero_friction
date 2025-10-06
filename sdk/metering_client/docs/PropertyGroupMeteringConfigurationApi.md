# metering_client.PropertyGroupMeteringConfigurationApi

All URIs are relative to *https://api.zerofriction.co/api/me*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_propertygroupmeteringconfiguration_formulas**](PropertyGroupMeteringConfigurationApi.md#get_propertygroupmeteringconfiguration_formulas) | **GET** /PropertyGroupMeteringConfiguration/formulas | Retrieves a list of all available formula functions for use in property group metering configurations
[**get_propertygroupmeteringconfiguration_propertyuuid**](PropertyGroupMeteringConfigurationApi.md#get_propertygroupmeteringconfiguration_propertyuuid) | **GET** /PropertyGroupMeteringConfiguration/{propertyuuid} | Retrieves the metering configuration for a specific property
[**get_propertygroupmeteringconfiguration_propertyuuid_calculatedconsumptions**](PropertyGroupMeteringConfigurationApi.md#get_propertygroupmeteringconfiguration_propertyuuid_calculatedconsumptions) | **GET** /PropertyGroupMeteringConfiguration/{propertyuuid}/calculatedconsumptions | Retrieves calculated consumptions for output channels within a specified time period
[**post_propertygroupmeteringconfiguration_propertyuuid**](PropertyGroupMeteringConfigurationApi.md#post_propertygroupmeteringconfiguration_propertyuuid) | **POST** /PropertyGroupMeteringConfiguration/{propertyuuid} | Updates the output channels for a property group metering configuration
[**post_propertygroupmeteringconfiguration_propertyuuid_outputchanneluuid_calcu**](PropertyGroupMeteringConfigurationApi.md#post_propertygroupmeteringconfiguration_propertyuuid_outputchanneluuid_calcu) | **POST** /PropertyGroupMeteringConfiguration/{propertyuuid}/{outputchanneluuid}/calculate | Calculates values for a specific output channel in a property group metering configuration
[**post_propertygroupmeteringconfiguration_propertyuuid_validate**](PropertyGroupMeteringConfigurationApi.md#post_propertygroupmeteringconfiguration_propertyuuid_validate) | **POST** /PropertyGroupMeteringConfiguration/{propertyuuid}/validate | Validates a property group metering configuration


# **get_propertygroupmeteringconfiguration_formulas**
> FunctionDescriptionListApiResponseDTO get_propertygroupmeteringconfiguration_formulas(zf_tuuid, zf_ouuid)

Retrieves a list of all available formula functions for use in property group metering configurations

Retrieves a list of all available formula functions for use in property group metering configurations

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.function_description_list_api_response_dto import FunctionDescriptionListApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.PropertyGroupMeteringConfigurationApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a list of all available formula functions for use in property group metering configurations
        api_response = api_instance.get_propertygroupmeteringconfiguration_formulas(zf_tuuid, zf_ouuid)
        print("The response of PropertyGroupMeteringConfigurationApi->get_propertygroupmeteringconfiguration_formulas:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupMeteringConfigurationApi->get_propertygroupmeteringconfiguration_formulas: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**FunctionDescriptionListApiResponseDTO**](FunctionDescriptionListApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the list of available formula functions |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_propertygroupmeteringconfiguration_propertyuuid**
> PropertyGroupMeteringConfigurationDTOApiResponseDTO get_propertygroupmeteringconfiguration_propertyuuid(propertyuuid, zf_tuuid, zf_ouuid)

Retrieves the metering configuration for a specific property

Retrieves the metering configuration for a specific property

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.property_group_metering_configuration_dto_api_response_dto import PropertyGroupMeteringConfigurationDTOApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.PropertyGroupMeteringConfigurationApi(api_client)
    propertyuuid = 'propertyuuid_example' # str | UUID of the property group
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves the metering configuration for a specific property
        api_response = api_instance.get_propertygroupmeteringconfiguration_propertyuuid(propertyuuid, zf_tuuid, zf_ouuid)
        print("The response of PropertyGroupMeteringConfigurationApi->get_propertygroupmeteringconfiguration_propertyuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupMeteringConfigurationApi->get_propertygroupmeteringconfiguration_propertyuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyuuid** | **str**| UUID of the property group | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PropertyGroupMeteringConfigurationDTOApiResponseDTO**](PropertyGroupMeteringConfigurationDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the property group metering configuration |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |
**404** | Property group metering configuration not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_propertygroupmeteringconfiguration_propertyuuid_calculatedconsumptions**
> CalculatedConsumptionDTOListApiResponseDTO get_propertygroupmeteringconfiguration_propertyuuid_calculatedconsumptions(propertyuuid, zf_tuuid, zf_ouuid, group_by_period=group_by_period, output_channel_ids=output_channel_ids, start_date_time=start_date_time, end_date_time=end_date_time)

Retrieves calculated consumptions for output channels within a specified time period

Retrieves calculated consumptions for output channels within a specified time period

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.calculated_consumption_dto_list_api_response_dto import CalculatedConsumptionDTOListApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.PropertyGroupMeteringConfigurationApi(api_client)
    propertyuuid = 'propertyuuid_example' # str | UUID of the property group
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    group_by_period = 'group_by_period_example' # str | Period to group results by (e.g., Daily, Monthly) (optional)
    output_channel_ids = ['output_channel_ids_example'] # List[str] | IDs of the output channels to retrieve consumptions for (optional)
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). Start date and time for the consumption period (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). End date and time for the consumption period (optional)

    try:
        # Retrieves calculated consumptions for output channels within a specified time period
        api_response = api_instance.get_propertygroupmeteringconfiguration_propertyuuid_calculatedconsumptions(propertyuuid, zf_tuuid, zf_ouuid, group_by_period=group_by_period, output_channel_ids=output_channel_ids, start_date_time=start_date_time, end_date_time=end_date_time)
        print("The response of PropertyGroupMeteringConfigurationApi->get_propertygroupmeteringconfiguration_propertyuuid_calculatedconsumptions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupMeteringConfigurationApi->get_propertygroupmeteringconfiguration_propertyuuid_calculatedconsumptions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyuuid** | **str**| UUID of the property group | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **group_by_period** | **str**| Period to group results by (e.g., Daily, Monthly) | [optional] 
 **output_channel_ids** | [**List[str]**](str.md)| IDs of the output channels to retrieve consumptions for | [optional] 
 **start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). Start date and time for the consumption period | [optional] 
 **end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). End date and time for the consumption period | [optional] 

### Return type

[**CalculatedConsumptionDTOListApiResponseDTO**](CalculatedConsumptionDTOListApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the calculated consumptions |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |
**404** | Property group or output channels not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_propertygroupmeteringconfiguration_propertyuuid**
> PropertyGroupMeteringConfigurationDTOApiResponseDTO post_propertygroupmeteringconfiguration_propertyuuid(propertyuuid, zf_tuuid, zf_ouuid, update_property_group_metering_configuration_request=update_property_group_metering_configuration_request)

Updates the output channels for a property group metering configuration

Updates the output channels for a property group metering configuration

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.property_group_metering_configuration_dto_api_response_dto import PropertyGroupMeteringConfigurationDTOApiResponseDTO
from metering_client.models.update_property_group_metering_configuration_request import UpdatePropertyGroupMeteringConfigurationRequest
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.PropertyGroupMeteringConfigurationApi(api_client)
    propertyuuid = 'propertyuuid_example' # str | UUID of the property group
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_property_group_metering_configuration_request = {"outputChannels":[{"id":"string","name":"string","unitOfMeasure":{},"meteringType":{},"formula":{"functions":{}},"utilityType":{}}]} # UpdatePropertyGroupMeteringConfigurationRequest | Update request containing the output channel configuration (optional)

    try:
        # Updates the output channels for a property group metering configuration
        api_response = api_instance.post_propertygroupmeteringconfiguration_propertyuuid(propertyuuid, zf_tuuid, zf_ouuid, update_property_group_metering_configuration_request=update_property_group_metering_configuration_request)
        print("The response of PropertyGroupMeteringConfigurationApi->post_propertygroupmeteringconfiguration_propertyuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupMeteringConfigurationApi->post_propertygroupmeteringconfiguration_propertyuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyuuid** | **str**| UUID of the property group | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_property_group_metering_configuration_request** | [**UpdatePropertyGroupMeteringConfigurationRequest**](UpdatePropertyGroupMeteringConfigurationRequest.md)| Update request containing the output channel configuration | [optional] 

### Return type

[**PropertyGroupMeteringConfigurationDTOApiResponseDTO**](PropertyGroupMeteringConfigurationDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Property group metering configuration updated successfully |  -  |
**400** | Invalid request data |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |
**404** | Property group metering configuration not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_propertygroupmeteringconfiguration_propertyuuid_outputchanneluuid_calcu**
> FormulaExecutionResultDTOApiResponseDTO post_propertygroupmeteringconfiguration_propertyuuid_outputchanneluuid_calcu(propertyuuid, outputchanneluuid, zf_tuuid, zf_ouuid, calculate_output_channel_for_property_group_metering_configuration_request=calculate_output_channel_for_property_group_metering_configuration_request)

Calculates values for a specific output channel in a property group metering configuration

Calculates values for a specific output channel in a property group metering configuration

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.calculate_output_channel_for_property_group_metering_configuration_request import CalculateOutputChannelForPropertyGroupMeteringConfigurationRequest
from metering_client.models.formula_execution_result_dto_api_response_dto import FormulaExecutionResultDTOApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.PropertyGroupMeteringConfigurationApi(api_client)
    propertyuuid = 'propertyuuid_example' # str | UUID of the property group
    outputchanneluuid = 'outputchanneluuid_example' # str | UUID of the output channel
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    calculate_output_channel_for_property_group_metering_configuration_request = {"startDateTime":"string","endDateTime":"string","simulationOnly":true} # CalculateOutputChannelForPropertyGroupMeteringConfigurationRequest | Calculation request with parameters (optional)

    try:
        # Calculates values for a specific output channel in a property group metering configuration
        api_response = api_instance.post_propertygroupmeteringconfiguration_propertyuuid_outputchanneluuid_calcu(propertyuuid, outputchanneluuid, zf_tuuid, zf_ouuid, calculate_output_channel_for_property_group_metering_configuration_request=calculate_output_channel_for_property_group_metering_configuration_request)
        print("The response of PropertyGroupMeteringConfigurationApi->post_propertygroupmeteringconfiguration_propertyuuid_outputchanneluuid_calcu:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupMeteringConfigurationApi->post_propertygroupmeteringconfiguration_propertyuuid_outputchanneluuid_calcu: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyuuid** | **str**| UUID of the property group | 
 **outputchanneluuid** | **str**| UUID of the output channel | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **calculate_output_channel_for_property_group_metering_configuration_request** | [**CalculateOutputChannelForPropertyGroupMeteringConfigurationRequest**](CalculateOutputChannelForPropertyGroupMeteringConfigurationRequest.md)| Calculation request with parameters | [optional] 

### Return type

[**FormulaExecutionResultDTOApiResponseDTO**](FormulaExecutionResultDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Output channel calculated successfully |  -  |
**400** | Invalid calculation parameters |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |
**404** | Property group or output channel not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_propertygroupmeteringconfiguration_propertyuuid_validate**
> PropertyGroupMeteringConfigurationDTOApiResponseDTO post_propertygroupmeteringconfiguration_propertyuuid_validate(propertyuuid, zf_tuuid, zf_ouuid)

Validates a property group metering configuration

Validates a property group metering configuration

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.property_group_metering_configuration_dto_api_response_dto import PropertyGroupMeteringConfigurationDTOApiResponseDTO
from metering_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/me
# See configuration.py for a list of all supported configuration parameters.
configuration = metering_client.Configuration(
    host = "https://api.zerofriction.co/api/me"
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
with metering_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = metering_client.PropertyGroupMeteringConfigurationApi(api_client)
    propertyuuid = 'propertyuuid_example' # str | UUID of the property group
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Validates a property group metering configuration
        api_response = api_instance.post_propertygroupmeteringconfiguration_propertyuuid_validate(propertyuuid, zf_tuuid, zf_ouuid)
        print("The response of PropertyGroupMeteringConfigurationApi->post_propertygroupmeteringconfiguration_propertyuuid_validate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PropertyGroupMeteringConfigurationApi->post_propertygroupmeteringconfiguration_propertyuuid_validate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyuuid** | **str**| UUID of the property group | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PropertyGroupMeteringConfigurationDTOApiResponseDTO**](PropertyGroupMeteringConfigurationDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Property group metering configuration validated successfully |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |
**404** | Property group metering configuration not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

