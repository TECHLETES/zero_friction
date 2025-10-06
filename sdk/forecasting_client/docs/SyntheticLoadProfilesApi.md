# forecasting_client.SyntheticLoadProfilesApi

All URIs are relative to *https://api.zerofriction.co/api/fct*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_synthetic_load_profile**](SyntheticLoadProfilesApi.md#get_synthetic_load_profile) | **GET** /SyntheticLoadProfiles/{syntheticloadprofileid} | Retrieves a specific synthetic load profile by its identifier
[**get_syntheticloadprofiles**](SyntheticLoadProfilesApi.md#get_syntheticloadprofiles) | **GET** /SyntheticLoadProfiles | Retrieves all synthetic load profiles


# **get_synthetic_load_profile**
> SyntheticLoadProfileDTOApiResponseDTO get_synthetic_load_profile(syntheticloadprofileid, zf_tuuid, zf_ouuid, show_deleted=show_deleted)

Retrieves a specific synthetic load profile by its identifier

Retrieves a specific synthetic load profile by its identifier

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.synthetic_load_profile_dto_api_response_dto import SyntheticLoadProfileDTOApiResponseDTO
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
    api_instance = forecasting_client.SyntheticLoadProfilesApi(api_client)
    syntheticloadprofileid = 'syntheticloadprofileid_example' # str | The unique identifier of the synthetic load profile
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    show_deleted = True # bool | When true, includes deleted synthetic load profiles in the results. (optional)

    try:
        # Retrieves a specific synthetic load profile by its identifier
        api_response = api_instance.get_synthetic_load_profile(syntheticloadprofileid, zf_tuuid, zf_ouuid, show_deleted=show_deleted)
        print("The response of SyntheticLoadProfilesApi->get_synthetic_load_profile:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SyntheticLoadProfilesApi->get_synthetic_load_profile: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **syntheticloadprofileid** | **str**| The unique identifier of the synthetic load profile | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **show_deleted** | **bool**| When true, includes deleted synthetic load profiles in the results. | [optional] 

### Return type

[**SyntheticLoadProfileDTOApiResponseDTO**](SyntheticLoadProfileDTOApiResponseDTO.md)

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

# **get_syntheticloadprofiles**
> SyntheticLoadProfileDTOPagedResponseModelDTOApiResponseDTO get_syntheticloadprofiles(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)

Retrieves all synthetic load profiles

Retrieves all synthetic load profiles

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.synthetic_load_profile_dto_paged_response_model_dto_api_response_dto import SyntheticLoadProfileDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = forecasting_client.SyntheticLoadProfilesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    show_deleted = True # bool | When true, includes deleted synthetic load profiles in the results. (optional)
    flex_search = 'flex_search_example' # str | Search term to filter accounts by various fields. (optional)
    order_by = 'order_by_example' # str | Sorting expression for the results. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves all synthetic load profiles
        api_response = api_instance.get_syntheticloadprofiles(zf_tuuid, zf_ouuid, show_deleted=show_deleted, flex_search=flex_search, order_by=order_by, continuation_token=continuation_token)
        print("The response of SyntheticLoadProfilesApi->get_syntheticloadprofiles:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SyntheticLoadProfilesApi->get_syntheticloadprofiles: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **show_deleted** | **bool**| When true, includes deleted synthetic load profiles in the results. | [optional] 
 **flex_search** | **str**| Search term to filter accounts by various fields. | [optional] 
 **order_by** | **str**| Sorting expression for the results. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**SyntheticLoadProfileDTOPagedResponseModelDTOApiResponseDTO**](SyntheticLoadProfileDTOPagedResponseModelDTOApiResponseDTO.md)

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

