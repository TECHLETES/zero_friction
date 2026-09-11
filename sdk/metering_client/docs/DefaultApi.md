# metering_client.DefaultApi

All URIs are relative to *https://api.zerofriction.co/api/me*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_muting_rule_by_aggregate_details**](DefaultApi.md#cancel_muting_rule_by_aggregate_details) | **PUT** /MutingRules/cancelAggregate | Cancels a group of muting rules based on aggregate details
[**cancel_muting_rule_by_details**](DefaultApi.md#cancel_muting_rule_by_details) | **PUT** /MutingRules/cancel | Cancels a muting rule based on provided details
[**cancel_muting_rule_by_id**](DefaultApi.md#cancel_muting_rule_by_id) | **PUT** /MutingRules/cancel/{mutingRuleId} | Cancels a muting rule by its ID
[**create_muting_rule**](DefaultApi.md#create_muting_rule) | **POST** /MutingRules | Creates multiple muting rules in bulk
[**delete_integrations_import**](DefaultApi.md#delete_integrations_import) | **DELETE** /Integrations/import | Deletes imports based on provided id&#39;s. If there are too many id&#39;s, deletes are done asynchronously
[**delete_integrations_import_meteringimportid**](DefaultApi.md#delete_integrations_import_meteringimportid) | **DELETE** /Integrations/import/{meteringImportId} | Delete an existing import by it&#39;s identifier
[**delete_measurements_extchuuid_delete_measurementid**](DefaultApi.md#delete_measurements_extchuuid_delete_measurementid) | **DELETE** /Measurements/{extchuuid}/delete/{measurementId} | Deletes a specific measurement from an external channel.
[**delete_meteringprovideraccounts_id**](DefaultApi.md#delete_meteringprovideraccounts_id) | **DELETE** /MeteringProviderAccounts/{id} | Deletes a metering provider account by id.
[**get_all_muting_rules**](DefaultApi.md#get_all_muting_rules) | **GET** /MutingRules/getall | Retrieves all muting rules with optional filtering
[**get_consumption_date_ranges_for_service_location**](DefaultApi.md#get_consumption_date_ranges_for_service_location) | **GET** /ServiceConsumptions/{sluuid}/range/date-range-limit | Gets consumption date ranges available for a service location
[**get_consumptions_extchuuid**](DefaultApi.md#get_consumptions_extchuuid) | **GET** /Consumptions/{extchuuid} | Retrieves consumption values for a specific external channel within a date range.
[**get_consumptions_extchuuid_flat**](DefaultApi.md#get_consumptions_extchuuid_flat) | **GET** /Consumptions/{extchuuid}/flat | Retrieves flat consumption values for a specific external channel with optional grouping by period.
[**get_consumptions_for_service_location_grouped_on_range**](DefaultApi.md#get_consumptions_for_service_location_grouped_on_range) | **GET** /ServiceConsumptions/{sluuid}/range | Gets consumption data for a service location grouped by range
[**get_count**](DefaultApi.md#get_count) | **GET** /MutingRules/GetCount | Gets the count of muting rules matching the specified criteria
[**get_integrations_import**](DefaultApi.md#get_integrations_import) | **GET** /Integrations/import | Gets a paged list of metering imports based on the specified filters.
[**get_integrations_import_meteringimportid_issues_interpretation**](DefaultApi.md#get_integrations_import_meteringimportid_issues_interpretation) | **GET** /Integrations/import/{meteringImportId}/issues/interpretation | Get an overview of issues that were detected during the interpretation of a metering import.
[**get_integrations_import_meteringimportid_issuescount**](DefaultApi.md#get_integrations_import_meteringimportid_issuescount) | **GET** /Integrations/import/{meteringImportId}/issuescount | Get a count of issues detected during import validation and processing.
[**get_integrations_import_meteringimportid_measurements**](DefaultApi.md#get_integrations_import_meteringimportid_measurements) | **GET** /Integrations/import/{meteringImportId}/measurements | Get an overview of all the measurements for a metering import with their possible validation or processing issues.
[**get_integrations_import_overviewcount**](DefaultApi.md#get_integrations_import_overviewcount) | **GET** /Integrations/import/overviewcount | Gets count information for metering import overview, grouped by their status.
[**get_integrations_import_uuid**](DefaultApi.md#get_integrations_import_uuid) | **GET** /Integrations/import/{uuid} | Fetch the details of a metering import to know the status of the metering import and to know how many values were successfully parsed, validated, and processed.
[**get_measurements_extchuuid**](DefaultApi.md#get_measurements_extchuuid) | **GET** /Measurements/{extchuuid} | Gets measurement values for a specific external channel identifier within a date range.
[**get_measurements_extchuuid_flat**](DefaultApi.md#get_measurements_extchuuid_flat) | **GET** /Measurements/{extchuuid}/flat | Gets flat (non-paged) measurement values for a specific external channel within a date range.
[**get_measurements_m_meteruuid**](DefaultApi.md#get_measurements_m_meteruuid) | **GET** /Measurements/m/{meteruuid} | Gets adjacent measurement pairs for a meter at a specific measurement date.
[**get_meteringissues**](DefaultApi.md#get_meteringissues) | **GET** /MeteringIssues | Retrieves a paged list of metering issues based on specified filter criteria.
[**get_meteringissues_getallbymeter**](DefaultApi.md#get_meteringissues_getallbymeter) | **GET** /MeteringIssues/getAllByMeter | Retrieves a paged list of metering issues for a specific meter.
[**get_meteringissues_grouped**](DefaultApi.md#get_meteringissues_grouped) | **GET** /MeteringIssues/grouped | Retrieves a paged list of metering issues grouped by a specified property.
[**get_meteringissues_meters**](DefaultApi.md#get_meteringissues_meters) | **GET** /MeteringIssues/meters | Retrieves a paged list of meters that have metering issues.
[**get_meteringissues_overviewcount**](DefaultApi.md#get_meteringissues_overviewcount) | **GET** /MeteringIssues/overviewcount | Retrieves count statistics for metering issues based on specified filter criteria.
[**get_meteringissues_propertygroups**](DefaultApi.md#get_meteringissues_propertygroups) | **GET** /MeteringIssues/propertygroups | Retrieves a paged list of property groups that have metering issues.
[**get_meteringprovideraccounts_id**](DefaultApi.md#get_meteringprovideraccounts_id) | **GET** /MeteringProviderAccounts/{id} | Retrieves a single metering provider account by its unique identifier.
[**get_meters**](DefaultApi.md#get_meters) | **GET** /MutingRules/getmeters | Retrieves meters for which a muting rule with the specified parameters applies
[**get_migrationadmin_latest_version**](DefaultApi.md#get_migrationadmin_latest_version) | **GET** /MigrationAdmin/latest-version | /MigrationAdmin/latest-version - GET
[**get_muting_rule**](DefaultApi.md#get_muting_rule) | **GET** /MutingRules/{mutingRuleId} | Retrieves a specific muting rule by its ID
[**get_muting_rules_by_meter**](DefaultApi.md#get_muting_rules_by_meter) | **GET** /MutingRules/getall/{meterId} | Retrieves muting rules for a specific meter
[**get_overview_count**](DefaultApi.md#get_overview_count) | **GET** /MutingRules/getall/{meterId}/overviewCount | Gets an overview count of muting rules for a specific meter
[**get_productusage**](DefaultApi.md#get_productusage) | **GET** /ProductUsage | Gets the metering product usage snapshot with integrations per organization.
[**get_related_muting_rules**](DefaultApi.md#get_related_muting_rules) | **GET** /MutingRules/getallrelated | Retrieves muting rules related to specific criteria
[**get_serviceconsumptions_sluuid**](DefaultApi.md#get_serviceconsumptions_sluuid) | **GET** /ServiceConsumptions/{sluuid} | Gets paginated consumption data for a service location
[**get_serviceconsumptions_sluuid_flat**](DefaultApi.md#get_serviceconsumptions_sluuid_flat) | **GET** /ServiceConsumptions/{sluuid}/flat | Gets flat consumption data for a service location with optional grouping by period
[**get_serviceconsumptions_sluuid_raw**](DefaultApi.md#get_serviceconsumptions_sluuid_raw) | **GET** /ServiceConsumptions/{sluuid}/raw | Gets raw consumption data for a service location
[**get_serviceconsumptions_sluuid_types**](DefaultApi.md#get_serviceconsumptions_sluuid_types) | **GET** /ServiceConsumptions/{sluuid}/types | Gets available consumption types for a service location
[**patch_integrations_import_markprocessed**](DefaultApi.md#patch_integrations_import_markprocessed) | **PATCH** /Integrations/import/markprocessed | Marks requested imports as processed, if the current status of the import allows it
[**patch_integrations_import_validate**](DefaultApi.md#patch_integrations_import_validate) | **PATCH** /Integrations/import/validate | Attempts to revalidate multiple imports
[**patch_integrations_import_validate_meteringimportid**](DefaultApi.md#patch_integrations_import_validate_meteringimportid) | **PATCH** /Integrations/import/validate/{meteringImportId} | Attempts to revalidate a specified import
[**post_consumptions_export_sum**](DefaultApi.md#post_consumptions_export_sum) | **POST** /Consumptions/export/sum | Calculates and exports the sum of consumption values for a list of meters.
[**post_consumptions_extchuuid_recalculate**](DefaultApi.md#post_consumptions_extchuuid_recalculate) | **POST** /Consumptions/{extchuuid}/recalculate | Recalculates consumption values for a specific channel within a given date range.
[**post_integrations_import**](DefaultApi.md#post_integrations_import) | **POST** /Integrations/import | Upload measurements for specific file formats.
[**post_integrations_import_download**](DefaultApi.md#post_integrations_import_download) | **POST** /Integrations/import/download | Downloads the original files for all imports that are requested
[**post_integrations_import_filter**](DefaultApi.md#post_integrations_import_filter) | **POST** /Integrations/import/filter | Gets a paged list of metering imports based on the specified filters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
[**post_integrations_import_filter_overviewcount**](DefaultApi.md#post_integrations_import_filter_overviewcount) | **POST** /Integrations/import/filter/overviewcount | Gets count information for metering import overview, grouped by their status. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
[**post_integrations_import_measurements**](DefaultApi.md#post_integrations_import_measurements) | **POST** /Integrations/import/measurements | Upload measurements for a collection of different meters.
[**post_integrations_import_process**](DefaultApi.md#post_integrations_import_process) | **POST** /Integrations/import/process | Processes all selected imports if they have the status &#39;Validation failed&#39;, &#39;To process&#39;, or &#39;Processed with issues&#39;. Before processing valid measurements, it revalidates any current invalid measurements.  For example, if a meter or channel did not exist when the import was created but has since bee
[**post_integrations_import_process_meteringimportid**](DefaultApi.md#post_integrations_import_process_meteringimportid) | **POST** /Integrations/import/process/{meteringImportId} | Processes the import if it has the status &#39;Validation failed&#39;, &#39;To process&#39;, or &#39;Processed with issues&#39;. Before processing valid measurements, it revalidates any current invalid measurements.  For example, if a meter or channel did not exist when the import was created but has since been added, the
[**post_integrations_import_processall**](DefaultApi.md#post_integrations_import_processall) | **POST** /Integrations/import/processall | Processes all imports that have status &#39;To process&#39; and &#39;Processed with issues&#39;
[**post_measurements**](DefaultApi.md#post_measurements) | **POST** /Measurements | Adds a new measurement for an external channel.
[**post_measurements_bulk_delete**](DefaultApi.md#post_measurements_bulk_delete) | **POST** /Measurements/bulk/delete | Bulk deletes measurements based on specified criteria.
[**post_measurements_export_values**](DefaultApi.md#post_measurements_export_values) | **POST** /Measurements/export/values | Exports measurement values for a list of meters within a date range.
[**post_measurements_validate**](DefaultApi.md#post_measurements_validate) | **POST** /Measurements/validate | Validates measurements against business rules without persisting them.
[**post_meteringissues**](DefaultApi.md#post_meteringissues) | **POST** /MeteringIssues | Retrieves a paged list of metering issues based on specified filter criteria.
[**post_meteringissues_bulk_ignore**](DefaultApi.md#post_meteringissues_bulk_ignore) | **POST** /MeteringIssues/bulk/ignore | Ignores multiple metering issues in bulk.
[**post_meteringissues_bulk_resolve**](DefaultApi.md#post_meteringissues_bulk_resolve) | **POST** /MeteringIssues/bulk/resolve | Resolves multiple metering issues in bulk.
[**post_meteringissues_getallbymeter**](DefaultApi.md#post_meteringissues_getallbymeter) | **POST** /MeteringIssues/getAllByMeter | Retrieves a paged list of metering issues for a specific meter.
[**post_meteringissues_grouped**](DefaultApi.md#post_meteringissues_grouped) | **POST** /MeteringIssues/grouped | Retrieves a paged list of metering issues grouped by a specified property.
[**post_meteringissues_issueid_ignore**](DefaultApi.md#post_meteringissues_issueid_ignore) | **POST** /MeteringIssues/{issueId}/ignore | Ignores a specific metering issue.
[**post_meteringissues_issueid_resolve**](DefaultApi.md#post_meteringissues_issueid_resolve) | **POST** /MeteringIssues/{issueId}/resolve | Resolves a specific metering issue.
[**post_meteringissues_overviewcount**](DefaultApi.md#post_meteringissues_overviewcount) | **POST** /MeteringIssues/overviewcount | Retrieves count statistics for metering issues based on specified filter criteria.
[**post_meteringissues_selectionsummary**](DefaultApi.md#post_meteringissues_selectionsummary) | **POST** /MeteringIssues/selectionSummary | Summarises a metering issue selection: total issue and distinct meter counts plus a breakdown per error type.
[**post_meteringprovideraccounts**](DefaultApi.md#post_meteringprovideraccounts) | **POST** /MeteringProviderAccounts | Creates a new metering provider account for the current tenant, or updates settings and sets status to Active if an account already exists for the provider type.
[**post_meteringprovideraccounts_filter**](DefaultApi.md#post_meteringprovideraccounts_filter) | **POST** /MeteringProviderAccounts/filter | Retrieves metering provider accounts for the current tenant with optional filtering and paging.
[**post_meteringprovideraccounts_id**](DefaultApi.md#post_meteringprovideraccounts_id) | **POST** /MeteringProviderAccounts/{id} | Updates an existing metering provider account by id.
[**post_meteringprovideraccounts_id_deactivate**](DefaultApi.md#post_meteringprovideraccounts_id_deactivate) | **POST** /MeteringProviderAccounts/{id}/deactivate | Deactivates a metering provider account by id (sets status to inactive).
[**post_meteringproviderruns_filter**](DefaultApi.md#post_meteringproviderruns_filter) | **POST** /MeteringProviderRuns/filter | Retrieves metering provider runs for the current tenant with optional filtering and paging.
[**post_mutingrules_bulk_frommeteringissueselection**](DefaultApi.md#post_mutingrules_bulk_frommeteringissueselection) | **POST** /MutingRules/bulk/fromMeteringIssueSelection | Creates muting rules in bulk for every distinct meter in a metering issue selection, one per requested error type. Creating a rule also ignores the open issues it covers (see muting rule domain behaviour).
[**post_serviceconsumptions_aggregatedperperiod**](DefaultApi.md#post_serviceconsumptions_aggregatedperperiod) | **POST** /ServiceConsumptions/aggregatedperperiod | Gets aggregated service consumptions per period for a list of service locations
[**post_serviceconsumptions_buckets**](DefaultApi.md#post_serviceconsumptions_buckets) | **POST** /ServiceConsumptions/buckets | Gets consumption data for service locations grouped by provided buckets
[**post_serviceconsumptions_export_sum**](DefaultApi.md#post_serviceconsumptions_export_sum) | **POST** /ServiceConsumptions/export/sum | Gets sum of consumption values for a list of service locations
[**post_serviceconsumptions_yearlyaverage**](DefaultApi.md#post_serviceconsumptions_yearlyaverage) | **POST** /ServiceConsumptions/yearlyaverage | Gets yearly average consumption per service location


# **cancel_muting_rule_by_aggregate_details**
> ApiResponseDTOOfboolean cancel_muting_rule_by_aggregate_details(zf_tuuid, zf_ouuid, cancel_muting_rule_aggregate_request=cancel_muting_rule_aggregate_request)

Cancels a group of muting rules based on aggregate details

Cancels a group of muting rules based on aggregate details

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    cancel_muting_rule_aggregate_request = {"errorType":"consumptionnegative","message":"string","timePeriod":"day","muteFromWithNumericValue":0,"muteUntilWithNumericValue":0,"userId":"string"} # CancelMutingRuleAggregateRequest | Cancellation token (optional)

    try:
        # Cancels a group of muting rules based on aggregate details
        api_response = api_instance.cancel_muting_rule_by_aggregate_details(zf_tuuid, zf_ouuid, cancel_muting_rule_aggregate_request=cancel_muting_rule_aggregate_request)
        print("The response of DefaultApi->cancel_muting_rule_by_aggregate_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->cancel_muting_rule_by_aggregate_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **cancel_muting_rule_aggregate_request** | [**CancelMutingRuleAggregateRequest**](CancelMutingRuleAggregateRequest.md)| Cancellation token | [optional]

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

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
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancel_muting_rule_by_details**
> ApiResponseDTOOfboolean cancel_muting_rule_by_details(zf_tuuid, zf_ouuid, cancel_muting_rule_request=cancel_muting_rule_request)

Cancels a muting rule based on provided details

Cancels a muting rule based on provided details

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    cancel_muting_rule_request = {"errorType":"consumptionnegative","meterIds":["string"]} # CancelMutingRuleRequest | Cancellation token (optional)

    try:
        # Cancels a muting rule based on provided details
        api_response = api_instance.cancel_muting_rule_by_details(zf_tuuid, zf_ouuid, cancel_muting_rule_request=cancel_muting_rule_request)
        print("The response of DefaultApi->cancel_muting_rule_by_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->cancel_muting_rule_by_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **cancel_muting_rule_request** | [**CancelMutingRuleRequest**](CancelMutingRuleRequest.md)| Cancellation token | [optional]

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

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
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancel_muting_rule_by_id**
> ApiResponseDTOOfboolean cancel_muting_rule_by_id(muting_rule_id, zf_tuuid, zf_ouuid)

Cancels a muting rule by its ID

Cancels a muting rule by its ID

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = metering_client.DefaultApi(api_client)
    muting_rule_id = 'muting_rule_id_example' # str | ID of the muting rule to cancel
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Cancels a muting rule by its ID
        api_response = api_instance.cancel_muting_rule_by_id(muting_rule_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->cancel_muting_rule_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->cancel_muting_rule_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **muting_rule_id** | **str**| ID of the muting rule to cancel |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

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
**400** | Bad Request |  -  |

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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_create_muting_rule_request = {"onlyValidate":true,"queryParams":{"servicelocationIds":["string"],"propertyGroupIds":["string"],"meterType":"individual","receivedMeteringDataStart":"string","receivedMeteringDataEnd":"string","nextExpectedReadingDateStart":"string","nextExpectedReadingDateEnd":"string","parentSerialNumber":"string","filterByReadingFrequency":true,"readingFrequency":"hourly","customerId":"string","meterTypeGroup":"string","meterSerialNumbers":["string"],"modelIds":["string"],"meterName":"string","showDeleted":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","errorType":"consumptionnegative","message":"string","timePeriod":"day"} # BulkCreateMutingRuleRequest | Cancellation token (optional)

    try:
        # Creates multiple muting rules in bulk
        api_response = api_instance.create_muting_rule(zf_tuuid, zf_ouuid, bulk_create_muting_rule_request=bulk_create_muting_rule_request)
        print("The response of DefaultApi->create_muting_rule:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->create_muting_rule: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **bulk_create_muting_rule_request** | [**BulkCreateMutingRuleRequest**](BulkCreateMutingRuleRequest.md)| Cancellation token | [optional]

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_integrations_import**
> ApiResponseDTO delete_integrations_import(zf_tuuid, zf_ouuid, bulk_delete_metering_imports_request=bulk_delete_metering_imports_request)

Deletes imports based on provided id's. If there are too many id's, deletes are done asynchronously

Deletes imports based on provided id's. If there are too many id's, deletes are done asynchronously

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto import ApiResponseDTO
from metering_client.models.bulk_delete_metering_imports_request import BulkDeleteMeteringImportsRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_delete_metering_imports_request = {"onlyValidate":true,"queryParams":{"status":["string"],"communicationType":"string","meteringFormat":"string","createdStartDateTime":"string","createdEndDateTime":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkDeleteMeteringImportsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Deletes imports based on provided id's. If there are too many id's, deletes are done asynchronously
        api_response = api_instance.delete_integrations_import(zf_tuuid, zf_ouuid, bulk_delete_metering_imports_request=bulk_delete_metering_imports_request)
        print("The response of DefaultApi->delete_integrations_import:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_integrations_import: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **bulk_delete_metering_imports_request** | [**BulkDeleteMeteringImportsRequest**](BulkDeleteMeteringImportsRequest.md)| Propagates notification that operations should be canceled. | [optional]

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
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_integrations_import_meteringimportid**
> ApiResponseDTO delete_integrations_import_meteringimportid(metering_import_id, zf_tuuid, zf_ouuid)

Delete an existing import by it's identifier

Delete an existing import by it's identifier

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto import ApiResponseDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    metering_import_id = 'metering_import_id_example' # str | Unique identifier of the import
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Delete an existing import by it's identifier
        api_response = api_instance.delete_integrations_import_meteringimportid(metering_import_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->delete_integrations_import_meteringimportid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_integrations_import_meteringimportid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metering_import_id** | **str**| Unique identifier of the import |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_measurements_extchuuid_delete_measurementid**
> ApiResponseDTOOfboolean delete_measurements_extchuuid_delete_measurementid(extchuuid, measurement_id, zf_tuuid, zf_ouuid)

Deletes a specific measurement from an external channel.

Deletes a specific measurement from an external channel.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = metering_client.DefaultApi(api_client)
    extchuuid = 'extchuuid_example' # str | The external channel identifier.
    measurement_id = 'measurement_id_example' # str | The ID of the measurement to delete.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Deletes a specific measurement from an external channel.
        api_response = api_instance.delete_measurements_extchuuid_delete_measurementid(extchuuid, measurement_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->delete_measurements_extchuuid_delete_measurementid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_measurements_extchuuid_delete_measurementid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extchuuid** | **str**| The external channel identifier. |
 **measurement_id** | **str**| The ID of the measurement to delete. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_meteringprovideraccounts_id**
> ApiResponseDTOOfboolean delete_meteringprovideraccounts_id(id, zf_tuuid, zf_ouuid)

Deletes a metering provider account by id.

Deletes a metering provider account by id.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = metering_client.DefaultApi(api_client)
    id = 'id_example' # str | The unique identifier of the metering provider account to delete.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Deletes a metering provider account by id.
        api_response = api_instance.delete_meteringprovideraccounts_id(id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->delete_meteringprovideraccounts_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_meteringprovideraccounts_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the metering provider account to delete. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**404** | Not Found |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_muting_rules**
> ApiResponseDTOOfPagedResponseModelDTOOfMutingRuleAggregatorDTO get_all_muting_rules(zf_tuuid, zf_ouuid, include_active=include_active, include_expired=include_expired, meter_id=meter_id, continuation_token=continuation_token)

Retrieves all muting rules with optional filtering

Retrieves all muting rules with optional filtering

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_muting_rule_aggregator_dto import ApiResponseDTOOfPagedResponseModelDTOOfMutingRuleAggregatorDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    include_active = True # bool | Whether to include active muting rules (optional)
    include_expired = True # bool | Whether to include expired muting rules (optional)
    meter_id = 'meter_id_example' # str | Optional meter ID to filter by (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination (optional)

    try:
        # Retrieves all muting rules with optional filtering
        api_response = api_instance.get_all_muting_rules(zf_tuuid, zf_ouuid, include_active=include_active, include_expired=include_expired, meter_id=meter_id, continuation_token=continuation_token)
        print("The response of DefaultApi->get_all_muting_rules:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_all_muting_rules: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **include_active** | **bool**| Whether to include active muting rules | [optional]
 **include_expired** | **bool**| Whether to include expired muting rules | [optional]
 **meter_id** | **str**| Optional meter ID to filter by | [optional]
 **continuation_token** | **str**| Token for pagination | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfMutingRuleAggregatorDTO**](ApiResponseDTOOfPagedResponseModelDTOOfMutingRuleAggregatorDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the list of muting rules |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_consumption_date_ranges_for_service_location**
> ApiResponseDTOOfServiceConsumptionGetDateRangeDTO get_consumption_date_ranges_for_service_location(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, start_date_time=start_date_time, end_date_time=end_date_time)

Gets consumption date ranges available for a service location

Gets consumption date ranges available for a service location

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_service_consumption_get_date_range_dto import ApiResponseDTOOfServiceConsumptionGetDateRangeDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    sluuid = 'sluuid_example' # str | Service location UUID
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    utility_type = 'utility_type_example' # str | Type of utility (optional)
    unit_of_measure = 'unit_of_measure_example' # str | Unit of measure (optional)
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Start date and time for the search range (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | End date and time for the search range (optional)

    try:
        # Gets consumption date ranges available for a service location
        api_response = api_instance.get_consumption_date_ranges_for_service_location(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, start_date_time=start_date_time, end_date_time=end_date_time)
        print("The response of DefaultApi->get_consumption_date_ranges_for_service_location:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_consumption_date_ranges_for_service_location: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sluuid** | **str**| Service location UUID |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **utility_type** | **str**| Type of utility | [optional]
 **unit_of_measure** | **str**| Unit of measure | [optional]
 **start_date_time** | **datetime**| Start date and time for the search range | [optional]
 **end_date_time** | **datetime**| End date and time for the search range | [optional]

### Return type

[**ApiResponseDTOOfServiceConsumptionGetDateRangeDTO**](ApiResponseDTOOfServiceConsumptionGetDateRangeDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Date range information for service consumption data |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_consumptions_extchuuid**
> ApiResponseDTOOfPagedResponseModelDTOOfFlatPagedConsumptionDTO get_consumptions_extchuuid(extchuuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time, continuation_token=continuation_token)

Retrieves consumption values for a specific external channel within a date range.

Retrieves consumption values for a specific external channel within a date range.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_flat_paged_consumption_dto import ApiResponseDTOOfPagedResponseModelDTOOfFlatPagedConsumptionDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    extchuuid = 'extchuuid_example' # str | The external channel UUID to retrieve consumption data for.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | The start date and time for the consumption data range. (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | The end date and time for the consumption data range. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination of large result sets. (optional)

    try:
        # Retrieves consumption values for a specific external channel within a date range.
        api_response = api_instance.get_consumptions_extchuuid(extchuuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time, continuation_token=continuation_token)
        print("The response of DefaultApi->get_consumptions_extchuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_consumptions_extchuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extchuuid** | **str**| The external channel UUID to retrieve consumption data for. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **start_date_time** | **datetime**| The start date and time for the consumption data range. | [optional]
 **end_date_time** | **datetime**| The end date and time for the consumption data range. | [optional]
 **continuation_token** | **str**| Token for pagination of large result sets. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfFlatPagedConsumptionDTO**](ApiResponseDTOOfPagedResponseModelDTOOfFlatPagedConsumptionDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged list of consumption values for the specified channel and date range. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_consumptions_extchuuid_flat**
> ApiResponseDTOOfPagedResponseModelDTOOfFlatConsumptionDTO get_consumptions_extchuuid_flat(extchuuid, zf_tuuid, zf_ouuid, group_by_period=group_by_period, start_date_time=start_date_time, end_date_time=end_date_time)

Retrieves flat consumption values for a specific external channel with optional grouping by period.

Retrieves flat consumption values for a specific external channel with optional grouping by period.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_flat_consumption_dto import ApiResponseDTOOfPagedResponseModelDTOOfFlatConsumptionDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    extchuuid = 'extchuuid_example' # str | The external channel UUID to retrieve consumption data for.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    group_by_period = 'group_by_period_example' # str | Optional period for aggregating consumption data (daily, weekly, monthly, etc.). (optional)
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | The start date and time for the consumption data range. (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | The end date and time for the consumption data range. (optional)

    try:
        # Retrieves flat consumption values for a specific external channel with optional grouping by period.
        api_response = api_instance.get_consumptions_extchuuid_flat(extchuuid, zf_tuuid, zf_ouuid, group_by_period=group_by_period, start_date_time=start_date_time, end_date_time=end_date_time)
        print("The response of DefaultApi->get_consumptions_extchuuid_flat:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_consumptions_extchuuid_flat: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extchuuid** | **str**| The external channel UUID to retrieve consumption data for. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **group_by_period** | **str**| Optional period for aggregating consumption data (daily, weekly, monthly, etc.). | [optional]
 **start_date_time** | **datetime**| The start date and time for the consumption data range. | [optional]
 **end_date_time** | **datetime**| The end date and time for the consumption data range. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfFlatConsumptionDTO**](ApiResponseDTOOfPagedResponseModelDTOOfFlatConsumptionDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged list of flat consumption values for the specified channel, date range, and grouping period. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_consumptions_for_service_location_grouped_on_range**
> ApiResponseDTOOfListOfGroupedServiceConsumptionDTO get_consumptions_for_service_location_grouped_on_range(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, start_date_time=start_date_time, end_date_time=end_date_time, order_by=order_by, continuation_token=continuation_token)

Gets consumption data for a service location grouped by range

Gets consumption data for a service location grouped by range

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_list_of_grouped_service_consumption_dto import ApiResponseDTOOfListOfGroupedServiceConsumptionDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    sluuid = 'sluuid_example' # str | Service location UUID
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    utility_type = 'utility_type_example' # str | Type of utility (optional)
    unit_of_measure = 'unit_of_measure_example' # str | Unit of measure (optional)
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Start date and time for the data range (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | End date and time for the data range (optional)
    order_by = 'order_by_example' # str | Order by criteria (optional)
    continuation_token = 'continuation_token_example' # str | Token for paged results continuation (optional)

    try:
        # Gets consumption data for a service location grouped by range
        api_response = api_instance.get_consumptions_for_service_location_grouped_on_range(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, start_date_time=start_date_time, end_date_time=end_date_time, order_by=order_by, continuation_token=continuation_token)
        print("The response of DefaultApi->get_consumptions_for_service_location_grouped_on_range:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_consumptions_for_service_location_grouped_on_range: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sluuid** | **str**| Service location UUID |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **utility_type** | **str**| Type of utility | [optional]
 **unit_of_measure** | **str**| Unit of measure | [optional]
 **start_date_time** | **datetime**| Start date and time for the data range | [optional]
 **end_date_time** | **datetime**| End date and time for the data range | [optional]
 **order_by** | **str**| Order by criteria | [optional]
 **continuation_token** | **str**| Token for paged results continuation | [optional]

### Return type

[**ApiResponseDTOOfListOfGroupedServiceConsumptionDTO**](ApiResponseDTOOfListOfGroupedServiceConsumptionDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of grouped service consumption data |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_count**
> ApiResponseDTOOfint get_count(zf_tuuid, zf_ouuid, include_active=include_active, include_expired=include_expired, meter_id=meter_id)

Gets the count of muting rules matching the specified criteria

Gets the count of muting rules matching the specified criteria

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto_ofint import ApiResponseDTOOfint
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    include_active = True # bool | Whether to include active muting rules (optional)
    include_expired = True # bool | Whether to include expired muting rules (optional)
    meter_id = 'meter_id_example' # str | Optional meter ID to filter by (optional)

    try:
        # Gets the count of muting rules matching the specified criteria
        api_response = api_instance.get_count(zf_tuuid, zf_ouuid, include_active=include_active, include_expired=include_expired, meter_id=meter_id)
        print("The response of DefaultApi->get_count:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_count: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **include_active** | **bool**| Whether to include active muting rules | [optional]
 **include_expired** | **bool**| Whether to include expired muting rules | [optional]
 **meter_id** | **str**| Optional meter ID to filter by | [optional]

### Return type

[**ApiResponseDTOOfint**](ApiResponseDTOOfint.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the count of muting rules |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_integrations_import**
> ApiResponseDTOOfPagedResponseModelDTOOfMeteringImportDTO get_integrations_import(zf_tuuid, zf_ouuid, status=status, communication_type=communication_type, metering_format=metering_format, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

Gets a paged list of metering imports based on the specified filters.

Gets a paged list of metering imports based on the specified filters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_metering_import_dto import ApiResponseDTOOfPagedResponseModelDTOOfMeteringImportDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    status = ['status_example'] # List[str] |  (optional)
    communication_type = 'communication_type_example' # str |  (optional)
    metering_format = 'metering_format_example' # str |  (optional)
    created_start_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    created_end_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | Field to order the results by. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)

    try:
        # Gets a paged list of metering imports based on the specified filters.
        api_response = api_instance.get_integrations_import(zf_tuuid, zf_ouuid, status=status, communication_type=communication_type, metering_format=metering_format, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of DefaultApi->get_integrations_import:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_integrations_import: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **status** | [**List[str]**](str.md)|  | [optional]
 **communication_type** | **str**|  | [optional]
 **metering_format** | **str**|  | [optional]
 **created_start_date_time** | **datetime**|  | [optional]
 **created_end_date_time** | **datetime**|  | [optional]
 **flex_search** | **str**|  | [optional]
 **include_only_ids** | [**List[str]**](str.md)|  | [optional]
 **exclude_ids** | [**List[str]**](str.md)|  | [optional]
 **page_size** | **int**|  | [optional]
 **name** | **str**|  | [optional]
 **id** | **int**|  | [optional]
 **order_by** | **str**| Field to order the results by. | [optional]
 **continuation_token** | **str**| Token for pagination. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfMeteringImportDTO**](ApiResponseDTOOfPagedResponseModelDTOOfMeteringImportDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged list of metering imports. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_integrations_import_meteringimportid_issues_interpretation**
> ApiResponseDTOOfMeteringImportInterpretationResultDTO get_integrations_import_meteringimportid_issues_interpretation(metering_import_id, zf_tuuid, zf_ouuid, error_codes=error_codes, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)

Get an overview of issues that were detected during the interpretation of a metering import.

Get an overview of issues that were detected during the interpretation of a metering import.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_metering_import_interpretation_result_dto import ApiResponseDTOOfMeteringImportInterpretationResultDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    metering_import_id = 'metering_import_id_example' # str | The ID of the metering import.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    error_codes = ['error_codes_example'] # List[str] |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)

    try:
        # Get an overview of issues that were detected during the interpretation of a metering import.
        api_response = api_instance.get_integrations_import_meteringimportid_issues_interpretation(metering_import_id, zf_tuuid, zf_ouuid, error_codes=error_codes, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)
        print("The response of DefaultApi->get_integrations_import_meteringimportid_issues_interpretation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_integrations_import_meteringimportid_issues_interpretation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metering_import_id** | **str**| The ID of the metering import. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **error_codes** | [**List[str]**](str.md)|  | [optional]
 **flex_search** | **str**|  | [optional]
 **include_only_ids** | [**List[str]**](str.md)|  | [optional]
 **exclude_ids** | [**List[str]**](str.md)|  | [optional]
 **page_size** | **int**|  | [optional]

### Return type

[**ApiResponseDTOOfMeteringImportInterpretationResultDTO**](ApiResponseDTOOfMeteringImportInterpretationResultDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_integrations_import_meteringimportid_issuescount**
> ApiResponseDTOOfMeteringImportIssuesCountDTO get_integrations_import_meteringimportid_issuescount(metering_import_id, zf_tuuid, zf_ouuid)

Get a count of issues detected during import validation and processing.

Get a count of issues detected during import validation and processing.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_metering_import_issues_count_dto import ApiResponseDTOOfMeteringImportIssuesCountDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    metering_import_id = 'metering_import_id_example' # str | The ID of the metering import.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Get a count of issues detected during import validation and processing.
        api_response = api_instance.get_integrations_import_meteringimportid_issuescount(metering_import_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_integrations_import_meteringimportid_issuescount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_integrations_import_meteringimportid_issuescount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metering_import_id** | **str**| The ID of the metering import. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfMeteringImportIssuesCountDTO**](ApiResponseDTOOfMeteringImportIssuesCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_integrations_import_meteringimportid_measurements**
> ApiResponseDTOOfImportedMeasurementsOverviewDTO get_integrations_import_meteringimportid_measurements(metering_import_id, zf_tuuid, zf_ouuid, meter=meter, error_codes=error_codes, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

Get an overview of all the measurements for a metering import with their possible validation or processing issues.

Get an overview of all the measurements for a metering import with their possible validation or processing issues.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_imported_measurements_overview_dto import ApiResponseDTOOfImportedMeasurementsOverviewDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    metering_import_id = 'metering_import_id_example' # str | The ID of the metering import.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    meter = 'meter_example' # str |  (optional)
    error_codes = ['error_codes_example'] # List[str] |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | Order the measurements from the metering import by the available options from MeteringImportMeasurementsOrderBy (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)

    try:
        # Get an overview of all the measurements for a metering import with their possible validation or processing issues.
        api_response = api_instance.get_integrations_import_meteringimportid_measurements(metering_import_id, zf_tuuid, zf_ouuid, meter=meter, error_codes=error_codes, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of DefaultApi->get_integrations_import_meteringimportid_measurements:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_integrations_import_meteringimportid_measurements: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metering_import_id** | **str**| The ID of the metering import. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **meter** | **str**|  | [optional]
 **error_codes** | [**List[str]**](str.md)|  | [optional]
 **flex_search** | **str**|  | [optional]
 **include_only_ids** | [**List[str]**](str.md)|  | [optional]
 **exclude_ids** | [**List[str]**](str.md)|  | [optional]
 **page_size** | **int**|  | [optional]
 **name** | **str**|  | [optional]
 **id** | **int**|  | [optional]
 **order_by** | **str**| Order the measurements from the metering import by the available options from MeteringImportMeasurementsOrderBy | [optional]
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional]

### Return type

[**ApiResponseDTOOfImportedMeasurementsOverviewDTO**](ApiResponseDTOOfImportedMeasurementsOverviewDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_integrations_import_overviewcount**
> ApiResponseDTOOfMeteringImportOverviewCountDTO get_integrations_import_overviewcount(zf_tuuid, zf_ouuid, status=status, communication_type=communication_type, metering_format=metering_format, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)

Gets count information for metering import overview, grouped by their status.

Gets count information for metering import overview, grouped by their status.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_metering_import_overview_count_dto import ApiResponseDTOOfMeteringImportOverviewCountDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    status = ['status_example'] # List[str] |  (optional)
    communication_type = 'communication_type_example' # str |  (optional)
    metering_format = 'metering_format_example' # str |  (optional)
    created_start_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    created_end_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)

    try:
        # Gets count information for metering import overview, grouped by their status.
        api_response = api_instance.get_integrations_import_overviewcount(zf_tuuid, zf_ouuid, status=status, communication_type=communication_type, metering_format=metering_format, created_start_date_time=created_start_date_time, created_end_date_time=created_end_date_time, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)
        print("The response of DefaultApi->get_integrations_import_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_integrations_import_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **status** | [**List[str]**](str.md)|  | [optional]
 **communication_type** | **str**|  | [optional]
 **metering_format** | **str**|  | [optional]
 **created_start_date_time** | **datetime**|  | [optional]
 **created_end_date_time** | **datetime**|  | [optional]
 **flex_search** | **str**|  | [optional]
 **include_only_ids** | [**List[str]**](str.md)|  | [optional]
 **exclude_ids** | [**List[str]**](str.md)|  | [optional]
 **page_size** | **int**|  | [optional]

### Return type

[**ApiResponseDTOOfMeteringImportOverviewCountDTO**](ApiResponseDTOOfMeteringImportOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Overview count for metering imports. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_integrations_import_uuid**
> ApiResponseDTOOfMeteringImportDTO get_integrations_import_uuid(uuid, zf_tuuid, zf_ouuid)

Fetch the details of a metering import to know the status of the metering import and to know how many values were successfully parsed, validated, and processed.

Fetch the details of a metering import to know the status of the metering import and to know how many
values were successfully parsed, validated, and processed.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_metering_import_dto import ApiResponseDTOOfMeteringImportDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    uuid = 'uuid_example' # str | The ID of the metering import.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Fetch the details of a metering import to know the status of the metering import and to know how many values were successfully parsed, validated, and processed.
        api_response = api_instance.get_integrations_import_uuid(uuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_integrations_import_uuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_integrations_import_uuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **str**| The ID of the metering import. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfMeteringImportDTO**](ApiResponseDTOOfMeteringImportDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the details of the metering import in the type of MeteringImportDTO |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_measurements_extchuuid**
> ApiResponseDTOOfPagedResponseModelDTOOfMeasurementDTO get_measurements_extchuuid(extchuuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time, order_by=order_by, continuation_token=continuation_token)

Gets measurement values for a specific external channel identifier within a date range.

Gets measurement values for a specific external channel identifier within a date range.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_measurement_dto import ApiResponseDTOOfPagedResponseModelDTOOfMeasurementDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    extchuuid = 'extchuuid_example' # str | The external channel identifier.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | The start date and time for the query range. (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | The end date and time for the query range. (optional)
    order_by = 'order_by_example' # str | Field to order the results by. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)

    try:
        # Gets measurement values for a specific external channel identifier within a date range.
        api_response = api_instance.get_measurements_extchuuid(extchuuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time, order_by=order_by, continuation_token=continuation_token)
        print("The response of DefaultApi->get_measurements_extchuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_measurements_extchuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extchuuid** | **str**| The external channel identifier. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **start_date_time** | **datetime**| The start date and time for the query range. | [optional]
 **end_date_time** | **datetime**| The end date and time for the query range. | [optional]
 **order_by** | **str**| Field to order the results by. | [optional]
 **continuation_token** | **str**| Token for pagination. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfMeasurementDTO**](ApiResponseDTOOfPagedResponseModelDTOOfMeasurementDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged list of measurement values. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_measurements_extchuuid_flat**
> ApiResponseDTOOfListOfFlatMeasurementDTO get_measurements_extchuuid_flat(extchuuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time)

Gets flat (non-paged) measurement values for a specific external channel within a date range.

Gets flat (non-paged) measurement values for a specific external channel within a date range.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_list_of_flat_measurement_dto import ApiResponseDTOOfListOfFlatMeasurementDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    extchuuid = 'extchuuid_example' # str | The external channel identifier.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | The start date and time for the query range. (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | The end date and time for the query range. (optional)

    try:
        # Gets flat (non-paged) measurement values for a specific external channel within a date range.
        api_response = api_instance.get_measurements_extchuuid_flat(extchuuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time)
        print("The response of DefaultApi->get_measurements_extchuuid_flat:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_measurements_extchuuid_flat: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extchuuid** | **str**| The external channel identifier. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **start_date_time** | **datetime**| The start date and time for the query range. | [optional]
 **end_date_time** | **datetime**| The end date and time for the query range. | [optional]

### Return type

[**ApiResponseDTOOfListOfFlatMeasurementDTO**](ApiResponseDTOOfListOfFlatMeasurementDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of measurement values. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_measurements_m_meteruuid**
> ApiResponseDTOOfAdjacentMeasurementPairsDTO get_measurements_m_meteruuid(meteruuid, zf_tuuid, zf_ouuid, measurement_date=measurement_date, limit=limit, period_start_date_time=period_start_date_time)

Gets adjacent measurement pairs for a meter at a specific measurement date.

Gets adjacent measurement pairs for a meter at a specific measurement date.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_adjacent_measurement_pairs_dto import ApiResponseDTOOfAdjacentMeasurementPairsDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    meteruuid = 'meteruuid_example' # str | The meter identifier.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    measurement_date = '2013-10-20T19:20:30+01:00' # datetime | The reference measurement date. (optional)
    limit = 56 # int | The maximum number of pairs to return (defaults to 1). (optional)
    period_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Optional delta consumption period start; when set, next adjacent measurements are resolved from this date instead of measurementDate. (optional)

    try:
        # Gets adjacent measurement pairs for a meter at a specific measurement date.
        api_response = api_instance.get_measurements_m_meteruuid(meteruuid, zf_tuuid, zf_ouuid, measurement_date=measurement_date, limit=limit, period_start_date_time=period_start_date_time)
        print("The response of DefaultApi->get_measurements_m_meteruuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_measurements_m_meteruuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meteruuid** | **str**| The meter identifier. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **measurement_date** | **datetime**| The reference measurement date. | [optional]
 **limit** | **int**| The maximum number of pairs to return (defaults to 1). | [optional]
 **period_start_date_time** | **datetime**| Optional delta consumption period start; when set, next adjacent measurements are resolved from this date instead of measurementDate. | [optional]

### Return type

[**ApiResponseDTOOfAdjacentMeasurementPairsDTO**](ApiResponseDTOOfAdjacentMeasurementPairsDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Adjacent measurement pairs around the specified date. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meteringissues**
> ApiResponseDTOOfPagedResponseModelDTOOfMeteringIssueDTO get_meteringissues(zf_tuuid, zf_ouuid, meter_ids=meter_ids, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, statuses=statuses, property_group_ids=property_group_ids, meter_model_ids=meter_model_ids, errors=errors, reading_origins=reading_origins, data_provider_ids=data_provider_ids, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, limit=limit, name=name, id=id, order_by=order_by, continuation_token=continuation_token)

Retrieves a paged list of metering issues based on specified filter criteria.

Retrieves a paged list of metering issues based on specified filter criteria.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_metering_issue_dto import ApiResponseDTOOfPagedResponseModelDTOOfMeteringIssueDTO
from metering_client.models.measurement_reading_origin import MeasurementReadingOrigin
from metering_client.models.metering_issue_error import MeteringIssueError
from metering_client.models.metering_issue_status import MeteringIssueStatus
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    meter_ids = ['meter_ids_example'] # List[str] |  (optional)
    noticed_start_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    noticed_end_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    statuses = [metering_client.MeteringIssueStatus()] # List[MeteringIssueStatus] |  (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] |  (optional)
    meter_model_ids = ['meter_model_ids_example'] # List[str] |  (optional)
    errors = [metering_client.MeteringIssueError()] # List[MeteringIssueError] |  (optional)
    reading_origins = [metering_client.MeasurementReadingOrigin()] # List[MeasurementReadingOrigin] |  (optional)
    data_provider_ids = ['data_provider_ids_example'] # List[str] |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)
    limit = 56 # int | Maximum number of items to return. (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | Property name to order results by. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)

    try:
        # Retrieves a paged list of metering issues based on specified filter criteria.
        api_response = api_instance.get_meteringissues(zf_tuuid, zf_ouuid, meter_ids=meter_ids, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, statuses=statuses, property_group_ids=property_group_ids, meter_model_ids=meter_model_ids, errors=errors, reading_origins=reading_origins, data_provider_ids=data_provider_ids, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, limit=limit, name=name, id=id, order_by=order_by, continuation_token=continuation_token)
        print("The response of DefaultApi->get_meteringissues:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_meteringissues: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **meter_ids** | [**List[str]**](str.md)|  | [optional]
 **noticed_start_date_time** | **datetime**|  | [optional]
 **noticed_end_date_time** | **datetime**|  | [optional]
 **statuses** | [**List[MeteringIssueStatus]**](MeteringIssueStatus.md)|  | [optional]
 **property_group_ids** | [**List[str]**](str.md)|  | [optional]
 **meter_model_ids** | [**List[str]**](str.md)|  | [optional]
 **errors** | [**List[MeteringIssueError]**](MeteringIssueError.md)|  | [optional]
 **reading_origins** | [**List[MeasurementReadingOrigin]**](MeasurementReadingOrigin.md)|  | [optional]
 **data_provider_ids** | [**List[str]**](str.md)|  | [optional]
 **flex_search** | **str**|  | [optional]
 **include_only_ids** | [**List[str]**](str.md)|  | [optional]
 **exclude_ids** | [**List[str]**](str.md)|  | [optional]
 **page_size** | **int**|  | [optional]
 **limit** | **int**| Maximum number of items to return. | [optional]
 **name** | **str**|  | [optional]
 **id** | **int**|  | [optional]
 **order_by** | **str**| Property name to order results by. | [optional]
 **continuation_token** | **str**| Token for pagination. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfMeteringIssueDTO**](ApiResponseDTOOfPagedResponseModelDTOOfMeteringIssueDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meteringissues_getallbymeter**
> ApiResponseDTOOfPagedResponseModelDTOOfMeteringIssueDTO get_meteringissues_getallbymeter(zf_tuuid, zf_ouuid, servicelocation_ids=servicelocation_ids, property_group_ids=property_group_ids, meter_type_name=meter_type_name, meter_type_id=meter_type_id, received_metering_data_start=received_metering_data_start, received_metering_data_end=received_metering_data_end, next_expected_reading_date_start=next_expected_reading_date_start, next_expected_reading_date_end=next_expected_reading_date_end, parent_serial_number=parent_serial_number, filter_by_reading_frequency=filter_by_reading_frequency, reading_frequency_name=reading_frequency_name, reading_frequency_id=reading_frequency_id, customer_id=customer_id, meter_type_group=meter_type_group, meter_serial_numbers=meter_serial_numbers, model_ids=model_ids, meter_name=meter_name, show_deleted=show_deleted, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, name=name, id=id)

Retrieves a paged list of metering issues for a specific meter.

Retrieves a paged list of metering issues for a specific meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_metering_issue_dto import ApiResponseDTOOfPagedResponseModelDTOOfMeteringIssueDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    servicelocation_ids = ['servicelocation_ids_example'] # List[str] |  (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] |  (optional)
    meter_type_name = 'meter_type_name_example' # str |  (optional)
    meter_type_id = 56 # int |  (optional)
    received_metering_data_start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    received_metering_data_end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    next_expected_reading_date_start = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    next_expected_reading_date_end = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    parent_serial_number = 'parent_serial_number_example' # str |  (optional)
    filter_by_reading_frequency = True # bool |  (optional)
    reading_frequency_name = 'reading_frequency_name_example' # str |  (optional)
    reading_frequency_id = 56 # int |  (optional)
    customer_id = 'customer_id_example' # str |  (optional)
    meter_type_group = 'meter_type_group_example' # str |  (optional)
    meter_serial_numbers = ['meter_serial_numbers_example'] # List[str] |  (optional)
    model_ids = ['model_ids_example'] # List[str] |  (optional)
    meter_name = 'meter_name_example' # str |  (optional)
    show_deleted = True # bool |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)

    try:
        # Retrieves a paged list of metering issues for a specific meter.
        api_response = api_instance.get_meteringissues_getallbymeter(zf_tuuid, zf_ouuid, servicelocation_ids=servicelocation_ids, property_group_ids=property_group_ids, meter_type_name=meter_type_name, meter_type_id=meter_type_id, received_metering_data_start=received_metering_data_start, received_metering_data_end=received_metering_data_end, next_expected_reading_date_start=next_expected_reading_date_start, next_expected_reading_date_end=next_expected_reading_date_end, parent_serial_number=parent_serial_number, filter_by_reading_frequency=filter_by_reading_frequency, reading_frequency_name=reading_frequency_name, reading_frequency_id=reading_frequency_id, customer_id=customer_id, meter_type_group=meter_type_group, meter_serial_numbers=meter_serial_numbers, model_ids=model_ids, meter_name=meter_name, show_deleted=show_deleted, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, name=name, id=id)
        print("The response of DefaultApi->get_meteringissues_getallbymeter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_meteringissues_getallbymeter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **servicelocation_ids** | [**List[str]**](str.md)|  | [optional]
 **property_group_ids** | [**List[str]**](str.md)|  | [optional]
 **meter_type_name** | **str**|  | [optional]
 **meter_type_id** | **int**|  | [optional]
 **received_metering_data_start** | **datetime**|  | [optional]
 **received_metering_data_end** | **datetime**|  | [optional]
 **next_expected_reading_date_start** | **datetime**|  | [optional]
 **next_expected_reading_date_end** | **datetime**|  | [optional]
 **parent_serial_number** | **str**|  | [optional]
 **filter_by_reading_frequency** | **bool**|  | [optional]
 **reading_frequency_name** | **str**|  | [optional]
 **reading_frequency_id** | **int**|  | [optional]
 **customer_id** | **str**|  | [optional]
 **meter_type_group** | **str**|  | [optional]
 **meter_serial_numbers** | [**List[str]**](str.md)|  | [optional]
 **model_ids** | [**List[str]**](str.md)|  | [optional]
 **meter_name** | **str**|  | [optional]
 **show_deleted** | **bool**|  | [optional]
 **flex_search** | **str**|  | [optional]
 **include_only_ids** | [**List[str]**](str.md)|  | [optional]
 **exclude_ids** | [**List[str]**](str.md)|  | [optional]
 **page_size** | **int**|  | [optional]
 **name** | **str**|  | [optional]
 **id** | **int**|  | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfMeteringIssueDTO**](ApiResponseDTOOfPagedResponseModelDTOOfMeteringIssueDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meteringissues_grouped**
> ApiResponseDTOOfPagedResponseModelDTOOfGroupedMeteringIssuesDTO get_meteringissues_grouped(zf_tuuid, zf_ouuid, meter_ids=meter_ids, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, statuses=statuses, property_group_ids=property_group_ids, meter_model_ids=meter_model_ids, errors=errors, reading_origins=reading_origins, data_provider_ids=data_provider_ids, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, limit=limit, group_by=group_by, name=name, id=id, continuation_token=continuation_token)

Retrieves a paged list of metering issues grouped by a specified property.

Retrieves a paged list of metering issues grouped by a specified property.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_grouped_metering_issues_dto import ApiResponseDTOOfPagedResponseModelDTOOfGroupedMeteringIssuesDTO
from metering_client.models.measurement_reading_origin import MeasurementReadingOrigin
from metering_client.models.metering_issue_error import MeteringIssueError
from metering_client.models.metering_issue_status import MeteringIssueStatus
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    meter_ids = ['meter_ids_example'] # List[str] |  (optional)
    noticed_start_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    noticed_end_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    statuses = [metering_client.MeteringIssueStatus()] # List[MeteringIssueStatus] |  (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] |  (optional)
    meter_model_ids = ['meter_model_ids_example'] # List[str] |  (optional)
    errors = [metering_client.MeteringIssueError()] # List[MeteringIssueError] |  (optional)
    reading_origins = [metering_client.MeasurementReadingOrigin()] # List[MeasurementReadingOrigin] |  (optional)
    data_provider_ids = ['data_provider_ids_example'] # List[str] |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)
    limit = 56 # int | Maximum number of items to return. (optional)
    group_by = 'group_by_example' # str | Property name to group results by. (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)

    try:
        # Retrieves a paged list of metering issues grouped by a specified property.
        api_response = api_instance.get_meteringissues_grouped(zf_tuuid, zf_ouuid, meter_ids=meter_ids, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, statuses=statuses, property_group_ids=property_group_ids, meter_model_ids=meter_model_ids, errors=errors, reading_origins=reading_origins, data_provider_ids=data_provider_ids, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size, limit=limit, group_by=group_by, name=name, id=id, continuation_token=continuation_token)
        print("The response of DefaultApi->get_meteringissues_grouped:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_meteringissues_grouped: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **meter_ids** | [**List[str]**](str.md)|  | [optional]
 **noticed_start_date_time** | **datetime**|  | [optional]
 **noticed_end_date_time** | **datetime**|  | [optional]
 **statuses** | [**List[MeteringIssueStatus]**](MeteringIssueStatus.md)|  | [optional]
 **property_group_ids** | [**List[str]**](str.md)|  | [optional]
 **meter_model_ids** | [**List[str]**](str.md)|  | [optional]
 **errors** | [**List[MeteringIssueError]**](MeteringIssueError.md)|  | [optional]
 **reading_origins** | [**List[MeasurementReadingOrigin]**](MeasurementReadingOrigin.md)|  | [optional]
 **data_provider_ids** | [**List[str]**](str.md)|  | [optional]
 **flex_search** | **str**|  | [optional]
 **include_only_ids** | [**List[str]**](str.md)|  | [optional]
 **exclude_ids** | [**List[str]**](str.md)|  | [optional]
 **page_size** | **int**|  | [optional]
 **limit** | **int**| Maximum number of items to return. | [optional]
 **group_by** | **str**| Property name to group results by. | [optional]
 **name** | **str**|  | [optional]
 **id** | **int**|  | [optional]
 **continuation_token** | **str**| Token for pagination. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfGroupedMeteringIssuesDTO**](ApiResponseDTOOfPagedResponseModelDTOOfGroupedMeteringIssuesDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meteringissues_meters**
> ApiResponseDTOOfPagedResponseModelDTOOfMeterReference get_meteringissues_meters(zf_tuuid, zf_ouuid, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, property_group_ids=property_group_ids, name=name, id=id, flex_search=flex_search, continuation_token=continuation_token)

Retrieves a paged list of meters that have metering issues.

Retrieves a paged list of meters that have metering issues.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_meter_reference import ApiResponseDTOOfPagedResponseModelDTOOfMeterReference
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    noticed_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Start date and time when issues were noticed. (optional)
    noticed_end_date_time = '2013-10-20T19:20:30+01:00' # datetime | End date and time when issues were noticed. (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] | Array of property group IDs to filter by. (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    flex_search = 'flex_search_example' # str | Flexible search term. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)

    try:
        # Retrieves a paged list of meters that have metering issues.
        api_response = api_instance.get_meteringissues_meters(zf_tuuid, zf_ouuid, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, property_group_ids=property_group_ids, name=name, id=id, flex_search=flex_search, continuation_token=continuation_token)
        print("The response of DefaultApi->get_meteringissues_meters:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_meteringissues_meters: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **noticed_start_date_time** | **datetime**| Start date and time when issues were noticed. | [optional]
 **noticed_end_date_time** | **datetime**| End date and time when issues were noticed. | [optional]
 **property_group_ids** | [**List[str]**](str.md)| Array of property group IDs to filter by. | [optional]
 **name** | **str**|  | [optional]
 **id** | **int**|  | [optional]
 **flex_search** | **str**| Flexible search term. | [optional]
 **continuation_token** | **str**| Token for pagination. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfMeterReference**](ApiResponseDTOOfPagedResponseModelDTOOfMeterReference.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meteringissues_overviewcount**
> ApiResponseDTOOfMeteringIssueOverviewCountDTO get_meteringissues_overviewcount(zf_tuuid, zf_ouuid, meter_ids=meter_ids, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, statuses=statuses, property_group_ids=property_group_ids, meter_model_ids=meter_model_ids, errors=errors, reading_origins=reading_origins, data_provider_ids=data_provider_ids, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)

Retrieves count statistics for metering issues based on specified filter criteria.

Retrieves count statistics for metering issues based on specified filter criteria.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_metering_issue_overview_count_dto import ApiResponseDTOOfMeteringIssueOverviewCountDTO
from metering_client.models.measurement_reading_origin import MeasurementReadingOrigin
from metering_client.models.metering_issue_error import MeteringIssueError
from metering_client.models.metering_issue_status import MeteringIssueStatus
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    meter_ids = ['meter_ids_example'] # List[str] |  (optional)
    noticed_start_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    noticed_end_date_time = '2013-10-20T19:20:30+01:00' # datetime |  (optional)
    statuses = [metering_client.MeteringIssueStatus()] # List[MeteringIssueStatus] |  (optional)
    property_group_ids = ['property_group_ids_example'] # List[str] |  (optional)
    meter_model_ids = ['meter_model_ids_example'] # List[str] |  (optional)
    errors = [metering_client.MeteringIssueError()] # List[MeteringIssueError] |  (optional)
    reading_origins = [metering_client.MeasurementReadingOrigin()] # List[MeasurementReadingOrigin] |  (optional)
    data_provider_ids = ['data_provider_ids_example'] # List[str] |  (optional)
    flex_search = 'flex_search_example' # str |  (optional)
    include_only_ids = ['include_only_ids_example'] # List[str] |  (optional)
    exclude_ids = ['exclude_ids_example'] # List[str] |  (optional)
    page_size = 56 # int |  (optional)

    try:
        # Retrieves count statistics for metering issues based on specified filter criteria.
        api_response = api_instance.get_meteringissues_overviewcount(zf_tuuid, zf_ouuid, meter_ids=meter_ids, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, statuses=statuses, property_group_ids=property_group_ids, meter_model_ids=meter_model_ids, errors=errors, reading_origins=reading_origins, data_provider_ids=data_provider_ids, flex_search=flex_search, include_only_ids=include_only_ids, exclude_ids=exclude_ids, page_size=page_size)
        print("The response of DefaultApi->get_meteringissues_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_meteringissues_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **meter_ids** | [**List[str]**](str.md)|  | [optional]
 **noticed_start_date_time** | **datetime**|  | [optional]
 **noticed_end_date_time** | **datetime**|  | [optional]
 **statuses** | [**List[MeteringIssueStatus]**](MeteringIssueStatus.md)|  | [optional]
 **property_group_ids** | [**List[str]**](str.md)|  | [optional]
 **meter_model_ids** | [**List[str]**](str.md)|  | [optional]
 **errors** | [**List[MeteringIssueError]**](MeteringIssueError.md)|  | [optional]
 **reading_origins** | [**List[MeasurementReadingOrigin]**](MeasurementReadingOrigin.md)|  | [optional]
 **data_provider_ids** | [**List[str]**](str.md)|  | [optional]
 **flex_search** | **str**|  | [optional]
 **include_only_ids** | [**List[str]**](str.md)|  | [optional]
 **exclude_ids** | [**List[str]**](str.md)|  | [optional]
 **page_size** | **int**|  | [optional]

### Return type

[**ApiResponseDTOOfMeteringIssueOverviewCountDTO**](ApiResponseDTOOfMeteringIssueOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meteringissues_propertygroups**
> ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupReference get_meteringissues_propertygroups(zf_tuuid, zf_ouuid, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, meter_ids=meter_ids, name=name, id=id, flex_search=flex_search, continuation_token=continuation_token)

Retrieves a paged list of property groups that have metering issues.

Retrieves a paged list of property groups that have metering issues.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_property_group_reference import ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupReference
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    noticed_start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Start date and time when issues were noticed. (optional)
    noticed_end_date_time = '2013-10-20T19:20:30+01:00' # datetime | End date and time when issues were noticed. (optional)
    meter_ids = ['meter_ids_example'] # List[str] | Array of meter IDs to filter by. (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    flex_search = 'flex_search_example' # str | Flexible search term. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)

    try:
        # Retrieves a paged list of property groups that have metering issues.
        api_response = api_instance.get_meteringissues_propertygroups(zf_tuuid, zf_ouuid, noticed_start_date_time=noticed_start_date_time, noticed_end_date_time=noticed_end_date_time, meter_ids=meter_ids, name=name, id=id, flex_search=flex_search, continuation_token=continuation_token)
        print("The response of DefaultApi->get_meteringissues_propertygroups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_meteringissues_propertygroups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **noticed_start_date_time** | **datetime**| Start date and time when issues were noticed. | [optional]
 **noticed_end_date_time** | **datetime**| End date and time when issues were noticed. | [optional]
 **meter_ids** | [**List[str]**](str.md)| Array of meter IDs to filter by. | [optional]
 **name** | **str**|  | [optional]
 **id** | **int**|  | [optional]
 **flex_search** | **str**| Flexible search term. | [optional]
 **continuation_token** | **str**| Token for pagination. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupReference**](ApiResponseDTOOfPagedResponseModelDTOOfPropertyGroupReference.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meteringprovideraccounts_id**
> ApiResponseDTOOfMeteringProviderAccountDTO get_meteringprovideraccounts_id(id, zf_tuuid, zf_ouuid)

Retrieves a single metering provider account by its unique identifier.

Retrieves a single metering provider account by its unique identifier.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_metering_provider_account_dto import ApiResponseDTOOfMeteringProviderAccountDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    id = 'id_example' # str | The unique identifier of the metering provider account.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Retrieves a single metering provider account by its unique identifier.
        api_response = api_instance.get_meteringprovideraccounts_id(id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_meteringprovideraccounts_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_meteringprovideraccounts_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the metering provider account. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfMeteringProviderAccountDTO**](ApiResponseDTOOfMeteringProviderAccountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_meters**
> ApiResponseDTOOfListOfstring get_meters(zf_tuuid, zf_ouuid, error_type=error_type, mute_from_with_numeric_value=mute_from_with_numeric_value, mute_until_with_numeric_value=mute_until_with_numeric_value, message=message, time_period=time_period, user_id=user_id)

Retrieves meters for which a muting rule with the specified parameters applies

Retrieves meters for which a muting rule with the specified parameters applies

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_list_ofstring import ApiResponseDTOOfListOfstring
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    error_type = 'error_type_example' # str | Type of error to filter by (optional)
    mute_from_with_numeric_value = 56 # int | Starting numeric value for muting (optional)
    mute_until_with_numeric_value = 56 # int | Ending numeric value for muting (optional)
    message = 'message_example' # str | Message text to filter by (optional)
    time_period = 'time_period_example' # str | Time period for the muting rule (optional)
    user_id = 'user_id_example' # str | User ID associated with the muting rule (optional)

    try:
        # Retrieves meters for which a muting rule with the specified parameters applies
        api_response = api_instance.get_meters(zf_tuuid, zf_ouuid, error_type=error_type, mute_from_with_numeric_value=mute_from_with_numeric_value, mute_until_with_numeric_value=mute_until_with_numeric_value, message=message, time_period=time_period, user_id=user_id)
        print("The response of DefaultApi->get_meters:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_meters: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **error_type** | **str**| Type of error to filter by | [optional]
 **mute_from_with_numeric_value** | **int**| Starting numeric value for muting | [optional]
 **mute_until_with_numeric_value** | **int**| Ending numeric value for muting | [optional]
 **message** | **str**| Message text to filter by | [optional]
 **time_period** | **str**| Time period for the muting rule | [optional]
 **user_id** | **str**| User ID associated with the muting rule | [optional]

### Return type

[**ApiResponseDTOOfListOfstring**](ApiResponseDTOOfListOfstring.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_migrationadmin_latest_version**
> ApiResponseDTOOfMigrationLatestVersionDTO get_migrationadmin_latest_version()

/MigrationAdmin/latest-version - GET

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_migration_latest_version_dto import ApiResponseDTOOfMigrationLatestVersionDTO
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
    api_instance = metering_client.DefaultApi(api_client)

    try:
        # /MigrationAdmin/latest-version - GET
        api_response = api_instance.get_migrationadmin_latest_version()
        print("The response of DefaultApi->get_migrationadmin_latest_version:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_migrationadmin_latest_version: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ApiResponseDTOOfMigrationLatestVersionDTO**](ApiResponseDTOOfMigrationLatestVersionDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_muting_rule**
> ApiResponseDTOOfMutingRuleDTO get_muting_rule(muting_rule_id, zf_tuuid, zf_ouuid)

Retrieves a specific muting rule by its ID

Retrieves a specific muting rule by its ID

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_muting_rule_dto import ApiResponseDTOOfMutingRuleDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    muting_rule_id = 'muting_rule_id_example' # str | The ID of the muting rule to retrieve
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Retrieves a specific muting rule by its ID
        api_response = api_instance.get_muting_rule(muting_rule_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_muting_rule:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_muting_rule: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **muting_rule_id** | **str**| The ID of the muting rule to retrieve |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfMutingRuleDTO**](ApiResponseDTOOfMutingRuleDTO.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_muting_rules_by_meter**
> ApiResponseDTOOfPagedResponseModelDTOOfMutingRuleDTO get_muting_rules_by_meter(meter_id, zf_tuuid, zf_ouuid, include_active=include_active, include_expired=include_expired, name=name, id=id, limit=limit, continuation_token=continuation_token)

Retrieves muting rules for a specific meter

Retrieves muting rules for a specific meter

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_muting_rule_dto import ApiResponseDTOOfPagedResponseModelDTOOfMutingRuleDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    meter_id = 'meter_id_example' # str | ID of the meter to get rules for
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    include_active = True # bool | Whether to include active muting rules (optional)
    include_expired = True # bool | Whether to include expired muting rules (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    limit = 56 # int | Maximum number of results to return (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination (optional)

    try:
        # Retrieves muting rules for a specific meter
        api_response = api_instance.get_muting_rules_by_meter(meter_id, zf_tuuid, zf_ouuid, include_active=include_active, include_expired=include_expired, name=name, id=id, limit=limit, continuation_token=continuation_token)
        print("The response of DefaultApi->get_muting_rules_by_meter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_muting_rules_by_meter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meter_id** | **str**| ID of the meter to get rules for |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **include_active** | **bool**| Whether to include active muting rules | [optional]
 **include_expired** | **bool**| Whether to include expired muting rules | [optional]
 **name** | **str**|  | [optional]
 **id** | **int**|  | [optional]
 **limit** | **int**| Maximum number of results to return | [optional]
 **continuation_token** | **str**| Token for pagination | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfMutingRuleDTO**](ApiResponseDTOOfPagedResponseModelDTOOfMutingRuleDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the list of muting rules |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_overview_count**
> ApiResponseDTOOfMutingRuleOverviewCountDTO get_overview_count(meter_id, zf_tuuid, zf_ouuid)

Gets an overview count of muting rules for a specific meter

Gets an overview count of muting rules for a specific meter

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_muting_rule_overview_count_dto import ApiResponseDTOOfMutingRuleOverviewCountDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    meter_id = 'meter_id_example' # str | ID of the meter to get the count for
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Gets an overview count of muting rules for a specific meter
        api_response = api_instance.get_overview_count(meter_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_overview_count:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_overview_count: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **meter_id** | **str**| ID of the meter to get the count for |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfMutingRuleOverviewCountDTO**](ApiResponseDTOOfMutingRuleOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Returns the overview count |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_productusage**
> ApiResponseDTOOfMeteringProductUsageResponseDTO get_productusage(zf_tuuid)

Gets the metering product usage snapshot with integrations per organization.

Gets the metering product usage snapshot with integrations per organization.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_metering_product_usage_response_dto import ApiResponseDTOOfMeteringProductUsageResponseDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID

    try:
        # Gets the metering product usage snapshot with integrations per organization.
        api_response = api_instance.get_productusage(zf_tuuid)
        print("The response of DefaultApi->get_productusage:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_productusage: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |

### Return type

[**ApiResponseDTOOfMeteringProductUsageResponseDTO**](ApiResponseDTOOfMeteringProductUsageResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The metering product usage snapshot response. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_related_muting_rules**
> ApiResponseDTOOfListOfMutingRuleDTO get_related_muting_rules(zf_tuuid, zf_ouuid, error_type=error_type, mute_from_with_numeric_value=mute_from_with_numeric_value, message=message, time_period=time_period, meter_ids=meter_ids)

Retrieves muting rules related to specific criteria

Retrieves muting rules related to specific criteria

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_list_of_muting_rule_dto import ApiResponseDTOOfListOfMutingRuleDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    error_type = 'error_type_example' # str | Type of error to filter by (optional)
    mute_from_with_numeric_value = 56 # int | Starting numeric value for muting (optional)
    message = 'message_example' # str | Message text to filter by (optional)
    time_period = 'time_period_example' # str | Time period for the muting rule (optional)
    meter_ids = ['meter_ids_example'] # List[str] | List of meter IDs to filter by (optional)

    try:
        # Retrieves muting rules related to specific criteria
        api_response = api_instance.get_related_muting_rules(zf_tuuid, zf_ouuid, error_type=error_type, mute_from_with_numeric_value=mute_from_with_numeric_value, message=message, time_period=time_period, meter_ids=meter_ids)
        print("The response of DefaultApi->get_related_muting_rules:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_related_muting_rules: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **error_type** | **str**| Type of error to filter by | [optional]
 **mute_from_with_numeric_value** | **int**| Starting numeric value for muting | [optional]
 **message** | **str**| Message text to filter by | [optional]
 **time_period** | **str**| Time period for the muting rule | [optional]
 **meter_ids** | [**List[str]**](str.md)| List of meter IDs to filter by | [optional]

### Return type

[**ApiResponseDTOOfListOfMutingRuleDTO**](ApiResponseDTOOfListOfMutingRuleDTO.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_serviceconsumptions_sluuid**
> ApiResponseDTOOfPagedResponseModelDTOOfFlatPagedServiceConsumptionDTO get_serviceconsumptions_sluuid(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, start_date_time=start_date_time, end_date_time=end_date_time, order_by=order_by, continuation_token=continuation_token)

Gets paginated consumption data for a service location

Gets paginated consumption data for a service location

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_flat_paged_service_consumption_dto import ApiResponseDTOOfPagedResponseModelDTOOfFlatPagedServiceConsumptionDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    sluuid = 'sluuid_example' # str | Service location UUID
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    utility_type = 'utility_type_example' # str | Type of utility (optional)
    unit_of_measure = 'unit_of_measure_example' # str | Unit of measure (optional)
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Start date and time for the data range (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | End date and time for the data range (optional)
    order_by = 'order_by_example' # str | Order by criteria (optional)
    continuation_token = 'continuation_token_example' # str | Token for paged results continuation (optional)

    try:
        # Gets paginated consumption data for a service location
        api_response = api_instance.get_serviceconsumptions_sluuid(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, start_date_time=start_date_time, end_date_time=end_date_time, order_by=order_by, continuation_token=continuation_token)
        print("The response of DefaultApi->get_serviceconsumptions_sluuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_serviceconsumptions_sluuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sluuid** | **str**| Service location UUID |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **utility_type** | **str**| Type of utility | [optional]
 **unit_of_measure** | **str**| Unit of measure | [optional]
 **start_date_time** | **datetime**| Start date and time for the data range | [optional]
 **end_date_time** | **datetime**| End date and time for the data range | [optional]
 **order_by** | **str**| Order by criteria | [optional]
 **continuation_token** | **str**| Token for paged results continuation | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfFlatPagedServiceConsumptionDTO**](ApiResponseDTOOfPagedResponseModelDTOOfFlatPagedServiceConsumptionDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Paged list of service consumption data |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_serviceconsumptions_sluuid_flat**
> ApiResponseDTOOfListOfFlatServiceConsumptionDTO get_serviceconsumptions_sluuid_flat(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, group_by_period=group_by_period, start_date_time=start_date_time, end_date_time=end_date_time)

Gets flat consumption data for a service location with optional grouping by period

Gets flat consumption data for a service location with optional grouping by period

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_list_of_flat_service_consumption_dto import ApiResponseDTOOfListOfFlatServiceConsumptionDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    sluuid = 'sluuid_example' # str | Service location UUID
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    utility_type = 'utility_type_example' # str | Type of utility (optional)
    unit_of_measure = 'unit_of_measure_example' # str | Unit of measure (optional)
    group_by_period = 'group_by_period_example' # str | Period to group data by (optional)
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Start date and time for the data range (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | End date and time for the data range (optional)

    try:
        # Gets flat consumption data for a service location with optional grouping by period
        api_response = api_instance.get_serviceconsumptions_sluuid_flat(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, group_by_period=group_by_period, start_date_time=start_date_time, end_date_time=end_date_time)
        print("The response of DefaultApi->get_serviceconsumptions_sluuid_flat:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_serviceconsumptions_sluuid_flat: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sluuid** | **str**| Service location UUID |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **utility_type** | **str**| Type of utility | [optional]
 **unit_of_measure** | **str**| Unit of measure | [optional]
 **group_by_period** | **str**| Period to group data by | [optional]
 **start_date_time** | **datetime**| Start date and time for the data range | [optional]
 **end_date_time** | **datetime**| End date and time for the data range | [optional]

### Return type

[**ApiResponseDTOOfListOfFlatServiceConsumptionDTO**](ApiResponseDTOOfListOfFlatServiceConsumptionDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of flat service consumption data |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_serviceconsumptions_sluuid_raw**
> ApiResponseDTOOfPagedResponseModelDTOOfServiceConsumptionDTO get_serviceconsumptions_sluuid_raw(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, start_date_time=start_date_time, end_date_time=end_date_time, order_by=order_by, continuation_token=continuation_token)

Gets raw consumption data for a service location

Gets raw consumption data for a service location

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_service_consumption_dto import ApiResponseDTOOfPagedResponseModelDTOOfServiceConsumptionDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    sluuid = 'sluuid_example' # str | Service location UUID
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    utility_type = 'utility_type_example' # str | Type of utility (optional)
    unit_of_measure = 'unit_of_measure_example' # str | Unit of measure (optional)
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | Start date and time for the data range (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | End date and time for the data range (optional)
    order_by = 'order_by_example' # str | Order by criteria (optional)
    continuation_token = 'continuation_token_example' # str | Token for paged results continuation (optional)

    try:
        # Gets raw consumption data for a service location
        api_response = api_instance.get_serviceconsumptions_sluuid_raw(sluuid, zf_tuuid, zf_ouuid, utility_type=utility_type, unit_of_measure=unit_of_measure, start_date_time=start_date_time, end_date_time=end_date_time, order_by=order_by, continuation_token=continuation_token)
        print("The response of DefaultApi->get_serviceconsumptions_sluuid_raw:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_serviceconsumptions_sluuid_raw: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sluuid** | **str**| Service location UUID |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **utility_type** | **str**| Type of utility | [optional]
 **unit_of_measure** | **str**| Unit of measure | [optional]
 **start_date_time** | **datetime**| Start date and time for the data range | [optional]
 **end_date_time** | **datetime**| End date and time for the data range | [optional]
 **order_by** | **str**| Order by criteria | [optional]
 **continuation_token** | **str**| Token for paged results continuation | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfServiceConsumptionDTO**](ApiResponseDTOOfPagedResponseModelDTOOfServiceConsumptionDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Paged list of raw service consumption data |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_serviceconsumptions_sluuid_types**
> ApiResponseDTOOfListOfConsumptionTypeDTO get_serviceconsumptions_sluuid_types(sluuid, zf_tuuid, zf_ouuid)

Gets available consumption types for a service location

Gets available consumption types for a service location

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_list_of_consumption_type_dto import ApiResponseDTOOfListOfConsumptionTypeDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    sluuid = 'sluuid_example' # str | Service location UUID
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Gets available consumption types for a service location
        api_response = api_instance.get_serviceconsumptions_sluuid_types(sluuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_serviceconsumptions_sluuid_types:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_serviceconsumptions_sluuid_types: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sluuid** | **str**| Service location UUID |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfListOfConsumptionTypeDTO**](ApiResponseDTOOfListOfConsumptionTypeDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of consumption types available for the service location |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_integrations_import_markprocessed**
> ApiResponseDTO patch_integrations_import_markprocessed(zf_tuuid, zf_ouuid, bulk_mark_metering_imports_as_processed_request=bulk_mark_metering_imports_as_processed_request)

Marks requested imports as processed, if the current status of the import allows it

Marks requested imports as processed, if the current status of the import allows it

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto import ApiResponseDTO
from metering_client.models.bulk_mark_metering_imports_as_processed_request import BulkMarkMeteringImportsAsProcessedRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_mark_metering_imports_as_processed_request = {"onlyValidate":true,"queryParams":{"status":["string"],"communicationType":"string","meteringFormat":"string","createdStartDateTime":"string","createdEndDateTime":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkMarkMeteringImportsAsProcessedRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Marks requested imports as processed, if the current status of the import allows it
        api_response = api_instance.patch_integrations_import_markprocessed(zf_tuuid, zf_ouuid, bulk_mark_metering_imports_as_processed_request=bulk_mark_metering_imports_as_processed_request)
        print("The response of DefaultApi->patch_integrations_import_markprocessed:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->patch_integrations_import_markprocessed: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **bulk_mark_metering_imports_as_processed_request** | [**BulkMarkMeteringImportsAsProcessedRequest**](BulkMarkMeteringImportsAsProcessedRequest.md)| Propagates notification that operations should be canceled. | [optional]

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
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_integrations_import_validate**
> ApiResponseDTO patch_integrations_import_validate(zf_tuuid, zf_ouuid, bulk_validate_metering_import_request=bulk_validate_metering_import_request)

Attempts to revalidate multiple imports

Attempts to revalidate multiple imports

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto import ApiResponseDTO
from metering_client.models.bulk_validate_metering_import_request import BulkValidateMeteringImportRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_validate_metering_import_request = {"onlyValidate":true,"queryParams":{"status":["string"],"communicationType":"string","meteringFormat":"string","createdStartDateTime":"string","createdEndDateTime":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkValidateMeteringImportRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Attempts to revalidate multiple imports
        api_response = api_instance.patch_integrations_import_validate(zf_tuuid, zf_ouuid, bulk_validate_metering_import_request=bulk_validate_metering_import_request)
        print("The response of DefaultApi->patch_integrations_import_validate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->patch_integrations_import_validate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **bulk_validate_metering_import_request** | [**BulkValidateMeteringImportRequest**](BulkValidateMeteringImportRequest.md)| Propagates notification that operations should be canceled. | [optional]

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
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_integrations_import_validate_meteringimportid**
> ApiResponseDTO patch_integrations_import_validate_meteringimportid(metering_import_id, zf_tuuid, zf_ouuid)

Attempts to revalidate a specified import

Attempts to revalidate a specified import

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto import ApiResponseDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    metering_import_id = 'metering_import_id_example' # str | Unique identifier of the import
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Attempts to revalidate a specified import
        api_response = api_instance.patch_integrations_import_validate_meteringimportid(metering_import_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->patch_integrations_import_validate_meteringimportid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->patch_integrations_import_validate_meteringimportid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metering_import_id** | **str**| Unique identifier of the import |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_consumptions_export_sum**
> ApiResponseDTOOfListOfAggregatedConsumptionsByMeterDTO post_consumptions_export_sum(zf_tuuid, zf_ouuid, export_consumptions_for_meters_request=export_consumptions_for_meters_request)

Calculates and exports the sum of consumption values for a list of meters.

Calculates and exports the sum of consumption values for a list of meters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_list_of_aggregated_consumptions_by_meter_dto import ApiResponseDTOOfListOfAggregatedConsumptionsByMeterDTO
from metering_client.models.export_consumptions_for_meters_request import ExportConsumptionsForMetersRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    export_consumptions_for_meters_request = {"queryParams":{"servicelocationIds":["string"],"propertyGroupIds":["string"],"meterType":"individual","receivedMeteringDataStart":"string","receivedMeteringDataEnd":"string","nextExpectedReadingDateStart":"string","nextExpectedReadingDateEnd":"string","parentSerialNumber":"string","filterByReadingFrequency":true,"readingFrequency":"hourly","customerId":"string","meterTypeGroup":"string","meterSerialNumbers":["string"],"modelIds":["string"],"meterName":"string","showDeleted":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","meterIds":["string"],"startDateTime":"string","endDateTime":"string","onlyValidate":true} # ExportConsumptionsForMetersRequest | A token that can be used to request cancellation of the operation. (optional)

    try:
        # Calculates and exports the sum of consumption values for a list of meters.
        api_response = api_instance.post_consumptions_export_sum(zf_tuuid, zf_ouuid, export_consumptions_for_meters_request=export_consumptions_for_meters_request)
        print("The response of DefaultApi->post_consumptions_export_sum:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_consumptions_export_sum: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **export_consumptions_for_meters_request** | [**ExportConsumptionsForMetersRequest**](ExportConsumptionsForMetersRequest.md)| A token that can be used to request cancellation of the operation. | [optional]

### Return type

[**ApiResponseDTOOfListOfAggregatedConsumptionsByMeterDTO**](ApiResponseDTOOfListOfAggregatedConsumptionsByMeterDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of aggregated consumption values grouped by meter. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_consumptions_extchuuid_recalculate**
> ApiResponseDTOOfboolean post_consumptions_extchuuid_recalculate(extchuuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time)

Recalculates consumption values for a specific channel within a given date range.

Recalculates consumption values for a specific channel within a given date range.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = metering_client.DefaultApi(api_client)
    extchuuid = 'extchuuid_example' # str | The external channel UUID to recalculate consumption data for.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    start_date_time = '2013-10-20T19:20:30+01:00' # datetime | The start date and time for the consumption data range to recalculate. (optional)
    end_date_time = '2013-10-20T19:20:30+01:00' # datetime | The end date and time for the consumption data range to recalculate. (optional)

    try:
        # Recalculates consumption values for a specific channel within a given date range.
        api_response = api_instance.post_consumptions_extchuuid_recalculate(extchuuid, zf_tuuid, zf_ouuid, start_date_time=start_date_time, end_date_time=end_date_time)
        print("The response of DefaultApi->post_consumptions_extchuuid_recalculate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_consumptions_extchuuid_recalculate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **extchuuid** | **str**| The external channel UUID to recalculate consumption data for. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **start_date_time** | **datetime**| The start date and time for the consumption data range to recalculate. | [optional]
 **end_date_time** | **datetime**| The end date and time for the consumption data range to recalculate. | [optional]

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A boolean indicating whether the recalculation was successful. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integrations_import**
> ApiResponseDTOOfMeteringImportDTO post_integrations_import(zf_tuuid, zf_ouuid)

Upload measurements for specific file formats.

Upload measurements for specific file formats.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_metering_import_dto import ApiResponseDTOOfMeteringImportDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Upload measurements for specific file formats.
        api_response = api_instance.post_integrations_import(zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->post_integrations_import:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_integrations_import: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfMeteringImportDTO**](ApiResponseDTOOfMeteringImportDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integrations_import_download**
> FileStreamResult post_integrations_import_download(zf_tuuid, zf_ouuid, download_original_metering_imports_request=download_original_metering_imports_request)

Downloads the original files for all imports that are requested

Downloads the original files for all imports that are requested

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.download_original_metering_imports_request import DownloadOriginalMeteringImportsRequest
from metering_client.models.file_stream_result import FileStreamResult
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    download_original_metering_imports_request = {"queryParams":{"status":["string"],"communicationType":"string","meteringFormat":"string","createdStartDateTime":"string","createdEndDateTime":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # DownloadOriginalMeteringImportsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Downloads the original files for all imports that are requested
        api_response = api_instance.post_integrations_import_download(zf_tuuid, zf_ouuid, download_original_metering_imports_request=download_original_metering_imports_request)
        print("The response of DefaultApi->post_integrations_import_download:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_integrations_import_download: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **download_original_metering_imports_request** | [**DownloadOriginalMeteringImportsRequest**](DownloadOriginalMeteringImportsRequest.md)| Propagates notification that operations should be canceled. | [optional]

### Return type

[**FileStreamResult**](FileStreamResult.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integrations_import_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfMeteringImportDTO post_integrations_import_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_metering_imports_query_params=get_metering_imports_query_params)

Gets a paged list of metering imports based on the specified filters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

Gets a paged list of metering imports based on the specified filters.
This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_metering_import_dto import ApiResponseDTOOfPagedResponseModelDTOOfMeteringImportDTO
from metering_client.models.get_metering_imports_query_params import GetMeteringImportsQueryParams
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | Field to order the results by. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)
    get_metering_imports_query_params = {"status":["string"],"communicationType":"string","meteringFormat":"string","createdStartDateTime":"string","createdEndDateTime":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetMeteringImportsQueryParams | Cancellation token. (optional)

    try:
        # Gets a paged list of metering imports based on the specified filters. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
        api_response = api_instance.post_integrations_import_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_metering_imports_query_params=get_metering_imports_query_params)
        print("The response of DefaultApi->post_integrations_import_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_integrations_import_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **name** | **str**|  | [optional]
 **id** | **int**|  | [optional]
 **order_by** | **str**| Field to order the results by. | [optional]
 **continuation_token** | **str**| Token for pagination. | [optional]
 **get_metering_imports_query_params** | [**GetMeteringImportsQueryParams**](GetMeteringImportsQueryParams.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfMeteringImportDTO**](ApiResponseDTOOfPagedResponseModelDTOOfMeteringImportDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged list of metering imports. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integrations_import_filter_overviewcount**
> ApiResponseDTOOfMeteringImportOverviewCountDTO post_integrations_import_filter_overviewcount(zf_tuuid, zf_ouuid, get_metering_imports_query_params=get_metering_imports_query_params)

Gets count information for metering import overview, grouped by their status. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

Gets count information for metering import overview, grouped by their status.
This endpoint accepts query params in the request body to avoid long URLs for large ID selections.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_metering_import_overview_count_dto import ApiResponseDTOOfMeteringImportOverviewCountDTO
from metering_client.models.get_metering_imports_query_params import GetMeteringImportsQueryParams
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    get_metering_imports_query_params = {"status":["string"],"communicationType":"string","meteringFormat":"string","createdStartDateTime":"string","createdEndDateTime":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetMeteringImportsQueryParams | Cancellation token. (optional)

    try:
        # Gets count information for metering import overview, grouped by their status. This endpoint accepts query params in the request body to avoid long URLs for large ID selections.
        api_response = api_instance.post_integrations_import_filter_overviewcount(zf_tuuid, zf_ouuid, get_metering_imports_query_params=get_metering_imports_query_params)
        print("The response of DefaultApi->post_integrations_import_filter_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_integrations_import_filter_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **get_metering_imports_query_params** | [**GetMeteringImportsQueryParams**](GetMeteringImportsQueryParams.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfMeteringImportOverviewCountDTO**](ApiResponseDTOOfMeteringImportOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Overview count for metering imports. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integrations_import_measurements**
> ApiResponseDTOOfMeteringImportDTO post_integrations_import_measurements(zf_tuuid, zf_ouuid, upload_measurements_request=upload_measurements_request)

Upload measurements for a collection of different meters.

Upload measurements for a collection of different meters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_metering_import_dto import ApiResponseDTOOfMeteringImportDTO
from metering_client.models.upload_measurements_request import UploadMeasurementsRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    upload_measurements_request = {"automaticProcessing":true,"source":"string","uploadIdentifier":"string","channelMeasurements":[{"utilityType":"none","unitOfMeasure":"none","meteringType":"none","direction":"offtake","meterSerialNumber":"string","externalChannelIdentifier":"string","measurements":[{"startDateTime":"string","readingDateTime":"string","value":0}]}]} # UploadMeasurementsRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Upload measurements for a collection of different meters.
        api_response = api_instance.post_integrations_import_measurements(zf_tuuid, zf_ouuid, upload_measurements_request=upload_measurements_request)
        print("The response of DefaultApi->post_integrations_import_measurements:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_integrations_import_measurements: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **upload_measurements_request** | [**UploadMeasurementsRequest**](UploadMeasurementsRequest.md)| Propagates notification that operations should be canceled. | [optional]

### Return type

[**ApiResponseDTOOfMeteringImportDTO**](ApiResponseDTOOfMeteringImportDTO.md)

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

# **post_integrations_import_process**
> ApiResponseDTO post_integrations_import_process(zf_tuuid, zf_ouuid, bulk_process_metering_import_request=bulk_process_metering_import_request)

Processes all selected imports if they have the status 'Validation failed', 'To process', or 'Processed with issues'. Before processing valid measurements, it revalidates any current invalid measurements.  For example, if a meter or channel did not exist when the import was created but has since bee

Processes all selected imports if they have the status 'Validation failed', 'To process', or 'Processed with issues'.
Before processing valid measurements, it revalidates any current invalid measurements.

For example, if a meter or channel did not exist when the import was created but has since been added,
the new measurements will be processed as well.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto import ApiResponseDTO
from metering_client.models.bulk_process_metering_import_request import BulkProcessMeteringImportRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_process_metering_import_request = {"onlyValidate":true,"queryParams":{"status":["string"],"communicationType":"string","meteringFormat":"string","createdStartDateTime":"string","createdEndDateTime":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkProcessMeteringImportRequest | Propagates notification that operations should be canceled. (optional)

    try:
        # Processes all selected imports if they have the status 'Validation failed', 'To process', or 'Processed with issues'. Before processing valid measurements, it revalidates any current invalid measurements.  For example, if a meter or channel did not exist when the import was created but has since bee
        api_response = api_instance.post_integrations_import_process(zf_tuuid, zf_ouuid, bulk_process_metering_import_request=bulk_process_metering_import_request)
        print("The response of DefaultApi->post_integrations_import_process:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_integrations_import_process: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **bulk_process_metering_import_request** | [**BulkProcessMeteringImportRequest**](BulkProcessMeteringImportRequest.md)| Propagates notification that operations should be canceled. | [optional]

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
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integrations_import_process_meteringimportid**
> ApiResponseDTO post_integrations_import_process_meteringimportid(metering_import_id, zf_tuuid, zf_ouuid)

Processes the import if it has the status 'Validation failed', 'To process', or 'Processed with issues'. Before processing valid measurements, it revalidates any current invalid measurements.  For example, if a meter or channel did not exist when the import was created but has since been added, the

Processes the import if it has the status 'Validation failed', 'To process', or 'Processed with issues'.
Before processing valid measurements, it revalidates any current invalid measurements.

For example, if a meter or channel did not exist when the import was created but has since been added,
the new measurements will be processed as well.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto import ApiResponseDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    metering_import_id = 'metering_import_id_example' # str | Unique identifier of the import
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Processes the import if it has the status 'Validation failed', 'To process', or 'Processed with issues'. Before processing valid measurements, it revalidates any current invalid measurements.  For example, if a meter or channel did not exist when the import was created but has since been added, the
        api_response = api_instance.post_integrations_import_process_meteringimportid(metering_import_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->post_integrations_import_process_meteringimportid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_integrations_import_process_meteringimportid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metering_import_id** | **str**| Unique identifier of the import |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTO**](ApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_integrations_import_processall**
> ApiResponseDTOOfboolean post_integrations_import_processall(zf_tuuid, zf_ouuid)

Processes all imports that have status 'To process' and 'Processed with issues'

Processes all imports that have status 'To process' and 'Processed with issues'

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Processes all imports that have status 'To process' and 'Processed with issues'
        api_response = api_instance.post_integrations_import_processall(zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->post_integrations_import_processall:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_integrations_import_processall: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_measurements**
> ApiResponseDTOOfMeasurementDTO post_measurements(zf_tuuid, zf_ouuid, add_measurement_request=add_measurement_request)

Adds a new measurement for an external channel.

Adds a new measurement for an external channel.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.add_measurement_request import AddMeasurementRequest
from metering_client.models.api_response_dtoof_measurement_dto import ApiResponseDTOOfMeasurementDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    add_measurement_request = {"startDateTime":"string","endDateTime":"string","value":0,"externalChannelIdentifier":"string","meterId":"string","skipValidation":true,"resolveIssuesManually":true,"readingOrigin":"string","readingMethod":"string"} # AddMeasurementRequest | Cancellation token. (optional)

    try:
        # Adds a new measurement for an external channel.
        api_response = api_instance.post_measurements(zf_tuuid, zf_ouuid, add_measurement_request=add_measurement_request)
        print("The response of DefaultApi->post_measurements:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_measurements: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **add_measurement_request** | [**AddMeasurementRequest**](AddMeasurementRequest.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfMeasurementDTO**](ApiResponseDTOOfMeasurementDTO.md)

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

# **post_measurements_bulk_delete**
> ApiResponseDTOOfboolean post_measurements_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_measurement_request=bulk_delete_measurement_request)

Bulk deletes measurements based on specified criteria.

Bulk deletes measurements based on specified criteria.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from metering_client.models.bulk_delete_measurement_request import BulkDeleteMeasurementRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_delete_measurement_request = {"onlyValidate":true,"queryParams":{"externalChannelIdentifier":"string","startDateTime":"string","endDateTime":"string","showInvalid":true,"dataFrequency":"pt1m","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkDeleteMeasurementRequest | Cancellation token. (optional)

    try:
        # Bulk deletes measurements based on specified criteria.
        api_response = api_instance.post_measurements_bulk_delete(zf_tuuid, zf_ouuid, bulk_delete_measurement_request=bulk_delete_measurement_request)
        print("The response of DefaultApi->post_measurements_bulk_delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_measurements_bulk_delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **bulk_delete_measurement_request** | [**BulkDeleteMeasurementRequest**](BulkDeleteMeasurementRequest.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_measurements_export_values**
> ApiResponseDTOOfListOfExportMeasurementDTO post_measurements_export_values(zf_tuuid, zf_ouuid, export_measurements_request=export_measurements_request)

Exports measurement values for a list of meters within a date range.

Exports measurement values for a list of meters within a date range.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_list_of_export_measurement_dto import ApiResponseDTOOfListOfExportMeasurementDTO
from metering_client.models.export_measurements_request import ExportMeasurementsRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    export_measurements_request = {"meterIds":["string"],"startDateTime":"string","endDateTime":"string","orderBy":"string"} # ExportMeasurementsRequest | Cancellation token. (optional)

    try:
        # Exports measurement values for a list of meters within a date range.
        api_response = api_instance.post_measurements_export_values(zf_tuuid, zf_ouuid, export_measurements_request=export_measurements_request)
        print("The response of DefaultApi->post_measurements_export_values:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_measurements_export_values: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **export_measurements_request** | [**ExportMeasurementsRequest**](ExportMeasurementsRequest.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfListOfExportMeasurementDTO**](ApiResponseDTOOfListOfExportMeasurementDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A list of exported measurement values. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_measurements_validate**
> ApiResponseDTOOfValidateMeasurementDTO post_measurements_validate(zf_tuuid, zf_ouuid, validate_measurement_request=validate_measurement_request)

Validates measurements against business rules without persisting them.

Validates measurements against business rules without persisting them.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_validate_measurement_dto import ApiResponseDTOOfValidateMeasurementDTO
from metering_client.models.validate_measurement_request import ValidateMeasurementRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    validate_measurement_request = {"startDateTime":"string","endDateTime":"string","value":0,"readingOrigin":"string","meterId":"string","externalChannelId":"string"} # ValidateMeasurementRequest | Cancellation token. (optional)

    try:
        # Validates measurements against business rules without persisting them.
        api_response = api_instance.post_measurements_validate(zf_tuuid, zf_ouuid, validate_measurement_request=validate_measurement_request)
        print("The response of DefaultApi->post_measurements_validate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_measurements_validate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **validate_measurement_request** | [**ValidateMeasurementRequest**](ValidateMeasurementRequest.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfValidateMeasurementDTO**](ApiResponseDTOOfValidateMeasurementDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Validation results for the measurements. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meteringissues**
> ApiResponseDTOOfPagedResponseModelDTOOfMeteringIssueDTO post_meteringissues(zf_tuuid, zf_ouuid, limit=limit, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_metering_issues_query_params=get_metering_issues_query_params)

Retrieves a paged list of metering issues based on specified filter criteria.

Retrieves a paged list of metering issues based on specified filter criteria.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_metering_issue_dto import ApiResponseDTOOfPagedResponseModelDTOOfMeteringIssueDTO
from metering_client.models.get_metering_issues_query_params import GetMeteringIssuesQueryParams
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    limit = 56 # int | Maximum number of items to return. (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str | Property name to order results by. (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)
    get_metering_issues_query_params = {"meterIds":["string"],"noticedStartDateTime":"string","noticedEndDateTime":"string","statuses":["unresolved"],"propertyGroupIds":["string"],"meterModelIds":["string"],"errors":["consumptionnegative"],"readingOrigins":["device"],"dataProviderIds":["string"],"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetMeteringIssuesQueryParams | Cancellation token. (optional)

    try:
        # Retrieves a paged list of metering issues based on specified filter criteria.
        api_response = api_instance.post_meteringissues(zf_tuuid, zf_ouuid, limit=limit, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_metering_issues_query_params=get_metering_issues_query_params)
        print("The response of DefaultApi->post_meteringissues:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meteringissues: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **limit** | **int**| Maximum number of items to return. | [optional]
 **name** | **str**|  | [optional]
 **id** | **int**|  | [optional]
 **order_by** | **str**| Property name to order results by. | [optional]
 **continuation_token** | **str**| Token for pagination. | [optional]
 **get_metering_issues_query_params** | [**GetMeteringIssuesQueryParams**](GetMeteringIssuesQueryParams.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfMeteringIssueDTO**](ApiResponseDTOOfPagedResponseModelDTOOfMeteringIssueDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meteringissues_bulk_ignore**
> ApiResponseDTOOfboolean post_meteringissues_bulk_ignore(zf_tuuid, zf_ouuid, bulk_ignore_metering_issue_request=bulk_ignore_metering_issue_request)

Ignores multiple metering issues in bulk.

Ignores multiple metering issues in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from metering_client.models.bulk_ignore_metering_issue_request import BulkIgnoreMeteringIssueRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_ignore_metering_issue_request = {"onlyValidate":true,"queryParams":{"meterIds":["string"],"noticedStartDateTime":"string","noticedEndDateTime":"string","statuses":["unresolved"],"propertyGroupIds":["string"],"meterModelIds":["string"],"errors":["consumptionnegative"],"readingOrigins":["device"],"dataProviderIds":["string"],"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","message":"string"} # BulkIgnoreMeteringIssueRequest | Cancellation token. (optional)

    try:
        # Ignores multiple metering issues in bulk.
        api_response = api_instance.post_meteringissues_bulk_ignore(zf_tuuid, zf_ouuid, bulk_ignore_metering_issue_request=bulk_ignore_metering_issue_request)
        print("The response of DefaultApi->post_meteringissues_bulk_ignore:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meteringissues_bulk_ignore: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **bulk_ignore_metering_issue_request** | [**BulkIgnoreMeteringIssueRequest**](BulkIgnoreMeteringIssueRequest.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meteringissues_bulk_resolve**
> ApiResponseDTOOfboolean post_meteringissues_bulk_resolve(zf_tuuid, zf_ouuid, bulk_resolve_metering_issue_request=bulk_resolve_metering_issue_request)

Resolves multiple metering issues in bulk.

Resolves multiple metering issues in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from metering_client.models.bulk_resolve_metering_issue_request import BulkResolveMeteringIssueRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_resolve_metering_issue_request = {"onlyValidate":true,"queryParams":{"meterIds":["string"],"noticedStartDateTime":"string","noticedEndDateTime":"string","statuses":["unresolved"],"propertyGroupIds":["string"],"meterModelIds":["string"],"errors":["consumptionnegative"],"readingOrigins":["device"],"dataProviderIds":["string"],"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","message":"string","resolutionValue":{"type":"Measurement","value":0}} # BulkResolveMeteringIssueRequest | Cancellation token. (optional)

    try:
        # Resolves multiple metering issues in bulk.
        api_response = api_instance.post_meteringissues_bulk_resolve(zf_tuuid, zf_ouuid, bulk_resolve_metering_issue_request=bulk_resolve_metering_issue_request)
        print("The response of DefaultApi->post_meteringissues_bulk_resolve:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meteringissues_bulk_resolve: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **bulk_resolve_metering_issue_request** | [**BulkResolveMeteringIssueRequest**](BulkResolveMeteringIssueRequest.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meteringissues_getallbymeter**
> ApiResponseDTOOfPagedResponseModelDTOOfMeteringIssueDTO post_meteringissues_getallbymeter(zf_tuuid, zf_ouuid, name=name, id=id, continuation_token=continuation_token, get_meters_query_params=get_meters_query_params)

Retrieves a paged list of metering issues for a specific meter.

Retrieves a paged list of metering issues for a specific meter.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_metering_issue_dto import ApiResponseDTOOfPagedResponseModelDTOOfMeteringIssueDTO
from metering_client.models.get_meters_query_params import GetMetersQueryParams
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)
    get_meters_query_params = {"servicelocationIds":["string"],"propertyGroupIds":["string"],"meterType":"individual","receivedMeteringDataStart":"string","receivedMeteringDataEnd":"string","nextExpectedReadingDateStart":"string","nextExpectedReadingDateEnd":"string","parentSerialNumber":"string","filterByReadingFrequency":true,"readingFrequency":"hourly","customerId":"string","meterTypeGroup":"string","meterSerialNumbers":["string"],"modelIds":["string"],"meterName":"string","showDeleted":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetMetersQueryParams | Cancellation token. (optional)

    try:
        # Retrieves a paged list of metering issues for a specific meter.
        api_response = api_instance.post_meteringissues_getallbymeter(zf_tuuid, zf_ouuid, name=name, id=id, continuation_token=continuation_token, get_meters_query_params=get_meters_query_params)
        print("The response of DefaultApi->post_meteringissues_getallbymeter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meteringissues_getallbymeter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **name** | **str**|  | [optional]
 **id** | **int**|  | [optional]
 **continuation_token** | **str**| Token for pagination. | [optional]
 **get_meters_query_params** | [**GetMetersQueryParams**](GetMetersQueryParams.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfMeteringIssueDTO**](ApiResponseDTOOfPagedResponseModelDTOOfMeteringIssueDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meteringissues_grouped**
> ApiResponseDTOOfPagedResponseModelDTOOfGroupedMeteringIssuesDTO post_meteringissues_grouped(zf_tuuid, zf_ouuid, limit=limit, group_by=group_by, name=name, id=id, continuation_token=continuation_token, get_metering_issues_query_params=get_metering_issues_query_params)

Retrieves a paged list of metering issues grouped by a specified property.

Retrieves a paged list of metering issues grouped by a specified property.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_grouped_metering_issues_dto import ApiResponseDTOOfPagedResponseModelDTOOfGroupedMeteringIssuesDTO
from metering_client.models.get_metering_issues_query_params import GetMeteringIssuesQueryParams
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    limit = 56 # int | Maximum number of items to return. (optional)
    group_by = 'group_by_example' # str | Property name to group results by. (optional)
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    continuation_token = 'continuation_token_example' # str | Token for pagination. (optional)
    get_metering_issues_query_params = {"meterIds":["string"],"noticedStartDateTime":"string","noticedEndDateTime":"string","statuses":["unresolved"],"propertyGroupIds":["string"],"meterModelIds":["string"],"errors":["consumptionnegative"],"readingOrigins":["device"],"dataProviderIds":["string"],"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetMeteringIssuesQueryParams | Cancellation token. (optional)

    try:
        # Retrieves a paged list of metering issues grouped by a specified property.
        api_response = api_instance.post_meteringissues_grouped(zf_tuuid, zf_ouuid, limit=limit, group_by=group_by, name=name, id=id, continuation_token=continuation_token, get_metering_issues_query_params=get_metering_issues_query_params)
        print("The response of DefaultApi->post_meteringissues_grouped:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meteringissues_grouped: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **limit** | **int**| Maximum number of items to return. | [optional]
 **group_by** | **str**| Property name to group results by. | [optional]
 **name** | **str**|  | [optional]
 **id** | **int**|  | [optional]
 **continuation_token** | **str**| Token for pagination. | [optional]
 **get_metering_issues_query_params** | [**GetMeteringIssuesQueryParams**](GetMeteringIssuesQueryParams.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfGroupedMeteringIssuesDTO**](ApiResponseDTOOfPagedResponseModelDTOOfGroupedMeteringIssuesDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meteringissues_issueid_ignore**
> ApiResponseDTOOfMeteringIssueDTO post_meteringissues_issueid_ignore(issue_id, zf_tuuid, zf_ouuid, ignore_metering_issue_request=ignore_metering_issue_request)

Ignores a specific metering issue.

Ignores a specific metering issue.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_metering_issue_dto import ApiResponseDTOOfMeteringIssueDTO
from metering_client.models.ignore_metering_issue_request import IgnoreMeteringIssueRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    issue_id = 'issue_id_example' # str | ID of the metering issue to ignore.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    ignore_metering_issue_request = {"message":"string"} # IgnoreMeteringIssueRequest | Cancellation token. (optional)

    try:
        # Ignores a specific metering issue.
        api_response = api_instance.post_meteringissues_issueid_ignore(issue_id, zf_tuuid, zf_ouuid, ignore_metering_issue_request=ignore_metering_issue_request)
        print("The response of DefaultApi->post_meteringissues_issueid_ignore:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meteringissues_issueid_ignore: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issue_id** | **str**| ID of the metering issue to ignore. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **ignore_metering_issue_request** | [**IgnoreMeteringIssueRequest**](IgnoreMeteringIssueRequest.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfMeteringIssueDTO**](ApiResponseDTOOfMeteringIssueDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meteringissues_issueid_resolve**
> ApiResponseDTOOfMeteringIssueDTO post_meteringissues_issueid_resolve(issue_id, zf_tuuid, zf_ouuid, resolve_metering_issue_request=resolve_metering_issue_request)

Resolves a specific metering issue.

Resolves a specific metering issue.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_metering_issue_dto import ApiResponseDTOOfMeteringIssueDTO
from metering_client.models.resolve_metering_issue_request import ResolveMeteringIssueRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    issue_id = 'issue_id_example' # str | ID of the metering issue to resolve.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    resolve_metering_issue_request = {"message":"string","resolutionValue":{"type":"Measurement","value":0}} # ResolveMeteringIssueRequest | Cancellation token. (optional)

    try:
        # Resolves a specific metering issue.
        api_response = api_instance.post_meteringissues_issueid_resolve(issue_id, zf_tuuid, zf_ouuid, resolve_metering_issue_request=resolve_metering_issue_request)
        print("The response of DefaultApi->post_meteringissues_issueid_resolve:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meteringissues_issueid_resolve: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issue_id** | **str**| ID of the metering issue to resolve. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **resolve_metering_issue_request** | [**ResolveMeteringIssueRequest**](ResolveMeteringIssueRequest.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfMeteringIssueDTO**](ApiResponseDTOOfMeteringIssueDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meteringissues_overviewcount**
> ApiResponseDTOOfMeteringIssueOverviewCountDTO post_meteringissues_overviewcount(zf_tuuid, zf_ouuid, get_metering_issues_query_params=get_metering_issues_query_params)

Retrieves count statistics for metering issues based on specified filter criteria.

Retrieves count statistics for metering issues based on specified filter criteria.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_metering_issue_overview_count_dto import ApiResponseDTOOfMeteringIssueOverviewCountDTO
from metering_client.models.get_metering_issues_query_params import GetMeteringIssuesQueryParams
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    get_metering_issues_query_params = {"meterIds":["string"],"noticedStartDateTime":"string","noticedEndDateTime":"string","statuses":["unresolved"],"propertyGroupIds":["string"],"meterModelIds":["string"],"errors":["consumptionnegative"],"readingOrigins":["device"],"dataProviderIds":["string"],"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetMeteringIssuesQueryParams | Cancellation token. (optional)

    try:
        # Retrieves count statistics for metering issues based on specified filter criteria.
        api_response = api_instance.post_meteringissues_overviewcount(zf_tuuid, zf_ouuid, get_metering_issues_query_params=get_metering_issues_query_params)
        print("The response of DefaultApi->post_meteringissues_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meteringissues_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **get_metering_issues_query_params** | [**GetMeteringIssuesQueryParams**](GetMeteringIssuesQueryParams.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfMeteringIssueOverviewCountDTO**](ApiResponseDTOOfMeteringIssueOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meteringissues_selectionsummary**
> ApiResponseDTOOfMeteringIssueSelectionSummaryDTO post_meteringissues_selectionsummary(zf_tuuid, zf_ouuid, name=name, id=id, get_metering_issues_query_params=get_metering_issues_query_params)

Summarises a metering issue selection: total issue and distinct meter counts plus a breakdown per error type.

Summarises a metering issue selection: total issue and distinct meter counts plus a breakdown per error type.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_metering_issue_selection_summary_dto import ApiResponseDTOOfMeteringIssueSelectionSummaryDTO
from metering_client.models.get_metering_issues_query_params import GetMeteringIssuesQueryParams
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    get_metering_issues_query_params = {"meterIds":["string"],"noticedStartDateTime":"string","noticedEndDateTime":"string","statuses":["unresolved"],"propertyGroupIds":["string"],"meterModelIds":["string"],"errors":["consumptionnegative"],"readingOrigins":["device"],"dataProviderIds":["string"],"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetMeteringIssuesQueryParams | Cancellation token. (optional)

    try:
        # Summarises a metering issue selection: total issue and distinct meter counts plus a breakdown per error type.
        api_response = api_instance.post_meteringissues_selectionsummary(zf_tuuid, zf_ouuid, name=name, id=id, get_metering_issues_query_params=get_metering_issues_query_params)
        print("The response of DefaultApi->post_meteringissues_selectionsummary:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meteringissues_selectionsummary: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **name** | **str**|  | [optional]
 **id** | **int**|  | [optional]
 **get_metering_issues_query_params** | [**GetMeteringIssuesQueryParams**](GetMeteringIssuesQueryParams.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfMeteringIssueSelectionSummaryDTO**](ApiResponseDTOOfMeteringIssueSelectionSummaryDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meteringprovideraccounts**
> ApiResponseDTOOfMeteringProviderAccountDTO post_meteringprovideraccounts(zf_tuuid, zf_ouuid, create_metering_provider_account_request=create_metering_provider_account_request)

Creates a new metering provider account for the current tenant, or updates settings and sets status to Active if an account already exists for the provider type.

Creates a new metering provider account for the current tenant, or updates settings and sets status to Active if an account already exists for the provider type.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_metering_provider_account_dto import ApiResponseDTOOfMeteringProviderAccountDTO
from metering_client.models.create_metering_provider_account_request import CreateMeteringProviderAccountRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    create_metering_provider_account_request = {"providerType":"brunatawms","settings":{"__type":"BrunataWMS","authenticationClientId":"string","endpointUrl":"string","authenticationClientSecret":"string","supportedBuildingNumbers":[0]}} # CreateMeteringProviderAccountRequest | Cancellation token. (optional)

    try:
        # Creates a new metering provider account for the current tenant, or updates settings and sets status to Active if an account already exists for the provider type.
        api_response = api_instance.post_meteringprovideraccounts(zf_tuuid, zf_ouuid, create_metering_provider_account_request=create_metering_provider_account_request)
        print("The response of DefaultApi->post_meteringprovideraccounts:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meteringprovideraccounts: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **create_metering_provider_account_request** | [**CreateMeteringProviderAccountRequest**](CreateMeteringProviderAccountRequest.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfMeteringProviderAccountDTO**](ApiResponseDTOOfMeteringProviderAccountDTO.md)

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

# **post_meteringprovideraccounts_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfMeteringProviderAccountDTO post_meteringprovideraccounts_filter(zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token, get_metering_provider_accounts_query_params=get_metering_provider_accounts_query_params)

Retrieves metering provider accounts for the current tenant with optional filtering and paging.

Retrieves metering provider accounts for the current tenant with optional filtering and paging.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_metering_provider_account_dto import ApiResponseDTOOfPagedResponseModelDTOOfMeteringProviderAccountDTO
from metering_client.models.get_metering_provider_accounts_query_params import GetMeteringProviderAccountsQueryParams
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    order_by = 'order_by_example' # str | Optional sort expression (e.g. property name or path). (optional)
    continuation_token = 'continuation_token_example' # str | Optional continuation token for the next page (from response header). (optional)
    get_metering_provider_accounts_query_params = {"statuses":["active"],"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetMeteringProviderAccountsQueryParams | Cancellation token. (optional)

    try:
        # Retrieves metering provider accounts for the current tenant with optional filtering and paging.
        api_response = api_instance.post_meteringprovideraccounts_filter(zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token, get_metering_provider_accounts_query_params=get_metering_provider_accounts_query_params)
        print("The response of DefaultApi->post_meteringprovideraccounts_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meteringprovideraccounts_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **order_by** | **str**| Optional sort expression (e.g. property name or path). | [optional]
 **continuation_token** | **str**| Optional continuation token for the next page (from response header). | [optional]
 **get_metering_provider_accounts_query_params** | [**GetMeteringProviderAccountsQueryParams**](GetMeteringProviderAccountsQueryParams.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfMeteringProviderAccountDTO**](ApiResponseDTOOfPagedResponseModelDTOOfMeteringProviderAccountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | ApiResponseDTO containing a paged list of MeteringProviderAccountDTO. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meteringprovideraccounts_id**
> ApiResponseDTOOfMeteringProviderAccountDTO post_meteringprovideraccounts_id(id, zf_tuuid, zf_ouuid, update_metering_provider_account_request=update_metering_provider_account_request)

Updates an existing metering provider account by id.

Updates an existing metering provider account by id.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_metering_provider_account_dto import ApiResponseDTOOfMeteringProviderAccountDTO
from metering_client.models.update_metering_provider_account_request import UpdateMeteringProviderAccountRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    id = 'id_example' # str | The unique identifier of the metering provider account.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    update_metering_provider_account_request = {"providerType":"brunatawms","settings":{"__type":"BrunataWMS","authenticationClientId":"string","endpointUrl":"string","authenticationClientSecret":"string","supportedBuildingNumbers":[0]}} # UpdateMeteringProviderAccountRequest | Cancellation token. (optional)

    try:
        # Updates an existing metering provider account by id.
        api_response = api_instance.post_meteringprovideraccounts_id(id, zf_tuuid, zf_ouuid, update_metering_provider_account_request=update_metering_provider_account_request)
        print("The response of DefaultApi->post_meteringprovideraccounts_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meteringprovideraccounts_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the metering provider account. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **update_metering_provider_account_request** | [**UpdateMeteringProviderAccountRequest**](UpdateMeteringProviderAccountRequest.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfMeteringProviderAccountDTO**](ApiResponseDTOOfMeteringProviderAccountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad Request |  -  |
**404** | Not Found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meteringprovideraccounts_id_deactivate**
> ApiResponseDTOOfboolean post_meteringprovideraccounts_id_deactivate(id, zf_tuuid, zf_ouuid)

Deactivates a metering provider account by id (sets status to inactive).

Deactivates a metering provider account by id (sets status to inactive).

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
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
    api_instance = metering_client.DefaultApi(api_client)
    id = 'id_example' # str | The unique identifier of the metering provider account to deactivate.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Deactivates a metering provider account by id (sets status to inactive).
        api_response = api_instance.post_meteringprovideraccounts_id_deactivate(id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->post_meteringprovideraccounts_id_deactivate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meteringprovideraccounts_id_deactivate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the metering provider account to deactivate. |
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**404** | Not Found |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_meteringproviderruns_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfMeteringProviderRunDTO post_meteringproviderruns_filter(zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token, get_metering_provider_runs_query_params=get_metering_provider_runs_query_params)

Retrieves metering provider runs for the current tenant with optional filtering and paging.

Retrieves metering provider runs for the current tenant with optional filtering and paging.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_metering_provider_run_dto import ApiResponseDTOOfPagedResponseModelDTOOfMeteringProviderRunDTO
from metering_client.models.get_metering_provider_runs_query_params import GetMeteringProviderRunsQueryParams
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    order_by = 'order_by_example' # str | Optional sort expression (e.g. property name or path). (optional)
    continuation_token = 'continuation_token_example' # str | Optional continuation token for the next page (from response header). (optional)
    get_metering_provider_runs_query_params = {"providerType":"string","flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetMeteringProviderRunsQueryParams | Cancellation token. (optional)

    try:
        # Retrieves metering provider runs for the current tenant with optional filtering and paging.
        api_response = api_instance.post_meteringproviderruns_filter(zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token, get_metering_provider_runs_query_params=get_metering_provider_runs_query_params)
        print("The response of DefaultApi->post_meteringproviderruns_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_meteringproviderruns_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **order_by** | **str**| Optional sort expression (e.g. property name or path). | [optional]
 **continuation_token** | **str**| Optional continuation token for the next page (from response header). | [optional]
 **get_metering_provider_runs_query_params** | [**GetMeteringProviderRunsQueryParams**](GetMeteringProviderRunsQueryParams.md)| Cancellation token. | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfMeteringProviderRunDTO**](ApiResponseDTOOfPagedResponseModelDTOOfMeteringProviderRunDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | ApiResponseDTO containing a paged list of MeteringProviderRunDTO. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_mutingrules_bulk_frommeteringissueselection**
> ApiResponseDTOOfboolean post_mutingrules_bulk_frommeteringissueselection(zf_tuuid, zf_ouuid, bulk_create_muting_rules_from_metering_issue_selection_request=bulk_create_muting_rules_from_metering_issue_selection_request)

Creates muting rules in bulk for every distinct meter in a metering issue selection, one per requested error type. Creating a rule also ignores the open issues it covers (see muting rule domain behaviour).

Creates muting rules in bulk for every distinct meter in a metering issue selection, one per requested error type.
Creating a rule also ignores the open issues it covers (see muting rule domain behaviour).

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from metering_client.models.bulk_create_muting_rules_from_metering_issue_selection_request import BulkCreateMutingRulesFromMeteringIssueSelectionRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_create_muting_rules_from_metering_issue_selection_request = {"onlyValidate":true,"queryParams":{"meterIds":["string"],"noticedStartDateTime":"string","noticedEndDateTime":"string","statuses":["unresolved"],"propertyGroupIds":["string"],"meterModelIds":["string"],"errors":["consumptionnegative"],"readingOrigins":["device"],"dataProviderIds":["string"],"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","timePeriod":"day","mutingRuleMessage":"string","errorTypes":["consumptionnegative"]} # BulkCreateMutingRulesFromMeteringIssueSelectionRequest | Cancellation token (optional)

    try:
        # Creates muting rules in bulk for every distinct meter in a metering issue selection, one per requested error type. Creating a rule also ignores the open issues it covers (see muting rule domain behaviour).
        api_response = api_instance.post_mutingrules_bulk_frommeteringissueselection(zf_tuuid, zf_ouuid, bulk_create_muting_rules_from_metering_issue_selection_request=bulk_create_muting_rules_from_metering_issue_selection_request)
        print("The response of DefaultApi->post_mutingrules_bulk_frommeteringissueselection:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_mutingrules_bulk_frommeteringissueselection: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **bulk_create_muting_rules_from_metering_issue_selection_request** | [**BulkCreateMutingRulesFromMeteringIssueSelectionRequest**](BulkCreateMutingRulesFromMeteringIssueSelectionRequest.md)| Cancellation token | [optional]

### Return type

[**ApiResponseDTOOfboolean**](ApiResponseDTOOfboolean.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Muting rules created or queued successfully |  -  |
**400** | Invalid request data |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_serviceconsumptions_aggregatedperperiod**
> ApiResponseDTOOfListOfAggregatedServiceConsumptionsPerPeriodDTO post_serviceconsumptions_aggregatedperperiod(zf_tuuid, zf_ouuid, aggregated_service_consumption_per_period_request=aggregated_service_consumption_per_period_request)

Gets aggregated service consumptions per period for a list of service locations

Gets aggregated service consumptions per period for a list of service locations

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.aggregated_service_consumption_per_period_request import AggregatedServiceConsumptionPerPeriodRequest
from metering_client.models.api_response_dtoof_list_of_aggregated_service_consumptions_per_period_dto import ApiResponseDTOOfListOfAggregatedServiceConsumptionsPerPeriodDTO
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    aggregated_service_consumption_per_period_request = {"serviceLocationIds":["string"],"groupByPeriod":"none"} # AggregatedServiceConsumptionPerPeriodRequest | Cancellation token (optional)

    try:
        # Gets aggregated service consumptions per period for a list of service locations
        api_response = api_instance.post_serviceconsumptions_aggregatedperperiod(zf_tuuid, zf_ouuid, aggregated_service_consumption_per_period_request=aggregated_service_consumption_per_period_request)
        print("The response of DefaultApi->post_serviceconsumptions_aggregatedperperiod:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_serviceconsumptions_aggregatedperperiod: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **aggregated_service_consumption_per_period_request** | [**AggregatedServiceConsumptionPerPeriodRequest**](AggregatedServiceConsumptionPerPeriodRequest.md)| Cancellation token | [optional]

### Return type

[**ApiResponseDTOOfListOfAggregatedServiceConsumptionsPerPeriodDTO**](ApiResponseDTOOfListOfAggregatedServiceConsumptionsPerPeriodDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of aggregated service consumptions per period |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_serviceconsumptions_buckets**
> ApiResponseDTOOfListOfServiceConsumptionBucketDTO post_serviceconsumptions_buckets(zf_tuuid, zf_ouuid, bucketed_service_consumption_request=bucketed_service_consumption_request)

Gets consumption data for service locations grouped by provided buckets

Gets consumption data for service locations grouped by provided buckets

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_list_of_service_consumption_bucket_dto import ApiResponseDTOOfListOfServiceConsumptionBucketDTO
from metering_client.models.bucketed_service_consumption_request import BucketedServiceConsumptionRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bucketed_service_consumption_request = {"serviceLocationIds":["string"],"buckets":[{"startDateTime":"string","endDateTime":"string"}],"utilityType":"none","unitOfMeasure":"none"} # BucketedServiceConsumptionRequest | Cancellation token (optional)

    try:
        # Gets consumption data for service locations grouped by provided buckets
        api_response = api_instance.post_serviceconsumptions_buckets(zf_tuuid, zf_ouuid, bucketed_service_consumption_request=bucketed_service_consumption_request)
        print("The response of DefaultApi->post_serviceconsumptions_buckets:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_serviceconsumptions_buckets: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **bucketed_service_consumption_request** | [**BucketedServiceConsumptionRequest**](BucketedServiceConsumptionRequest.md)| Cancellation token | [optional]

### Return type

[**ApiResponseDTOOfListOfServiceConsumptionBucketDTO**](ApiResponseDTOOfListOfServiceConsumptionBucketDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of bucketed service consumption data |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_serviceconsumptions_export_sum**
> ApiResponseDTOOfPagedResponseModelDTOOfAggregatedServiceConsumptionsByServiceLocationDTO post_serviceconsumptions_export_sum(zf_tuuid, zf_ouuid, continuation_token=continuation_token, service_consumption_sum_request=service_consumption_sum_request)

Gets sum of consumption values for a list of service locations

Gets sum of consumption values for a list of service locations

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_paged_response_model_dtoof_aggregated_service_consumptions_by_service_location_dto import ApiResponseDTOOfPagedResponseModelDTOOfAggregatedServiceConsumptionsByServiceLocationDTO
from metering_client.models.service_consumption_sum_request import ServiceConsumptionSumRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    continuation_token = 'continuation_token_example' # str | Token for paged results continuation (optional)
    service_consumption_sum_request = {"locationIds":["string"],"quickFilter":"string","startDateTime":"string","endDateTime":"string","sumByUtilityType":true} # ServiceConsumptionSumRequest | Cancellation token (optional)

    try:
        # Gets sum of consumption values for a list of service locations
        api_response = api_instance.post_serviceconsumptions_export_sum(zf_tuuid, zf_ouuid, continuation_token=continuation_token, service_consumption_sum_request=service_consumption_sum_request)
        print("The response of DefaultApi->post_serviceconsumptions_export_sum:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_serviceconsumptions_export_sum: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **continuation_token** | **str**| Token for paged results continuation | [optional]
 **service_consumption_sum_request** | [**ServiceConsumptionSumRequest**](ServiceConsumptionSumRequest.md)| Cancellation token | [optional]

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfAggregatedServiceConsumptionsByServiceLocationDTO**](ApiResponseDTOOfPagedResponseModelDTOOfAggregatedServiceConsumptionsByServiceLocationDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Paged list of aggregated consumption data by service location |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_serviceconsumptions_yearlyaverage**
> ApiResponseDTOOfListOfAverageServiceConsumptionPerServiceLocationDTO post_serviceconsumptions_yearlyaverage(zf_tuuid, zf_ouuid, average_service_consumption_per_service_location_request=average_service_consumption_per_service_location_request)

Gets yearly average consumption per service location

Gets yearly average consumption per service location

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import metering_client
from metering_client.models.api_response_dtoof_list_of_average_service_consumption_per_service_location_dto import ApiResponseDTOOfListOfAverageServiceConsumptionPerServiceLocationDTO
from metering_client.models.average_service_consumption_per_service_location_request import AverageServiceConsumptionPerServiceLocationRequest
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
    api_instance = metering_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    average_service_consumption_per_service_location_request = {"serviceLocationIds":["string"]} # AverageServiceConsumptionPerServiceLocationRequest | Cancellation token (optional)

    try:
        # Gets yearly average consumption per service location
        api_response = api_instance.post_serviceconsumptions_yearlyaverage(zf_tuuid, zf_ouuid, average_service_consumption_per_service_location_request=average_service_consumption_per_service_location_request)
        print("The response of DefaultApi->post_serviceconsumptions_yearlyaverage:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_serviceconsumptions_yearlyaverage: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID |
 **zf_ouuid** | **str**| Organisation ID |
 **average_service_consumption_per_service_location_request** | [**AverageServiceConsumptionPerServiceLocationRequest**](AverageServiceConsumptionPerServiceLocationRequest.md)| Cancellation token | [optional]

### Return type

[**ApiResponseDTOOfListOfAverageServiceConsumptionPerServiceLocationDTO**](ApiResponseDTOOfListOfAverageServiceConsumptionPerServiceLocationDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of average service consumption per service location |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
