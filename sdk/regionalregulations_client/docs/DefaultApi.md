# regionalregulations_client.DefaultApi

All URIs are relative to *https://api.zerofriction.co/api/reg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_socialtariff_exports_delete_bulk**](DefaultApi.md#delete_socialtariff_exports_delete_bulk) | **DELETE** /SocialTariff/exports/delete/bulk | Deletes multiple social tariff exports in bulk.
[**delete_socialtariff_exports_expuuid**](DefaultApi.md#delete_socialtariff_exports_expuuid) | **DELETE** /SocialTariff/exports/{expuuid} | Deletes a specific social tariff export.
[**get_frenchereport_declarant_status**](DefaultApi.md#get_frenchereport_declarant_status) | **GET** /FrenchEReport/declarant/status | Returns the status of the organisation&#39;s French e-reporting declarant submission.
[**get_frenchereport_submissions_submissionid**](DefaultApi.md#get_frenchereport_submissions_submissionid) | **GET** /FrenchEReport/submissions/{submissionId} | /FrenchEReport/submissions/{submissionId} - GET
[**get_migrationadmin_latest_version**](DefaultApi.md#get_migrationadmin_latest_version) | **GET** /MigrationAdmin/latest-version | /MigrationAdmin/latest-version - GET
[**get_socialtariff_exports**](DefaultApi.md#get_socialtariff_exports) | **GET** /SocialTariff/exports | Retrieves a paginated list of all social tariff exports.
[**post_frenchereport_candidates_filter**](DefaultApi.md#post_frenchereport_candidates_filter) | **POST** /FrenchEReport/candidates/filter | /FrenchEReport/candidates/filter - POST
[**post_frenchereport_candidates_invoiceid_recollect**](DefaultApi.md#post_frenchereport_candidates_invoiceid_recollect) | **POST** /FrenchEReport/candidates/{invoiceId}/recollect | Re-requests invoice data from billing to refresh a non-submitted e-reporting candidate.
[**post_frenchereport_declarant_register**](DefaultApi.md#post_frenchereport_declarant_register) | **POST** /FrenchEReport/declarant/register | Registers the organisation as a French e-reporting declarant with Recommand. Requires &#x60;RecommandProviderAccountId&#x60; on French regional regulations parameters (set after successful Recommand onboarding).
[**post_frenchereport_submissions_filter**](DefaultApi.md#post_frenchereport_submissions_filter) | **POST** /FrenchEReport/submissions/filter | /FrenchEReport/submissions/filter - POST
[**post_frenchereport_submissions_filter_overviewcount**](DefaultApi.md#post_frenchereport_submissions_filter_overviewcount) | **POST** /FrenchEReport/submissions/filter/overviewcount | Returns submission counts for each quick-filter tab for the current filter set.
[**post_frenchereport_submissions_submissionid_resubmit**](DefaultApi.md#post_frenchereport_submissions_submissionid_resubmit) | **POST** /FrenchEReport/submissions/{submissionId}/resubmit | Re-enqueues a failed or rejected e-reporting submission for delivery to Recommand.
[**post_socialtariff_export_download_bulk**](DefaultApi.md#post_socialtariff_export_download_bulk) | **POST** /SocialTariff/export/download/bulk | Downloads multiple social tariff exports as a ZIP archive.
[**post_socialtariff_exports**](DefaultApi.md#post_socialtariff_exports) | **POST** /SocialTariff/exports | Legacy endpoint for creating a social tariff export. Maintained for backwards compatibility. Redirects to the CreateExportCustomerPortfolio method.
[**post_socialtariff_exports_claimsprotectedcustomers**](DefaultApi.md#post_socialtariff_exports_claimsprotectedcustomers) | **POST** /SocialTariff/exports/claimsProtectedCustomers | Creates a social tariff export for claims protected customers.
[**post_socialtariff_exports_customerportfolio**](DefaultApi.md#post_socialtariff_exports_customerportfolio) | **POST** /SocialTariff/exports/customerPortfolio | Creates a social tariff export for customer portfolio.
[**post_socialtariff_exports_expuuid_download**](DefaultApi.md#post_socialtariff_exports_expuuid_download) | **POST** /SocialTariff/exports/{expuuid}/download | Downloads a specific social tariff export file.
[**put_frenchereport_candidates_invoiceid_recollect**](DefaultApi.md#put_frenchereport_candidates_invoiceid_recollect) | **PUT** /FrenchEReport/candidates/{invoiceId}/recollect | Re-requests invoice data from billing to refresh a non-submitted e-reporting candidate.
[**put_frenchereport_submissions_submissionid_resubmit**](DefaultApi.md#put_frenchereport_submissions_submissionid_resubmit) | **PUT** /FrenchEReport/submissions/{submissionId}/resubmit | Re-enqueues a failed or rejected e-reporting submission for delivery to Recommand.


# **delete_socialtariff_exports_delete_bulk**
> ApiResponseDTO delete_socialtariff_exports_delete_bulk(zf_tuuid, zf_ouuid, bulk_delete_social_tariffs_request=bulk_delete_social_tariffs_request)

Deletes multiple social tariff exports in bulk.

Deletes multiple social tariff exports in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dto import ApiResponseDTO
from regionalregulations_client.models.bulk_delete_social_tariffs_request import BulkDeleteSocialTariffsRequest
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_delete_social_tariffs_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string"} # BulkDeleteSocialTariffsRequest | The cancellation token. (optional)

    try:
        # Deletes multiple social tariff exports in bulk.
        api_response = api_instance.delete_socialtariff_exports_delete_bulk(zf_tuuid, zf_ouuid, bulk_delete_social_tariffs_request=bulk_delete_social_tariffs_request)
        print("The response of DefaultApi->delete_socialtariff_exports_delete_bulk:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_socialtariff_exports_delete_bulk: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_delete_social_tariffs_request** | [**BulkDeleteSocialTariffsRequest**](BulkDeleteSocialTariffsRequest.md)| The cancellation token. | [optional] 

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

# **delete_socialtariff_exports_expuuid**
> ApiResponseDTOOfboolean delete_socialtariff_exports_expuuid(expuuid, zf_tuuid, zf_ouuid)

Deletes a specific social tariff export.

Deletes a specific social tariff export.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dto_ofboolean import ApiResponseDTOOfboolean
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    expuuid = 'expuuid_example' # str | The unique identifier of the export to delete.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Deletes a specific social tariff export.
        api_response = api_instance.delete_socialtariff_exports_expuuid(expuuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->delete_socialtariff_exports_expuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_socialtariff_exports_expuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expuuid** | **str**| The unique identifier of the export to delete. | 
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
**404** | Not Found |  -  |
**204** | No Content |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_frenchereport_declarant_status**
> ApiResponseDTOOfFrenchEReportDeclarantStatusDTO get_frenchereport_declarant_status(zf_tuuid, zf_ouuid)

Returns the status of the organisation's French e-reporting declarant submission.

Returns the status of the organisation's French e-reporting declarant submission.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dtoof_french_e_report_declarant_status_dto import ApiResponseDTOOfFrenchEReportDeclarantStatusDTO
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Returns the status of the organisation's French e-reporting declarant submission.
        api_response = api_instance.get_frenchereport_declarant_status(zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_frenchereport_declarant_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_frenchereport_declarant_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfFrenchEReportDeclarantStatusDTO**](ApiResponseDTOOfFrenchEReportDeclarantStatusDTO.md)

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

# **get_frenchereport_submissions_submissionid**
> ApiResponseDTOOfFrenchEReportSubmissionDTO get_frenchereport_submissions_submissionid(submission_id, zf_tuuid, zf_ouuid)

/FrenchEReport/submissions/{submissionId} - GET

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dtoof_french_e_report_submission_dto import ApiResponseDTOOfFrenchEReportSubmissionDTO
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    submission_id = 'submission_id_example' # str | 
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # /FrenchEReport/submissions/{submissionId} - GET
        api_response = api_instance.get_frenchereport_submissions_submissionid(submission_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->get_frenchereport_submissions_submissionid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_frenchereport_submissions_submissionid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **str**|  | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**ApiResponseDTOOfFrenchEReportSubmissionDTO**](ApiResponseDTOOfFrenchEReportSubmissionDTO.md)

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

# **get_migrationadmin_latest_version**
> ApiResponseDTOOfMigrationLatestVersionDTO get_migrationadmin_latest_version()

/MigrationAdmin/latest-version - GET

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dtoof_migration_latest_version_dto import ApiResponseDTOOfMigrationLatestVersionDTO
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)

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

# **get_socialtariff_exports**
> ApiResponseDTOOfPagedResponseModelDTOOfSocialTariffExportDTO get_socialtariff_exports(zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token)

Retrieves a paginated list of all social tariff exports.

Retrieves a paginated list of all social tariff exports.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dtoof_paged_response_model_dtoof_social_tariff_export_dto import ApiResponseDTOOfPagedResponseModelDTOOfSocialTariffExportDTO
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    order_by = 'order_by_example' # str | The property to order the results by. (optional)
    continuation_token = 'continuation_token_example' # str | The token for continuation of paged results. (optional)

    try:
        # Retrieves a paginated list of all social tariff exports.
        api_response = api_instance.get_socialtariff_exports(zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token)
        print("The response of DefaultApi->get_socialtariff_exports:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_socialtariff_exports: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **order_by** | **str**| The property to order the results by. | [optional] 
 **continuation_token** | **str**| The token for continuation of paged results. | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfSocialTariffExportDTO**](ApiResponseDTOOfPagedResponseModelDTOOfSocialTariffExportDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A paged response containing social tariff export details. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_frenchereport_candidates_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfFrenchEReportInvoiceCandidateDTO post_frenchereport_candidates_filter(zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token, get_french_e_report_invoice_candidates_query_params=get_french_e_report_invoice_candidates_query_params)

/FrenchEReport/candidates/filter - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dtoof_paged_response_model_dtoof_french_e_report_invoice_candidate_dto import ApiResponseDTOOfPagedResponseModelDTOOfFrenchEReportInvoiceCandidateDTO
from regionalregulations_client.models.get_french_e_report_invoice_candidates_query_params import GetFrenchEReportInvoiceCandidatesQueryParams
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    order_by = 'order_by_example' # str |  (optional)
    continuation_token = 'continuation_token_example' # str |  (optional)
    get_french_e_report_invoice_candidates_query_params = {"submissionId":"string","reportingDate":"string","status":{},"applyFiltersOverIncludedIds":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetFrenchEReportInvoiceCandidatesQueryParams |  (optional)

    try:
        # /FrenchEReport/candidates/filter - POST
        api_response = api_instance.post_frenchereport_candidates_filter(zf_tuuid, zf_ouuid, order_by=order_by, continuation_token=continuation_token, get_french_e_report_invoice_candidates_query_params=get_french_e_report_invoice_candidates_query_params)
        print("The response of DefaultApi->post_frenchereport_candidates_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_frenchereport_candidates_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **order_by** | **str**|  | [optional] 
 **continuation_token** | **str**|  | [optional] 
 **get_french_e_report_invoice_candidates_query_params** | [**GetFrenchEReportInvoiceCandidatesQueryParams**](GetFrenchEReportInvoiceCandidatesQueryParams.md)|  | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfFrenchEReportInvoiceCandidateDTO**](ApiResponseDTOOfPagedResponseModelDTOOfFrenchEReportInvoiceCandidateDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_frenchereport_candidates_invoiceid_recollect**
> ApiResponseDTO post_frenchereport_candidates_invoiceid_recollect(invoice_id, zf_tuuid, zf_ouuid)

Re-requests invoice data from billing to refresh a non-submitted e-reporting candidate.

Re-requests invoice data from billing to refresh a non-submitted e-reporting candidate.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dto import ApiResponseDTO
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    invoice_id = 'invoice_id_example' # str | 
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Re-requests invoice data from billing to refresh a non-submitted e-reporting candidate.
        api_response = api_instance.post_frenchereport_candidates_invoiceid_recollect(invoice_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->post_frenchereport_candidates_invoiceid_recollect:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_frenchereport_candidates_invoiceid_recollect: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **str**|  | 
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
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_frenchereport_declarant_register**
> ApiResponseDTO post_frenchereport_declarant_register(zf_tuuid, zf_ouuid)

Registers the organisation as a French e-reporting declarant with Recommand. Requires `RecommandProviderAccountId` on French regional regulations parameters (set after successful Recommand onboarding).

Registers the organisation as a French e-reporting declarant with Recommand.
Requires `RecommandProviderAccountId` on French regional regulations parameters
(set after successful Recommand onboarding).

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dto import ApiResponseDTO
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Registers the organisation as a French e-reporting declarant with Recommand. Requires `RecommandProviderAccountId` on French regional regulations parameters (set after successful Recommand onboarding).
        api_response = api_instance.post_frenchereport_declarant_register(zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->post_frenchereport_declarant_register:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_frenchereport_declarant_register: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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
**200** | Success&#x3D;true when declarant registration was enqueued. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_frenchereport_submissions_filter**
> ApiResponseDTOOfPagedResponseModelDTOOfFrenchEReportSubmissionDTO post_frenchereport_submissions_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_french_e_report_submissions_query_params=get_french_e_report_submissions_query_params)

/FrenchEReport/submissions/filter - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dtoof_paged_response_model_dtoof_french_e_report_submission_dto import ApiResponseDTOOfPagedResponseModelDTOOfFrenchEReportSubmissionDTO
from regionalregulations_client.models.get_french_e_report_submissions_query_params import GetFrenchEReportSubmissionsQueryParams
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int |  (optional)
    order_by = 'order_by_example' # str |  (optional)
    continuation_token = 'continuation_token_example' # str |  (optional)
    get_french_e_report_submissions_query_params = {"status":{},"type":{},"onlyCount":true,"applyFiltersOverIncludedIds":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetFrenchEReportSubmissionsQueryParams |  (optional)

    try:
        # /FrenchEReport/submissions/filter - POST
        api_response = api_instance.post_frenchereport_submissions_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_french_e_report_submissions_query_params=get_french_e_report_submissions_query_params)
        print("The response of DefaultApi->post_frenchereport_submissions_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_frenchereport_submissions_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**|  | [optional] 
 **order_by** | **str**|  | [optional] 
 **continuation_token** | **str**|  | [optional] 
 **get_french_e_report_submissions_query_params** | [**GetFrenchEReportSubmissionsQueryParams**](GetFrenchEReportSubmissionsQueryParams.md)|  | [optional] 

### Return type

[**ApiResponseDTOOfPagedResponseModelDTOOfFrenchEReportSubmissionDTO**](ApiResponseDTOOfPagedResponseModelDTOOfFrenchEReportSubmissionDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_frenchereport_submissions_filter_overviewcount**
> ApiResponseDTOOfFrenchEReportSubmissionOverviewCountDTO post_frenchereport_submissions_filter_overviewcount(zf_tuuid, zf_ouuid, get_french_e_report_submissions_query_params=get_french_e_report_submissions_query_params)

Returns submission counts for each quick-filter tab for the current filter set.

Returns submission counts for each quick-filter tab for the current filter set.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dtoof_french_e_report_submission_overview_count_dto import ApiResponseDTOOfFrenchEReportSubmissionOverviewCountDTO
from regionalregulations_client.models.get_french_e_report_submissions_query_params import GetFrenchEReportSubmissionsQueryParams
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    get_french_e_report_submissions_query_params = {"status":{},"type":{},"onlyCount":true,"applyFiltersOverIncludedIds":true,"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0} # GetFrenchEReportSubmissionsQueryParams |  (optional)

    try:
        # Returns submission counts for each quick-filter tab for the current filter set.
        api_response = api_instance.post_frenchereport_submissions_filter_overviewcount(zf_tuuid, zf_ouuid, get_french_e_report_submissions_query_params=get_french_e_report_submissions_query_params)
        print("The response of DefaultApi->post_frenchereport_submissions_filter_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_frenchereport_submissions_filter_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **get_french_e_report_submissions_query_params** | [**GetFrenchEReportSubmissionsQueryParams**](GetFrenchEReportSubmissionsQueryParams.md)|  | [optional] 

### Return type

[**ApiResponseDTOOfFrenchEReportSubmissionOverviewCountDTO**](ApiResponseDTOOfFrenchEReportSubmissionOverviewCountDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_frenchereport_submissions_submissionid_resubmit**
> ApiResponseDTO post_frenchereport_submissions_submissionid_resubmit(submission_id, zf_tuuid, zf_ouuid)

Re-enqueues a failed or rejected e-reporting submission for delivery to Recommand.

Re-enqueues a failed or rejected e-reporting submission for delivery to Recommand.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dto import ApiResponseDTO
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    submission_id = 'submission_id_example' # str | 
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Re-enqueues a failed or rejected e-reporting submission for delivery to Recommand.
        api_response = api_instance.post_frenchereport_submissions_submissionid_resubmit(submission_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->post_frenchereport_submissions_submissionid_resubmit:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_frenchereport_submissions_submissionid_resubmit: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **str**|  | 
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
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_socialtariff_export_download_bulk**
> FileStreamResult post_socialtariff_export_download_bulk(zf_tuuid, zf_ouuid, bulk_download_social_tariffs_request=bulk_download_social_tariffs_request)

Downloads multiple social tariff exports as a ZIP archive.

Downloads multiple social tariff exports as a ZIP archive.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.bulk_download_social_tariffs_request import BulkDownloadSocialTariffsRequest
from regionalregulations_client.models.file_stream_result import FileStreamResult
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    bulk_download_social_tariffs_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"pageSize":0},"quickFilter":"string","socialTariffIds":["string"]} # BulkDownloadSocialTariffsRequest | The cancellation token. (optional)

    try:
        # Downloads multiple social tariff exports as a ZIP archive.
        api_response = api_instance.post_socialtariff_export_download_bulk(zf_tuuid, zf_ouuid, bulk_download_social_tariffs_request=bulk_download_social_tariffs_request)
        print("The response of DefaultApi->post_socialtariff_export_download_bulk:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_socialtariff_export_download_bulk: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **bulk_download_social_tariffs_request** | [**BulkDownloadSocialTariffsRequest**](BulkDownloadSocialTariffsRequest.md)| The cancellation token. | [optional] 

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

# **post_socialtariff_exports**
> ApiResponseDTOOfSocialTariffExportDTO post_socialtariff_exports(zf_tuuid, zf_ouuid, create_customer_portfolio_social_tariff_export_request=create_customer_portfolio_social_tariff_export_request)

Legacy endpoint for creating a social tariff export. Maintained for backwards compatibility. Redirects to the CreateExportCustomerPortfolio method.

Legacy endpoint for creating a social tariff export.
Maintained for backwards compatibility.
Redirects to the CreateExportCustomerPortfolio method.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dtoof_social_tariff_export_dto import ApiResponseDTOOfSocialTariffExportDTO
from regionalregulations_client.models.create_customer_portfolio_social_tariff_export_request import CreateCustomerPortfolioSocialTariffExportRequest
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    create_customer_portfolio_social_tariff_export_request = {"startDateTime":"string","endDateTime":"string","onlyMutations":true} # CreateCustomerPortfolioSocialTariffExportRequest | The cancellation token. (optional)

    try:
        # Legacy endpoint for creating a social tariff export. Maintained for backwards compatibility. Redirects to the CreateExportCustomerPortfolio method.
        api_response = api_instance.post_socialtariff_exports(zf_tuuid, zf_ouuid, create_customer_portfolio_social_tariff_export_request=create_customer_portfolio_social_tariff_export_request)
        print("The response of DefaultApi->post_socialtariff_exports:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_socialtariff_exports: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **create_customer_portfolio_social_tariff_export_request** | [**CreateCustomerPortfolioSocialTariffExportRequest**](CreateCustomerPortfolioSocialTariffExportRequest.md)| The cancellation token. | [optional] 

### Return type

[**ApiResponseDTOOfSocialTariffExportDTO**](ApiResponseDTOOfSocialTariffExportDTO.md)

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

# **post_socialtariff_exports_claimsprotectedcustomers**
> ApiResponseDTOOfSocialTariffExportDTO post_socialtariff_exports_claimsprotectedcustomers(zf_tuuid, zf_ouuid, create_claims_protected_customers_social_tariff_export_request=create_claims_protected_customers_social_tariff_export_request)

Creates a social tariff export for claims protected customers.

Creates a social tariff export for claims protected customers.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dtoof_social_tariff_export_dto import ApiResponseDTOOfSocialTariffExportDTO
from regionalregulations_client.models.create_claims_protected_customers_social_tariff_export_request import CreateClaimsProtectedCustomersSocialTariffExportRequest
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    create_claims_protected_customers_social_tariff_export_request = {"year":0} # CreateClaimsProtectedCustomersSocialTariffExportRequest | The cancellation token. (optional)

    try:
        # Creates a social tariff export for claims protected customers.
        api_response = api_instance.post_socialtariff_exports_claimsprotectedcustomers(zf_tuuid, zf_ouuid, create_claims_protected_customers_social_tariff_export_request=create_claims_protected_customers_social_tariff_export_request)
        print("The response of DefaultApi->post_socialtariff_exports_claimsprotectedcustomers:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_socialtariff_exports_claimsprotectedcustomers: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **create_claims_protected_customers_social_tariff_export_request** | [**CreateClaimsProtectedCustomersSocialTariffExportRequest**](CreateClaimsProtectedCustomersSocialTariffExportRequest.md)| The cancellation token. | [optional] 

### Return type

[**ApiResponseDTOOfSocialTariffExportDTO**](ApiResponseDTOOfSocialTariffExportDTO.md)

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

# **post_socialtariff_exports_customerportfolio**
> ApiResponseDTOOfSocialTariffExportDTO post_socialtariff_exports_customerportfolio(zf_tuuid, zf_ouuid, create_customer_portfolio_social_tariff_export_request=create_customer_portfolio_social_tariff_export_request)

Creates a social tariff export for customer portfolio.

Creates a social tariff export for customer portfolio.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dtoof_social_tariff_export_dto import ApiResponseDTOOfSocialTariffExportDTO
from regionalregulations_client.models.create_customer_portfolio_social_tariff_export_request import CreateCustomerPortfolioSocialTariffExportRequest
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID
    create_customer_portfolio_social_tariff_export_request = {"startDateTime":"string","endDateTime":"string","onlyMutations":true} # CreateCustomerPortfolioSocialTariffExportRequest | The cancellation token. (optional)

    try:
        # Creates a social tariff export for customer portfolio.
        api_response = api_instance.post_socialtariff_exports_customerportfolio(zf_tuuid, zf_ouuid, create_customer_portfolio_social_tariff_export_request=create_customer_portfolio_social_tariff_export_request)
        print("The response of DefaultApi->post_socialtariff_exports_customerportfolio:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_socialtariff_exports_customerportfolio: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 
 **create_customer_portfolio_social_tariff_export_request** | [**CreateCustomerPortfolioSocialTariffExportRequest**](CreateCustomerPortfolioSocialTariffExportRequest.md)| The cancellation token. | [optional] 

### Return type

[**ApiResponseDTOOfSocialTariffExportDTO**](ApiResponseDTOOfSocialTariffExportDTO.md)

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

# **post_socialtariff_exports_expuuid_download**
> FileStreamResult post_socialtariff_exports_expuuid_download(expuuid, zf_tuuid, zf_ouuid)

Downloads a specific social tariff export file.

Downloads a specific social tariff export file.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.file_stream_result import FileStreamResult
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    expuuid = 'expuuid_example' # str | The unique identifier of the export to download.
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Downloads a specific social tariff export file.
        api_response = api_instance.post_socialtariff_exports_expuuid_download(expuuid, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->post_socialtariff_exports_expuuid_download:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->post_socialtariff_exports_expuuid_download: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expuuid** | **str**| The unique identifier of the export to download. | 
 **zf_tuuid** | **str**| Tenant ID | 
 **zf_ouuid** | **str**| Organisation ID | 

### Return type

[**FileStreamResult**](FileStreamResult.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_frenchereport_candidates_invoiceid_recollect**
> ApiResponseDTO put_frenchereport_candidates_invoiceid_recollect(invoice_id, zf_tuuid, zf_ouuid)

Re-requests invoice data from billing to refresh a non-submitted e-reporting candidate.

Re-requests invoice data from billing to refresh a non-submitted e-reporting candidate.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dto import ApiResponseDTO
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    invoice_id = 'invoice_id_example' # str | 
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Re-requests invoice data from billing to refresh a non-submitted e-reporting candidate.
        api_response = api_instance.put_frenchereport_candidates_invoiceid_recollect(invoice_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->put_frenchereport_candidates_invoiceid_recollect:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->put_frenchereport_candidates_invoiceid_recollect: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invoice_id** | **str**|  | 
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
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_frenchereport_submissions_submissionid_resubmit**
> ApiResponseDTO put_frenchereport_submissions_submissionid_resubmit(submission_id, zf_tuuid, zf_ouuid)

Re-enqueues a failed or rejected e-reporting submission for delivery to Recommand.

Re-enqueues a failed or rejected e-reporting submission for delivery to Recommand.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import regionalregulations_client
from regionalregulations_client.models.api_response_dto import ApiResponseDTO
from regionalregulations_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.zerofriction.co/api/reg
# See configuration.py for a list of all supported configuration parameters.
configuration = regionalregulations_client.Configuration(
    host = "https://api.zerofriction.co/api/reg"
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
with regionalregulations_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = regionalregulations_client.DefaultApi(api_client)
    submission_id = 'submission_id_example' # str | 
    zf_tuuid = '{\"Tenant ID\":\"{{zf-tuuid}}\"}' # str | Tenant ID
    zf_ouuid = '{\"Organisation ID\":\"{{zf-ouuid}}\"}' # str | Organisation ID

    try:
        # Re-enqueues a failed or rejected e-reporting submission for delivery to Recommand.
        api_response = api_instance.put_frenchereport_submissions_submissionid_resubmit(submission_id, zf_tuuid, zf_ouuid)
        print("The response of DefaultApi->put_frenchereport_submissions_submissionid_resubmit:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->put_frenchereport_submissions_submissionid_resubmit: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **submission_id** | **str**|  | 
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
**200** | OK |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

