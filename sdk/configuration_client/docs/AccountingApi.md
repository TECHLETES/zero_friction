# configuration_client.AccountingApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_accounting_generalledgers**](AccountingApi.md#get_accounting_generalledgers) | **GET** /Accounting/generalledgers | Retrieves a paged list of general ledger codes, with optional filtering and sorting.
[**get_accounting_generalledgers_mapping**](AccountingApi.md#get_accounting_generalledgers_mapping) | **GET** /Accounting/generalledgers/mapping | Retrieves a paged list of items that are mapped or need to be mapped to a general ledger code. A category needs to be provided.
[**get_accounting_generalledgers_unmapped_overviewcount**](AccountingApi.md#get_accounting_generalledgers_unmapped_overviewcount) | **GET** /Accounting/generalledgers/unmapped/overviewcount | Retrieves an overview count of all general ledger categories and the amount of items that still need mapping
[**post_accounting_costcenters**](AccountingApi.md#post_accounting_costcenters) | **POST** /Accounting/costcenters | Creates or updates cost centers.  If a cost center already exists in the system, it will be updated instead of creating a new one.                The system identifies existing codes by matching the SourceEntityId in the Metadata property.
[**post_accounting_costunits**](AccountingApi.md#post_accounting_costunits) | **POST** /Accounting/costunits | Creates or updates cost units.  If a cost unit already exists in the system, it will be updated instead of creating a new one.                The system identifies existing codes by matching the SourceEntityId in the Metadata property.
[**post_accounting_financialperiods**](AccountingApi.md#post_accounting_financialperiods) | **POST** /Accounting/financialperiods | Creates or updates financial periods.  If a financial period already exists in the system, it will be updated instead of creating a new one.                The system identifies existing codes by matching the SourceEntityId in the Metadata property.
[**post_accounting_generalledgers**](AccountingApi.md#post_accounting_generalledgers) | **POST** /Accounting/generalledgers | Creates or updates general ledger codes.  If a general ledger code already exists in the system, it will be updated instead of creating a new one.                The system identifies existing codes by matching the SourceEntityId in the Metadata property.


# **get_accounting_generalledgers**
> GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO get_accounting_generalledgers(zf_tuuid, zf_ouuid, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, continuation_token=continuation_token)

Retrieves a paged list of general ledger codes, with optional filtering and sorting.

Retrieves a paged list of general ledger codes, with optional filtering and sorting.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.general_ledger_code_dto_paged_response_model_dto_api_response_dto import GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = configuration_client.AccountingApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    order_by = 'order_by_example' # str | Sorting expression for the results. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Retrieves a paged list of general ledger codes, with optional filtering and sorting.
        api_response = api_instance.get_accounting_generalledgers(zf_tuuid, zf_ouuid, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, order_by=order_by, continuation_token=continuation_token)
        print("The response of AccountingApi->get_accounting_generalledgers:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccountingApi->get_accounting_generalledgers: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **order_by** | **str**| Sorting expression for the results. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 

### Return type

[**GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO**](GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **get_accounting_generalledgers_mapping**
> GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO get_accounting_generalledgers_mapping(zf_tuuid, zf_ouuid, only_unlinked=only_unlinked, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id)

Retrieves a paged list of items that are mapped or need to be mapped to a general ledger code. A category needs to be provided.

Retrieves a paged list of items that are mapped or need to be mapped to a general ledger code. A category needs to be provided.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.general_ledger_code_dto_paged_response_model_dto_api_response_dto import GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = configuration_client.AccountingApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    only_unlinked = True # bool |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)

    try:
        # Retrieves a paged list of items that are mapped or need to be mapped to a general ledger code. A category needs to be provided.
        api_response = api_instance.get_accounting_generalledgers_mapping(zf_tuuid, zf_ouuid, only_unlinked=only_unlinked, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, name=name, id=id)
        print("The response of AccountingApi->get_accounting_generalledgers_mapping:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccountingApi->get_accounting_generalledgers_mapping: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **only_unlinked** | **bool**|  | [optional] 
 **flex_search** | **str**|  | [optional] 
 **include_only_ids** | [**List[str]**](str.md)|  | [optional] 
 **exclude_ids** | [**List[str]**](str.md)|  | [optional] 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 

### Return type

[**GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO**](GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_accounting_generalledgers_unmapped_overviewcount**
> GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO get_accounting_generalledgers_unmapped_overviewcount(zf_tuuid, zf_ouuid)

Retrieves an overview count of all general ledger categories and the amount of items that still need mapping

Retrieves an overview count of all general ledger categories and the amount of items that still need mapping

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.general_ledger_code_dto_paged_response_model_dto_api_response_dto import GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO
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
    api_instance = configuration_client.AccountingApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieves an overview count of all general ledger categories and the amount of items that still need mapping
        api_response = api_instance.get_accounting_generalledgers_unmapped_overviewcount(zf_tuuid, zf_ouuid)
        print("The response of AccountingApi->get_accounting_generalledgers_unmapped_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccountingApi->get_accounting_generalledgers_unmapped_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO**](GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **post_accounting_costcenters**
> CostCenterDTOApiResponseDTO post_accounting_costcenters(zf_tuuid, zf_ouuid, create_cost_centers_request=create_cost_centers_request)

Creates or updates cost centers.  If a cost center already exists in the system, it will be updated instead of creating a new one.                The system identifies existing codes by matching the SourceEntityId in the Metadata property.

Creates or updates cost centers.
If a cost center already exists in the system, it will be updated instead of creating a new one.
            
The system identifies existing codes by matching the SourceEntityId in the Metadata property.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.cost_center_dto_api_response_dto import CostCenterDTOApiResponseDTO
from configuration_client.models.create_cost_centers_request import CreateCostCentersRequest
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
    api_instance = configuration_client.AccountingApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_cost_centers_request = {"costCenters":[{"code":"string","description":"string","metadata":{"source":"string","sourceEntityId":"string"}}]} # CreateCostCentersRequest | A list of cost centers to add or update. (optional)

    try:
        # Creates or updates cost centers.  If a cost center already exists in the system, it will be updated instead of creating a new one.                The system identifies existing codes by matching the SourceEntityId in the Metadata property.
        api_response = api_instance.post_accounting_costcenters(zf_tuuid, zf_ouuid, create_cost_centers_request=create_cost_centers_request)
        print("The response of AccountingApi->post_accounting_costcenters:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccountingApi->post_accounting_costcenters: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_cost_centers_request** | [**CreateCostCentersRequest**](CreateCostCentersRequest.md)| A list of cost centers to add or update. | [optional] 

### Return type

[**CostCenterDTOApiResponseDTO**](CostCenterDTOApiResponseDTO.md)

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

# **post_accounting_costunits**
> CostUnitDTOListApiResponseDTO post_accounting_costunits(zf_tuuid, zf_ouuid, create_cost_units_request=create_cost_units_request)

Creates or updates cost units.  If a cost unit already exists in the system, it will be updated instead of creating a new one.                The system identifies existing codes by matching the SourceEntityId in the Metadata property.

Creates or updates cost units.
If a cost unit already exists in the system, it will be updated instead of creating a new one.
            
The system identifies existing codes by matching the SourceEntityId in the Metadata property.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.cost_unit_dto_list_api_response_dto import CostUnitDTOListApiResponseDTO
from configuration_client.models.create_cost_units_request import CreateCostUnitsRequest
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
    api_instance = configuration_client.AccountingApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_cost_units_request = {"costUnits":[{"code":"string","description":"string","metadata":{"source":"string","sourceEntityId":"string"}}]} # CreateCostUnitsRequest | A list of cost units to add or update. (optional)

    try:
        # Creates or updates cost units.  If a cost unit already exists in the system, it will be updated instead of creating a new one.                The system identifies existing codes by matching the SourceEntityId in the Metadata property.
        api_response = api_instance.post_accounting_costunits(zf_tuuid, zf_ouuid, create_cost_units_request=create_cost_units_request)
        print("The response of AccountingApi->post_accounting_costunits:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccountingApi->post_accounting_costunits: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_cost_units_request** | [**CreateCostUnitsRequest**](CreateCostUnitsRequest.md)| A list of cost units to add or update. | [optional] 

### Return type

[**CostUnitDTOListApiResponseDTO**](CostUnitDTOListApiResponseDTO.md)

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

# **post_accounting_financialperiods**
> FinancialPeriodDTOListApiResponseDTO post_accounting_financialperiods(zf_tuuid, zf_ouuid, create_financial_periods_request=create_financial_periods_request)

Creates or updates financial periods.  If a financial period already exists in the system, it will be updated instead of creating a new one.                The system identifies existing codes by matching the SourceEntityId in the Metadata property.

Creates or updates financial periods.
If a financial period already exists in the system, it will be updated instead of creating a new one.
            
The system identifies existing codes by matching the SourceEntityId in the Metadata property.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.create_financial_periods_request import CreateFinancialPeriodsRequest
from configuration_client.models.financial_period_dto_list_api_response_dto import FinancialPeriodDTOListApiResponseDTO
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
    api_instance = configuration_client.AccountingApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_financial_periods_request = {"financialPeriods":[{"startDate":"string","endDate":"string","period":0,"year":0,"metadata":{"source":"string","sourceEntityId":"string"}}]} # CreateFinancialPeriodsRequest | A list of financial periods to add or update. (optional)

    try:
        # Creates or updates financial periods.  If a financial period already exists in the system, it will be updated instead of creating a new one.                The system identifies existing codes by matching the SourceEntityId in the Metadata property.
        api_response = api_instance.post_accounting_financialperiods(zf_tuuid, zf_ouuid, create_financial_periods_request=create_financial_periods_request)
        print("The response of AccountingApi->post_accounting_financialperiods:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccountingApi->post_accounting_financialperiods: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_financial_periods_request** | [**CreateFinancialPeriodsRequest**](CreateFinancialPeriodsRequest.md)| A list of financial periods to add or update. | [optional] 

### Return type

[**FinancialPeriodDTOListApiResponseDTO**](FinancialPeriodDTOListApiResponseDTO.md)

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

# **post_accounting_generalledgers**
> GeneralLedgerCodeDTOListApiResponseDTO post_accounting_generalledgers(zf_tuuid, zf_ouuid, create_general_ledger_codes_request=create_general_ledger_codes_request)

Creates or updates general ledger codes.  If a general ledger code already exists in the system, it will be updated instead of creating a new one.                The system identifies existing codes by matching the SourceEntityId in the Metadata property.

Creates or updates general ledger codes.
If a general ledger code already exists in the system, it will be updated instead of creating a new one.
            
The system identifies existing codes by matching the SourceEntityId in the Metadata property.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.create_general_ledger_codes_request import CreateGeneralLedgerCodesRequest
from configuration_client.models.general_ledger_code_dto_list_api_response_dto import GeneralLedgerCodeDTOListApiResponseDTO
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
    api_instance = configuration_client.AccountingApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_general_ledger_codes_request = {"generalLedgerCodes":[{"code":"string","description":"string","metadata":{"source":"string","sourceEntityId":"string"}}]} # CreateGeneralLedgerCodesRequest | A list of general ledger codes to add or update. (optional)

    try:
        # Creates or updates general ledger codes.  If a general ledger code already exists in the system, it will be updated instead of creating a new one.                The system identifies existing codes by matching the SourceEntityId in the Metadata property.
        api_response = api_instance.post_accounting_generalledgers(zf_tuuid, zf_ouuid, create_general_ledger_codes_request=create_general_ledger_codes_request)
        print("The response of AccountingApi->post_accounting_generalledgers:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccountingApi->post_accounting_generalledgers: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_general_ledger_codes_request** | [**CreateGeneralLedgerCodesRequest**](CreateGeneralLedgerCodesRequest.md)| A list of general ledger codes to add or update. | [optional] 

### Return type

[**GeneralLedgerCodeDTOListApiResponseDTO**](GeneralLedgerCodeDTOListApiResponseDTO.md)

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

