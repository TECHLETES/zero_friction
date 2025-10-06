# metering_client.MutingRulesApi

All URIs are relative to *https://api.zerofriction.co/api/me*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_muting_rule_by_aggregate_details**](MutingRulesApi.md#cancel_muting_rule_by_aggregate_details) | **PUT** /MutingRules/cancelAggregate | Cancels a group of muting rules based on aggregate details
[**cancel_muting_rule_by_details**](MutingRulesApi.md#cancel_muting_rule_by_details) | **PUT** /MutingRules/cancel | Cancels a muting rule based on provided details
[**cancel_muting_rule_by_id**](MutingRulesApi.md#cancel_muting_rule_by_id) | **PUT** /MutingRules/cancel/{mutingRuleId} | Cancels a muting rule by its ID
[**create_muting_rule**](MutingRulesApi.md#create_muting_rule) | **POST** /MutingRules | Creates multiple muting rules in bulk
[**get_all_muting_rules**](MutingRulesApi.md#get_all_muting_rules) | **GET** /MutingRules/getall | Retrieves all muting rules with optional filtering
[**get_count**](MutingRulesApi.md#get_count) | **GET** /MutingRules/GetCount | Gets the count of muting rules matching the specified criteria
[**get_meters**](MutingRulesApi.md#get_meters) | **GET** /MutingRules/getmeters | Retrieves meters for which a muting rule with the specified parameters applies
[**get_muting_rule**](MutingRulesApi.md#get_muting_rule) | **GET** /MutingRules/{mutingRuleId} | Retrieves a specific muting rule by its ID
[**get_muting_rules_by_meter**](MutingRulesApi.md#get_muting_rules_by_meter) | **GET** /MutingRules/getall/{meterId} | Retrieves muting rules for a specific meter
[**get_overview_count**](MutingRulesApi.md#get_overview_count) | **GET** /MutingRules/getall/{meterId}/overviewCount | Gets an overview count of muting rules for a specific meter
[**get_related_muting_rules**](MutingRulesApi.md#get_related_muting_rules) | **GET** /MutingRules/getallrelated | Retrieves muting rules related to specific criteria


# **cancel_muting_rule_by_aggregate_details**
> BooleanApiResponseDTO cancel_muting_rule_by_aggregate_details(zf_tuuid, zf_ouuid, cancel_muting_rule_aggregate_request=cancel_muting_rule_aggregate_request)

Cancels a group of muting rules based on aggregate details

Cancels a group of muting rules based on aggregate details

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from metering_client.models.cancel_muting_rule_aggregate_request import CancelMutingRuleAggregateRequest
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
    api_instance = metering_client.MutingRulesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    cancel_muting_rule_aggregate_request = {"errorType":{},"message":"string","timePeriod":{},"muteFromWithNumericValue":0,"muteUntilWithNumericValue":0,"userId":"string"} # CancelMutingRuleAggregateRequest | Aggregate details of the muting rules to cancel (optional)

    try:
        # Cancels a group of muting rules based on aggregate details
        api_response = api_instance.cancel_muting_rule_by_aggregate_details(zf_tuuid, zf_ouuid, cancel_muting_rule_aggregate_request=cancel_muting_rule_aggregate_request)
        print("The response of MutingRulesApi->cancel_muting_rule_by_aggregate_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MutingRulesApi->cancel_muting_rule_by_aggregate_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **cancel_muting_rule_aggregate_request** | [**CancelMutingRuleAggregateRequest**](CancelMutingRuleAggregateRequest.md)| Aggregate details of the muting rules to cancel | [optional] 

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
**404** | No matching muting rules found |  -  |
**200** | Muting rules canceled successfully |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancel_muting_rule_by_details**
> BooleanApiResponseDTO cancel_muting_rule_by_details(zf_tuuid, zf_ouuid, cancel_muting_rule_request=cancel_muting_rule_request)

Cancels a muting rule based on provided details

Cancels a muting rule based on provided details

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from metering_client.models.cancel_muting_rule_request import CancelMutingRuleRequest
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
    api_instance = metering_client.MutingRulesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    cancel_muting_rule_request = {"errorType":{},"meterIds":["string"]} # CancelMutingRuleRequest | Details of the muting rule to cancel (optional)

    try:
        # Cancels a muting rule based on provided details
        api_response = api_instance.cancel_muting_rule_by_details(zf_tuuid, zf_ouuid, cancel_muting_rule_request=cancel_muting_rule_request)
        print("The response of MutingRulesApi->cancel_muting_rule_by_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MutingRulesApi->cancel_muting_rule_by_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **cancel_muting_rule_request** | [**CancelMutingRuleRequest**](CancelMutingRuleRequest.md)| Details of the muting rule to cancel | [optional] 

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
**404** | Muting rule not found |  -  |
**200** | Muting rule canceled successfully |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancel_muting_rule_by_id**
> BooleanApiResponseDTO cancel_muting_rule_by_id(muting_rule_id, zf_tuuid, zf_ouuid)

Cancels a muting rule by its ID

Cancels a muting rule by its ID

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.boolean_api_response_dto import BooleanApiResponseDTO
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
    api_instance = metering_client.MutingRulesApi(api_client)
    muting_rule_id = 'muting_rule_id_example' # str | ID of the muting rule to cancel
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Cancels a muting rule by its ID
        api_response = api_instance.cancel_muting_rule_by_id(muting_rule_id, zf_tuuid, zf_ouuid)
        print("The response of MutingRulesApi->cancel_muting_rule_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MutingRulesApi->cancel_muting_rule_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **muting_rule_id** | **str**| ID of the muting rule to cancel | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

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
**404** | Muting rule not found |  -  |
**200** | Muting rule canceled successfully |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_muting_rule**
> ApiResponseDTO create_muting_rule(zf_tuuid, zf_ouuid, bulk_create_muting_rule_request=bulk_create_muting_rule_request)

Creates multiple muting rules in bulk

Creates multiple muting rules in bulk

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto import ApiResponseDTO
from metering_client.models.bulk_create_muting_rule_request import BulkCreateMutingRuleRequest
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
    api_instance = metering_client.MutingRulesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_create_muting_rule_request = {"errorType":{},"message":"string","timePeriod":{},"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"servicelocationIds":["string"],"propertyGroupIds":["string"],"meterType":{},"receivedMeteringDataStart":"string","receivedMeteringDataEnd":"string","nextExpectedReadingDateStart":"string","nextExpectedReadingDateEnd":"string","parentSerialNumber":"string","filterByReadingFrequency":true,"readingFrequency":{},"customerId":"string","meterTypeGroup":"string","meterSerialNumber":"string"},"quickFilter":"string"} # BulkCreateMutingRuleRequest | The bulk creation request containing muting rule details (optional)

    try:
        # Creates multiple muting rules in bulk
        api_response = api_instance.create_muting_rule(zf_tuuid, zf_ouuid, bulk_create_muting_rule_request=bulk_create_muting_rule_request)
        print("The response of MutingRulesApi->create_muting_rule:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MutingRulesApi->create_muting_rule: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_create_muting_rule_request** | [**BulkCreateMutingRuleRequest**](BulkCreateMutingRuleRequest.md)| The bulk creation request containing muting rule details | [optional] 

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
**200** | Muting rules created successfully |  -  |
**400** | Invalid request data |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_muting_rules**
> MutingRuleAggregatorDTOPagedResponseModelDTOApiResponseDTO get_all_muting_rules(zf_tuuid, zf_ouuid, include_active=include_active, include_expired=include_expired, meter_id=meter_id, continuation_token=continuation_token)

Retrieves all muting rules with optional filtering

Retrieves all muting rules with optional filtering

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.muting_rule_aggregator_dto_paged_response_model_dto_api_response_dto import MutingRuleAggregatorDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = metering_client.MutingRulesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    include_active = True # bool | Whether to include active muting rules (optional)
    include_expired = True # bool | Whether to include expired muting rules (optional)
    meter_id = 'meter_id_example' # str | Optional meter ID to filter by (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination (optional)

    try:
        # Retrieves all muting rules with optional filtering
        api_response = api_instance.get_all_muting_rules(zf_tuuid, zf_ouuid, include_active=include_active, include_expired=include_expired, meter_id=meter_id, continuation_token=continuation_token)
        print("The response of MutingRulesApi->get_all_muting_rules:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MutingRulesApi->get_all_muting_rules: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **include_active** | **bool**| Whether to include active muting rules | [optional] 
 **include_expired** | **bool**| Whether to include expired muting rules | [optional] 
 **meter_id** | **str**| Optional meter ID to filter by | [optional] 
 **continuation_token** | **str**| Token for pagination | [optional] 

### Return type

[**MutingRuleAggregatorDTOPagedResponseModelDTOApiResponseDTO**](MutingRuleAggregatorDTOPagedResponseModelDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the list of muting rules |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_count**
> Int32ApiResponseDTO get_count(zf_tuuid, zf_ouuid, include_active=include_active, include_expired=include_expired, meter_id=meter_id)

Gets the count of muting rules matching the specified criteria

Gets the count of muting rules matching the specified criteria

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.int32_api_response_dto import Int32ApiResponseDTO
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
    api_instance = metering_client.MutingRulesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    include_active = True # bool | Whether to include active muting rules (optional)
    include_expired = True # bool | Whether to include expired muting rules (optional)
    meter_id = 'meter_id_example' # str | Optional meter ID to filter by (optional)

    try:
        # Gets the count of muting rules matching the specified criteria
        api_response = api_instance.get_count(zf_tuuid, zf_ouuid, include_active=include_active, include_expired=include_expired, meter_id=meter_id)
        print("The response of MutingRulesApi->get_count:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MutingRulesApi->get_count: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **include_active** | **bool**| Whether to include active muting rules | [optional] 
 **include_expired** | **bool**| Whether to include expired muting rules | [optional] 
 **meter_id** | **str**| Optional meter ID to filter by | [optional] 

### Return type

[**Int32ApiResponseDTO**](Int32ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the count of muting rules |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meters**
> StringListApiResponseDTO get_meters(zf_tuuid, zf_ouuid, error_type=error_type, mute_from_with_numeric_value=mute_from_with_numeric_value, mute_until_with_numeric_value=mute_until_with_numeric_value, message=message, time_period=time_period, user_id=user_id)

Retrieves meters for which a muting rule with the specified parameters applies

Retrieves meters for which a muting rule with the specified parameters applies

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.string_list_api_response_dto import StringListApiResponseDTO
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
    api_instance = metering_client.MutingRulesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    error_type = 'error_type_example' # str | Type of error to filter by (optional)
    mute_from_with_numeric_value = 56 # int | Format - int32. Starting numeric value for muting (optional)
    mute_until_with_numeric_value = 56 # int | Format - int32. Ending numeric value for muting (optional)
    message = 'message_example' # str | Message text to filter by (optional)
    time_period = 'time_period_example' # str | Time period for the muting rule (optional)
    user_id = 'user_id_example' # str | User ID associated with the muting rule (optional)

    try:
        # Retrieves meters for which a muting rule with the specified parameters applies
        api_response = api_instance.get_meters(zf_tuuid, zf_ouuid, error_type=error_type, mute_from_with_numeric_value=mute_from_with_numeric_value, mute_until_with_numeric_value=mute_until_with_numeric_value, message=message, time_period=time_period, user_id=user_id)
        print("The response of MutingRulesApi->get_meters:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MutingRulesApi->get_meters: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **error_type** | **str**| Type of error to filter by | [optional] 
 **mute_from_with_numeric_value** | **int**| Format - int32. Starting numeric value for muting | [optional] 
 **mute_until_with_numeric_value** | **int**| Format - int32. Ending numeric value for muting | [optional] 
 **message** | **str**| Message text to filter by | [optional] 
 **time_period** | **str**| Time period for the muting rule | [optional] 
 **user_id** | **str**| User ID associated with the muting rule | [optional] 

### Return type

[**StringListApiResponseDTO**](StringListApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the matching meter IDs |  -  |
**404** | No matching meters found |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_muting_rule**
> MutingRuleDTOApiResponseDTO get_muting_rule(muting_rule_id, zf_tuuid, zf_ouuid)

Retrieves a specific muting rule by its ID

Retrieves a specific muting rule by its ID

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.muting_rule_dto_api_response_dto import MutingRuleDTOApiResponseDTO
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
    api_instance = metering_client.MutingRulesApi(api_client)
    muting_rule_id = 'muting_rule_id_example' # str | The ID of the muting rule to retrieve
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves a specific muting rule by its ID
        api_response = api_instance.get_muting_rule(muting_rule_id, zf_tuuid, zf_ouuid)
        print("The response of MutingRulesApi->get_muting_rule:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MutingRulesApi->get_muting_rule: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **muting_rule_id** | **str**| The ID of the muting rule to retrieve | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**MutingRuleDTOApiResponseDTO**](MutingRuleDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the muting rule |  -  |
**404** | Muting rule not found |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_muting_rules_by_meter**
> MutingRuleDTOPagedResponseModelDTOApiResponseDTO get_muting_rules_by_meter(meter_id, zf_tuuid, zf_ouuid, include_active=include_active, include_expired=include_expired, name=name, id=id, limit=limit, continuation_token=continuation_token)

Retrieves muting rules for a specific meter

Retrieves muting rules for a specific meter

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.muting_rule_dto_paged_response_model_dto_api_response_dto import MutingRuleDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = metering_client.MutingRulesApi(api_client)
    meter_id = 'meter_id_example' # str | ID of the meter to get rules for
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    include_active = True # bool | Whether to include active muting rules (optional)
    include_expired = True # bool | Whether to include expired muting rules (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    limit = 56 # int | Format - int32. Maximum number of results to return (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination (optional)

    try:
        # Retrieves muting rules for a specific meter
        api_response = api_instance.get_muting_rules_by_meter(meter_id, zf_tuuid, zf_ouuid, include_active=include_active, include_expired=include_expired, name=name, id=id, limit=limit, continuation_token=continuation_token)
        print("The response of MutingRulesApi->get_muting_rules_by_meter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MutingRulesApi->get_muting_rules_by_meter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meter_id** | **str**| ID of the meter to get rules for | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **include_active** | **bool**| Whether to include active muting rules | [optional] 
 **include_expired** | **bool**| Whether to include expired muting rules | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **limit** | **int**| Format - int32. Maximum number of results to return | [optional] 
 **continuation_token** | **str**| Token for pagination | [optional] 

### Return type

[**MutingRuleDTOPagedResponseModelDTOApiResponseDTO**](MutingRuleDTOPagedResponseModelDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the list of muting rules |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_overview_count**
> MutingRuleOverviewCountDTOApiResponseDTO get_overview_count(meter_id, zf_tuuid, zf_ouuid)

Gets an overview count of muting rules for a specific meter

Gets an overview count of muting rules for a specific meter

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.muting_rule_overview_count_dto_api_response_dto import MutingRuleOverviewCountDTOApiResponseDTO
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
    api_instance = metering_client.MutingRulesApi(api_client)
    meter_id = 'meter_id_example' # str | ID of the meter to get the count for
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Gets an overview count of muting rules for a specific meter
        api_response = api_instance.get_overview_count(meter_id, zf_tuuid, zf_ouuid)
        print("The response of MutingRulesApi->get_overview_count:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MutingRulesApi->get_overview_count: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meter_id** | **str**| ID of the meter to get the count for | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**MutingRuleOverviewCountDTOApiResponseDTO**](MutingRuleOverviewCountDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the overview count |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_related_muting_rules**
> MutingRuleDTOListApiResponseDTO get_related_muting_rules(zf_tuuid, zf_ouuid, error_type=error_type, mute_from_with_numeric_value=mute_from_with_numeric_value, message=message, time_period=time_period, meter_ids=meter_ids)

Retrieves muting rules related to specific criteria

Retrieves muting rules related to specific criteria

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.muting_rule_dto_list_api_response_dto import MutingRuleDTOListApiResponseDTO
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
    api_instance = metering_client.MutingRulesApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    error_type = 'error_type_example' # str | Type of error to filter by (optional)
    mute_from_with_numeric_value = 56 # int | Format - int32. Starting numeric value for muting (optional)
    message = 'message_example' # str | Message text to filter by (optional)
    time_period = 'time_period_example' # str | Time period for the muting rule (optional)
    meter_ids = ['meter_ids_example'] # List[str] | List of meter IDs to filter by (optional)

    try:
        # Retrieves muting rules related to specific criteria
        api_response = api_instance.get_related_muting_rules(zf_tuuid, zf_ouuid, error_type=error_type, mute_from_with_numeric_value=mute_from_with_numeric_value, message=message, time_period=time_period, meter_ids=meter_ids)
        print("The response of MutingRulesApi->get_related_muting_rules:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MutingRulesApi->get_related_muting_rules: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **error_type** | **str**| Type of error to filter by | [optional] 
 **mute_from_with_numeric_value** | **int**| Format - int32. Starting numeric value for muting | [optional] 
 **message** | **str**| Message text to filter by | [optional] 
 **time_period** | **str**| Time period for the muting rule | [optional] 
 **meter_ids** | [**List[str]**](str.md)| List of meter IDs to filter by | [optional] 

### Return type

[**MutingRuleDTOListApiResponseDTO**](MutingRuleDTOListApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the matching muting rules |  -  |
**404** | No matching rules found |  -  |
**401** | Unauthorized access |  -  |
**403** | Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

