# masterdata_client.PrepaymentAccountsApi

All URIs are relative to *https://api.zerofriction.co/api/md*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_prepaymentaccounts**](PrepaymentAccountsApi.md#get_prepaymentaccounts) | **GET** /PrepaymentAccounts | Retrieve prepayment accounts based on the provided query parameters.
[**get_prepaymentaccounts_meter_meterid_contracts_distinct**](PrepaymentAccountsApi.md#get_prepaymentaccounts_meter_meterid_contracts_distinct) | **GET** /PrepaymentAccounts/meter/{meterId}/contracts/distinct | Retrieve distinct prepayment contracts, which are linked to the meter.
[**get_prepaymentaccounts_prepaymentaccountid**](PrepaymentAccountsApi.md#get_prepaymentaccounts_prepaymentaccountid) | **GET** /PrepaymentAccounts/{prepaymentAccountId} | Retrieve a prepayment account by its ID.
[**post_prepaymentaccounts_installedprepaymentmeters**](PrepaymentAccountsApi.md#post_prepaymentaccounts_installedprepaymentmeters) | **POST** /PrepaymentAccounts/installedprepaymentmeters | Return locations with lists of prepayment meters installed on them, and utility types that are supported for prepayment on given location for each of these prepayment meters.
[**post_prepaymentaccounts_meter_meterid_externalreferences**](PrepaymentAccountsApi.md#post_prepaymentaccounts_meter_meterid_externalreferences) | **POST** /PrepaymentAccounts/meter/{meterId}/externalReferences | Update external references on prepayment accounts related to given meter.


# **get_prepaymentaccounts**
> PrepaymentAccountDTOPagedResponseModelDTOApiResponseDTO get_prepaymentaccounts(zf_tuuid, zf_ouuid, meter_id=meter_id, customer_id=customer_id, contract_id=contract_id, active_date_time=active_date_time, only_with_external_reference=only_with_external_reference, order_by=order_by, continuation_token=continuation_token)

Retrieve prepayment accounts based on the provided query parameters.

Retrieve prepayment accounts based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.prepayment_account_dto_paged_response_model_dto_api_response_dto import PrepaymentAccountDTOPagedResponseModelDTOApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.PrepaymentAccountsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    meter_id = 'meter_id_example' # str | Allows to filter on an ID of a meter. (optional)
    customer_id = 'customer_id_example' # str | Allows to filter on an ID of a customer. (optional)
    contract_id = 'contract_id_example' # str | Allows to filter on an ID of a contract. (optional)
    active_date_time = '2013-10-20T19:20:30+01:00' # datetime | Format - date-time (as date-time in RFC3339). Allows to filter on a date in which prepayment account is active. (optional)
    only_with_external_reference = True # bool | Allows to filter only prepayment account with external references set. (optional)
    order_by = 'order_by_example' # str | Allows to order the prepayment accounts. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieve prepayment accounts based on the provided query parameters.
        api_response = api_instance.get_prepaymentaccounts(zf_tuuid, zf_ouuid, meter_id=meter_id, customer_id=customer_id, contract_id=contract_id, active_date_time=active_date_time, only_with_external_reference=only_with_external_reference, order_by=order_by, continuation_token=continuation_token)
        print("The response of PrepaymentAccountsApi->get_prepaymentaccounts:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PrepaymentAccountsApi->get_prepaymentaccounts: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **meter_id** | **str**| Allows to filter on an ID of a meter. | [optional] 
 **customer_id** | **str**| Allows to filter on an ID of a customer. | [optional] 
 **contract_id** | **str**| Allows to filter on an ID of a contract. | [optional] 
 **active_date_time** | **datetime**| Format - date-time (as date-time in RFC3339). Allows to filter on a date in which prepayment account is active. | [optional] 
 **only_with_external_reference** | **bool**| Allows to filter only prepayment account with external references set. | [optional] 
 **order_by** | **str**| Allows to order the prepayment accounts. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**PrepaymentAccountDTOPagedResponseModelDTOApiResponseDTO**](PrepaymentAccountDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_prepaymentaccounts_meter_meterid_contracts_distinct**
> ContractDTOListApiResponseDTO get_prepaymentaccounts_meter_meterid_contracts_distinct(meter_id, zf_tuuid, zf_ouuid)

Retrieve distinct prepayment contracts, which are linked to the meter.

Retrieve distinct prepayment contracts, which are linked to the meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.contract_dto_list_api_response_dto import ContractDTOListApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.PrepaymentAccountsApi(api_client)
    meter_id = 'meter_id_example' # str | The ID of the meter.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieve distinct prepayment contracts, which are linked to the meter.
        api_response = api_instance.get_prepaymentaccounts_meter_meterid_contracts_distinct(meter_id, zf_tuuid, zf_ouuid)
        print("The response of PrepaymentAccountsApi->get_prepaymentaccounts_meter_meterid_contracts_distinct:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PrepaymentAccountsApi->get_prepaymentaccounts_meter_meterid_contracts_distinct: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meter_id** | **str**| The ID of the meter. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**ContractDTOListApiResponseDTO**](ContractDTOListApiResponseDTO.md)

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

# **get_prepaymentaccounts_prepaymentaccountid**
> PrepaymentAccountDTOApiResponseDTO get_prepaymentaccounts_prepaymentaccountid(prepayment_account_id, zf_tuuid, zf_ouuid)

Retrieve a prepayment account by its ID.

Retrieve a prepayment account by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.prepayment_account_dto_api_response_dto import PrepaymentAccountDTOApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.PrepaymentAccountsApi(api_client)
    prepayment_account_id = 'prepayment_account_id_example' # str | The ID of the prepayment account.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieve a prepayment account by its ID.
        api_response = api_instance.get_prepaymentaccounts_prepaymentaccountid(prepayment_account_id, zf_tuuid, zf_ouuid)
        print("The response of PrepaymentAccountsApi->get_prepaymentaccounts_prepaymentaccountid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PrepaymentAccountsApi->get_prepaymentaccounts_prepaymentaccountid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **prepayment_account_id** | **str**| The ID of the prepayment account. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**PrepaymentAccountDTOApiResponseDTO**](PrepaymentAccountDTOApiResponseDTO.md)

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

# **post_prepaymentaccounts_installedprepaymentmeters**
> PrepaymentMetersInstalledOnServiceLocationDTOListApiResponseDTO post_prepaymentaccounts_installedprepaymentmeters(zf_tuuid, zf_ouuid, get_prepayment_meters_installed_on_service_locations_request=get_prepayment_meters_installed_on_service_locations_request)

Return locations with lists of prepayment meters installed on them, and utility types that are supported for prepayment on given location for each of these prepayment meters.

Return locations with lists of prepayment meters installed on them, and utility types that are supported for prepayment on given location for each of these prepayment meters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.get_prepayment_meters_installed_on_service_locations_request import GetPrepaymentMetersInstalledOnServiceLocationsRequest
from masterdata_client.models.prepayment_meters_installed_on_service_location_dto_list_api_response_dto import PrepaymentMetersInstalledOnServiceLocationDTOListApiResponseDTO
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.PrepaymentAccountsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    get_prepayment_meters_installed_on_service_locations_request = {"serviceLocationIds":["string"],"supplyPeriod":{"startDateTime":"string","endDateTime":"string"}} # GetPrepaymentMetersInstalledOnServiceLocationsRequest | The request containing the IDs of locations, for which the installed prepayment meters (overlapping given period) are supposed to be retrieved. (optional)

    try:
        # Return locations with lists of prepayment meters installed on them, and utility types that are supported for prepayment on given location for each of these prepayment meters.
        api_response = api_instance.post_prepaymentaccounts_installedprepaymentmeters(zf_tuuid, zf_ouuid, get_prepayment_meters_installed_on_service_locations_request=get_prepayment_meters_installed_on_service_locations_request)
        print("The response of PrepaymentAccountsApi->post_prepaymentaccounts_installedprepaymentmeters:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PrepaymentAccountsApi->post_prepaymentaccounts_installedprepaymentmeters: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **get_prepayment_meters_installed_on_service_locations_request** | [**GetPrepaymentMetersInstalledOnServiceLocationsRequest**](GetPrepaymentMetersInstalledOnServiceLocationsRequest.md)| The request containing the IDs of locations, for which the installed prepayment meters (overlapping given period) are supposed to be retrieved. | [optional] 

### Return type

[**PrepaymentMetersInstalledOnServiceLocationDTOListApiResponseDTO**](PrepaymentMetersInstalledOnServiceLocationDTOListApiResponseDTO.md)

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

# **post_prepaymentaccounts_meter_meterid_externalreferences**
> PrepaymentAccountDTOListApiResponseDTO post_prepaymentaccounts_meter_meterid_externalreferences(meter_id, zf_tuuid, zf_ouuid, update_prepayment_accounts_external_references_request=update_prepayment_accounts_external_references_request)

Update external references on prepayment accounts related to given meter.

Update external references on prepayment accounts related to given meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.prepayment_account_dto_list_api_response_dto import PrepaymentAccountDTOListApiResponseDTO
from masterdata_client.models.update_prepayment_accounts_external_references_request import UpdatePrepaymentAccountsExternalReferencesRequest
from masterdata_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/md
# See configuration.py for a list of all supported configuration parameters.
configuration = masterdata_client.Configuration(
    host = "https://api.zerofriction.co/api/md"
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
with masterdata_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = masterdata_client.PrepaymentAccountsApi(api_client)
    meter_id = 'meter_id_example' # str | The ID of the meter, for which the prepayment accounts'external references are supposed to be updated.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_prepayment_accounts_external_references_request = {"externalReferencesForPrepaymentAccounts":{}} # UpdatePrepaymentAccountsExternalReferencesRequest | The request containing external references for prepayment accounts. (optional)

    try:
        # Update external references on prepayment accounts related to given meter.
        api_response = api_instance.post_prepaymentaccounts_meter_meterid_externalreferences(meter_id, zf_tuuid, zf_ouuid, update_prepayment_accounts_external_references_request=update_prepayment_accounts_external_references_request)
        print("The response of PrepaymentAccountsApi->post_prepaymentaccounts_meter_meterid_externalreferences:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PrepaymentAccountsApi->post_prepaymentaccounts_meter_meterid_externalreferences: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meter_id** | **str**| The ID of the meter, for which the prepayment accounts&#39;external references are supposed to be updated. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_prepayment_accounts_external_references_request** | [**UpdatePrepaymentAccountsExternalReferencesRequest**](UpdatePrepaymentAccountsExternalReferencesRequest.md)| The request containing external references for prepayment accounts. | [optional] 

### Return type

[**PrepaymentAccountDTOListApiResponseDTO**](PrepaymentAccountDTOListApiResponseDTO.md)

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

