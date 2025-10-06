# forecasting_client.EstimationsApi

All URIs are relative to *https://api.zerofriction.co/api/fct*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_estimations_servicelocations_sluuid_consumptions**](EstimationsApi.md#get_estimations_servicelocations_sluuid_consumptions) | **GET** /Estimations/servicelocations/{sluuid}/consumptions | Retrieves the estimated consumptions for the specified service location


# **get_estimations_servicelocations_sluuid_consumptions**
> EstimatedConsumptionDTOListApiResponseDTO get_estimations_servicelocations_sluuid_consumptions(sluuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time, utility_type=utility_type, unit_of_measure=unit_of_measure, group_by_period=group_by_period)

Retrieves the estimated consumptions for the specified service location

Retrieves the estimated consumptions for the specified service location

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import forecasting_client
from forecasting_client.models.estimated_consumption_dto_list_api_response_dto import EstimatedConsumptionDTOListApiResponseDTO
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
    api_instance = forecasting_client.EstimationsApi(api_client)
    sluuid = 'sluuid_example' # str | The unique identifier of the service location
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). Start datetime of the estimation (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). End datetime of the estimation (optional)
    utility_type = 'utility_type_example' # str | Utility type for which we are retrieving the estimation (optional)
    unit_of_measure = 'unit_of_measure_example' # str | Unit of measure for which are retrieving the estimation (optional)
    group_by_period = 'group_by_period_example' # str | Period on which the estimated consumptions will be grouped (optional)

    try:
        # Retrieves the estimated consumptions for the specified service location
        api_response = api_instance.get_estimations_servicelocations_sluuid_consumptions(sluuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time, utility_type=utility_type, unit_of_measure=unit_of_measure, group_by_period=group_by_period)
        print("The response of EstimationsApi->get_estimations_servicelocations_sluuid_consumptions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EstimationsApi->get_estimations_servicelocations_sluuid_consumptions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sluuid** | **str**| The unique identifier of the service location | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **start_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). Start datetime of the estimation | [optional] 
 **end_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). End datetime of the estimation | [optional] 
 **utility_type** | **str**| Utility type for which we are retrieving the estimation | [optional] 
 **unit_of_measure** | **str**| Unit of measure for which are retrieving the estimation | [optional] 
 **group_by_period** | **str**| Period on which the estimated consumptions will be grouped | [optional] 

### Return type

[**EstimatedConsumptionDTOListApiResponseDTO**](EstimatedConsumptionDTOListApiResponseDTO.md)

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

