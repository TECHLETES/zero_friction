# configuration_client.RegionalRegulationsApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_regional_regulation_parameters_for_bel**](RegionalRegulationsApi.md#get_regional_regulation_parameters_for_bel) | **GET** /RegionalRegulations/bel | Retrieves the current regional regulations parameters specific to Belgium.
[**get_regional_regulation_parameters_for_gbr**](RegionalRegulationsApi.md#get_regional_regulation_parameters_for_gbr) | **GET** /RegionalRegulations/gbr | Retrieves the current regional regulations parameters specific to Great Britain.
[**update_regional_regulation_parameters_for_bel**](RegionalRegulationsApi.md#update_regional_regulation_parameters_for_bel) | **POST** /RegionalRegulations/bel | Updates regional regulations parameters specific to Belgium.
[**update_regional_regulation_parameters_for_gbr**](RegionalRegulationsApi.md#update_regional_regulation_parameters_for_gbr) | **POST** /RegionalRegulations/gbr | Updates regional regulations parameters specific to Geat Britain.


# **get_regional_regulation_parameters_for_bel**
> BELRegionalRegulationsConfigurationDTOApiResponseDTO get_regional_regulation_parameters_for_bel(zf_tuuid, zf_ouuid)

Retrieves the current regional regulations parameters specific to Belgium.

Retrieves the current regional regulations parameters specific to Belgium.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.bel_regional_regulations_configuration_dto_api_response_dto import BELRegionalRegulationsConfigurationDTOApiResponseDTO
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
    api_instance = configuration_client.RegionalRegulationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves the current regional regulations parameters specific to Belgium.
        api_response = api_instance.get_regional_regulation_parameters_for_bel(zf_tuuid, zf_ouuid)
        print("The response of RegionalRegulationsApi->get_regional_regulation_parameters_for_bel:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RegionalRegulationsApi->get_regional_regulation_parameters_for_bel: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**BELRegionalRegulationsConfigurationDTOApiResponseDTO**](BELRegionalRegulationsConfigurationDTOApiResponseDTO.md)

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

# **get_regional_regulation_parameters_for_gbr**
> GBRRegionalRegulationsConfigurationDTOApiResponseDTO get_regional_regulation_parameters_for_gbr(zf_tuuid, zf_ouuid)

Retrieves the current regional regulations parameters specific to Great Britain.

Retrieves the current regional regulations parameters specific to Great Britain.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.gbr_regional_regulations_configuration_dto_api_response_dto import GBRRegionalRegulationsConfigurationDTOApiResponseDTO
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
    api_instance = configuration_client.RegionalRegulationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves the current regional regulations parameters specific to Great Britain.
        api_response = api_instance.get_regional_regulation_parameters_for_gbr(zf_tuuid, zf_ouuid)
        print("The response of RegionalRegulationsApi->get_regional_regulation_parameters_for_gbr:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RegionalRegulationsApi->get_regional_regulation_parameters_for_gbr: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**GBRRegionalRegulationsConfigurationDTOApiResponseDTO**](GBRRegionalRegulationsConfigurationDTOApiResponseDTO.md)

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

# **update_regional_regulation_parameters_for_bel**
> BELRegionalRegulationsConfigurationDTOApiResponseDTO update_regional_regulation_parameters_for_bel(zf_tuuid, zf_ouuid, update_regional_regulations_parameters_for_bel_request=update_regional_regulations_parameters_for_bel_request)

Updates regional regulations parameters specific to Belgium.

Updates regional regulations parameters specific to Belgium.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.bel_regional_regulations_configuration_dto_api_response_dto import BELRegionalRegulationsConfigurationDTOApiResponseDTO
from configuration_client.models.update_regional_regulations_parameters_for_bel_request import UpdateRegionalRegulationsParametersForBELRequest
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
    api_instance = configuration_client.RegionalRegulationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_regional_regulations_parameters_for_bel_request = {"socialTariffParameters":{"kboNumber":"string","glnId":"string","supplierAddress":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":{},"localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"contactEmailAddress":"string","contactTelephoneNumber":"string","contactFaxNumber":"string","contactLastName":"string","contactFirstName":"string","socialTariffCustomEntityPropertyId":"string","sharePropsWithGovernmentCustomEntityPropertyId":"string","bimCustomEntityPropertyId":"string"}} # UpdateRegionalRegulationsParametersForBELRequest | The updated Belgium regional regulations parameters. (optional)

    try:
        # Updates regional regulations parameters specific to Belgium.
        api_response = api_instance.update_regional_regulation_parameters_for_bel(zf_tuuid, zf_ouuid, update_regional_regulations_parameters_for_bel_request=update_regional_regulations_parameters_for_bel_request)
        print("The response of RegionalRegulationsApi->update_regional_regulation_parameters_for_bel:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RegionalRegulationsApi->update_regional_regulation_parameters_for_bel: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_regional_regulations_parameters_for_bel_request** | [**UpdateRegionalRegulationsParametersForBELRequest**](UpdateRegionalRegulationsParametersForBELRequest.md)| The updated Belgium regional regulations parameters. | [optional] 

### Return type

[**BELRegionalRegulationsConfigurationDTOApiResponseDTO**](BELRegionalRegulationsConfigurationDTOApiResponseDTO.md)

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

# **update_regional_regulation_parameters_for_gbr**
> GBRRegionalRegulationsConfigurationDTOApiResponseDTO update_regional_regulation_parameters_for_gbr(zf_tuuid, zf_ouuid, update_regional_regulations_parameters_for_gbr_request=update_regional_regulations_parameters_for_gbr_request)

Updates regional regulations parameters specific to Geat Britain.

Updates regional regulations parameters specific to Geat Britain.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.gbr_regional_regulations_configuration_dto_api_response_dto import GBRRegionalRegulationsConfigurationDTOApiResponseDTO
from configuration_client.models.update_regional_regulations_parameters_for_gbr_request import UpdateRegionalRegulationsParametersForGBRRequest
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
    api_instance = configuration_client.RegionalRegulationsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_regional_regulations_parameters_for_gbr_request = {"priorityRegisterParameters":{"psrCodesCustomEntityPropertyTypeId":"string","vrCodesCustomEntityPropertyTypeId":"string"}} # UpdateRegionalRegulationsParametersForGBRRequest | The updated Great Britains regional regulations parameters. (optional)

    try:
        # Updates regional regulations parameters specific to Geat Britain.
        api_response = api_instance.update_regional_regulation_parameters_for_gbr(zf_tuuid, zf_ouuid, update_regional_regulations_parameters_for_gbr_request=update_regional_regulations_parameters_for_gbr_request)
        print("The response of RegionalRegulationsApi->update_regional_regulation_parameters_for_gbr:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RegionalRegulationsApi->update_regional_regulation_parameters_for_gbr: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_regional_regulations_parameters_for_gbr_request** | [**UpdateRegionalRegulationsParametersForGBRRequest**](UpdateRegionalRegulationsParametersForGBRRequest.md)| The updated Great Britains regional regulations parameters. | [optional] 

### Return type

[**GBRRegionalRegulationsConfigurationDTOApiResponseDTO**](GBRRegionalRegulationsConfigurationDTOApiResponseDTO.md)

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

