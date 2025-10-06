# masterdata_client.ContractsApi

All URIs are relative to *https://api.zerofriction.co/api/md*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_contracted_services**](ContractsApi.md#add_contracted_services) | **PUT** /Contracts/{contractuuid}/services/add | Add locations and/or services to be supplied on a contract.
[**delete_contracts_bulk**](ContractsApi.md#delete_contracts_bulk) | **DELETE** /Contracts/bulk | Delete multiple draft contracts in bulk.
[**delete_contracts_contractuuid**](ContractsApi.md#delete_contracts_contractuuid) | **DELETE** /Contracts/{contractuuid} | Delete a draft contract.
[**get_contracts_contractuuid**](ContractsApi.md#get_contracts_contractuuid) | **GET** /Contracts/{contractuuid} | Retrieve a contract by its ID.
[**post_contracts**](ContractsApi.md#post_contracts) | **POST** /Contracts | Create new contract.
[**post_contracts_bulk_block**](ContractsApi.md#post_contracts_bulk_block) | **POST** /Contracts/bulk/block | Mark multiple contracts as blocked in bulk.
[**post_contracts_bulk_estimate**](ContractsApi.md#post_contracts_bulk_estimate) | **POST** /Contracts/bulk/estimate | Trigger recalculation of EAV for multiple contracts in bulk.
[**post_contracts_bulk_sign**](ContractsApi.md#post_contracts_bulk_sign) | **POST** /Contracts/bulk/sign | Sign multiple contracts in bulk.
[**post_contracts_bulk_terminate**](ContractsApi.md#post_contracts_bulk_terminate) | **POST** /Contracts/bulk/terminate | Terminate multiple signed contracts in bulk.
[**post_contracts_bulk_unblock**](ContractsApi.md#post_contracts_bulk_unblock) | **POST** /Contracts/bulk/unblock | Mark multiple contracts as unblocked in bulk.
[**post_contracts_bulk_updateproduct**](ContractsApi.md#post_contracts_bulk_updateproduct) | **POST** /Contracts/bulk/updateproduct | Update product on multiple contracts in bulk.
[**post_contracts_contractuuid_block**](ContractsApi.md#post_contracts_contractuuid_block) | **POST** /Contracts/{contractuuid}/block | Mark a contract as blocked for billing.
[**post_contracts_contractuuid_changeadvanceamount**](ContractsApi.md#post_contracts_contractuuid_changeadvanceamount) | **POST** /Contracts/{contractuuid}/changeadvanceamount | Update the advance amount for a draft contract.
[**post_contracts_contractuuid_changeservices**](ContractsApi.md#post_contracts_contractuuid_changeservices) | **POST** /Contracts/{contractuuid}/changeservices | Update the locations and services supplied on a contract.
[**post_contracts_contractuuid_sign**](ContractsApi.md#post_contracts_contractuuid_sign) | **POST** /Contracts/{contractuuid}/sign | Sign a contract.
[**post_contracts_contractuuid_terminate**](ContractsApi.md#post_contracts_contractuuid_terminate) | **POST** /Contracts/{contractuuid}/terminate | Terminate a signed contract.
[**post_contracts_contractuuid_unblock**](ContractsApi.md#post_contracts_contractuuid_unblock) | **POST** /Contracts/{contractuuid}/unblock | Mark a contract as unblocked for billing.
[**post_contracts_contractuuid_updatebillingdetails**](ContractsApi.md#post_contracts_contractuuid_updatebillingdetails) | **POST** /Contracts/{contractuuid}/updatebillingdetails | Update billing details of a contract.
[**post_contracts_contractuuid_updateexternalcontractreference**](ContractsApi.md#post_contracts_contractuuid_updateexternalcontractreference) | **POST** /Contracts/{contractuuid}/updateexternalcontractreference | Update the external contract reference.
[**post_contracts_contractuuid_updateproduct**](ContractsApi.md#post_contracts_contractuuid_updateproduct) | **POST** /Contracts/{contractuuid}/updateproduct | Update product of a contract.
[**post_contracts_entityid_customproperties**](ContractsApi.md#post_contracts_entityid_customproperties) | **POST** /Contracts/{entityId}/customproperties | /Contracts/{entityId}/customproperties - POST
[**post_contracts_filter**](ContractsApi.md#post_contracts_filter) | **POST** /Contracts/filter | Retrieve contracts based on the provided query parameters.
[**post_contracts_filter_overviewcount**](ContractsApi.md#post_contracts_filter_overviewcount) | **POST** /Contracts/filter/overviewcount | Retrieve the overview count of contracts based on the provided query parameters.
[**post_contracts_updatecostallocation**](ContractsApi.md#post_contracts_updatecostallocation) | **POST** /Contracts/updatecostallocation | Update contracts to use cost allocation for billing.
[**remove_contracted_services**](ContractsApi.md#remove_contracted_services) | **PUT** /Contracts/{contractuuid}/services/remove | Remove locations and/or services from being supplied on a contract.


# **add_contracted_services**
> ContractDTOApiResponseDTO add_contracted_services(contractuuid, zf_tuuid, zf_ouuid, add_contracted_services_request=add_contracted_services_request)

Add locations and/or services to be supplied on a contract.

Add locations and/or services to be supplied on a contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.add_contracted_services_request import AddContractedServicesRequest
from masterdata_client.models.contract_dto_api_response_dto import ContractDTOApiResponseDTO
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
    api_instance = masterdata_client.ContractsApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    add_contracted_services_request = {"supplyStartDate":"string","supplyEndDate":"string","services":[{"serviceLocationId":"string","utilityType":{},"externalIdentifier":"string","estimatedConsumptions":[{"consumerGroupId":"string","value":0,"unitOfMeasure":{},"meteringType":{},"isManualEntry":true}]}]} # AddContractedServicesRequest | The request containing new locations and services details, inluding their supply period. (optional)

    try:
        # Add locations and/or services to be supplied on a contract.
        api_response = api_instance.add_contracted_services(contractuuid, zf_tuuid, zf_ouuid, add_contracted_services_request=add_contracted_services_request)
        print("The response of ContractsApi->add_contracted_services:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->add_contracted_services: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **add_contracted_services_request** | [**AddContractedServicesRequest**](AddContractedServicesRequest.md)| The request containing new locations and services details, inluding their supply period. | [optional] 

### Return type

[**ContractDTOApiResponseDTO**](ContractDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_contracts_bulk**
> BooleanApiResponseDTO delete_contracts_bulk(zf_tuuid, zf_ouuid, bulk_remove_contract_request=bulk_remove_contract_request)

Delete multiple draft contracts in bulk.

Delete multiple draft contracts in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from masterdata_client.models.bulk_remove_contract_request import BulkRemoveContractRequest
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
    api_instance = masterdata_client.ContractsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_remove_contract_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"serviceLocationId":"string","propertyGroupIds":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","excludeTerminatedContracts":true},"quickFilter":"string"} # BulkRemoveContractRequest | The request containing bulk deletion details and query parameters to filter the contracts to be deleted. (optional)

    try:
        # Delete multiple draft contracts in bulk.
        api_response = api_instance.delete_contracts_bulk(zf_tuuid, zf_ouuid, bulk_remove_contract_request=bulk_remove_contract_request)
        print("The response of ContractsApi->delete_contracts_bulk:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->delete_contracts_bulk: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_remove_contract_request** | [**BulkRemoveContractRequest**](BulkRemoveContractRequest.md)| The request containing bulk deletion details and query parameters to filter the contracts to be deleted. | [optional] 

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
**204** | No Content |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_contracts_contractuuid**
> BooleanApiResponseDTO delete_contracts_contractuuid(contractuuid, zf_tuuid, zf_ouuid, body=body)

Delete a draft contract.

Delete a draft contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.boolean_api_response_dto import BooleanApiResponseDTO
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
    api_instance = masterdata_client.ContractsApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    body = None # object | The request containing delete details. (optional)

    try:
        # Delete a draft contract.
        api_response = api_instance.delete_contracts_contractuuid(contractuuid, zf_tuuid, zf_ouuid, body=body)
        print("The response of ContractsApi->delete_contracts_contractuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->delete_contracts_contractuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **body** | **object**| The request containing delete details. | [optional] 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_contracts_contractuuid**
> ContractDTOApiResponseDTO get_contracts_contractuuid(contractuuid, zf_tuuid, zf_ouuid)

Retrieve a contract by its ID.

Retrieve a contract by its ID.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.contract_dto_api_response_dto import ContractDTOApiResponseDTO
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
    api_instance = masterdata_client.ContractsApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Retrieve a contract by its ID.
        api_response = api_instance.get_contracts_contractuuid(contractuuid, zf_tuuid, zf_ouuid)
        print("The response of ContractsApi->get_contracts_contractuuid:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->get_contracts_contractuuid: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**ContractDTOApiResponseDTO**](ContractDTOApiResponseDTO.md)

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

# **post_contracts**
> ContractDTOApiResponseDTO post_contracts(zf_tuuid, zf_ouuid, create_contract_request=create_contract_request)

Create new contract.

Create new contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.contract_dto_api_response_dto import ContractDTOApiResponseDTO
from masterdata_client.models.create_contract_request import CreateContractRequest
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
    api_instance = masterdata_client.ContractsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    create_contract_request = {"contractorId":"string","contractNumber":"string","supplyStartDate":"string","supplyEndDate":"string","contractedServiceLocations":[{"serviceLocationId":"string","utilityType":{},"externalIdentifier":"string","estimatedConsumptions":[{"consumerGroupId":"string","value":0,"unitOfMeasure":{},"meteringType":{},"isManualEntry":true}]}],"attachmentSignatures":[{"culture":{},"attachmentFileName":"string","errorCode":{},"origin":{},"productAttachmentId":"string","attachmentFileId":"string","entityAttachmentGroupId":"string","signDate":"string","viewedDate":"string"}],"productId":"string","usePropertyGroupProduct":true,"invoiceAddress":{"streetName":"string","streetNumber":"string","streetNumberAddition":"string","postalCode":"string","buildingName":"string","locality":"string","city":"string","country":{},"localizedDisplay":"string","lineOne":"string","lineTwo":"string"},"externalContractReference":"string","billingProperties":{}} # CreateContractRequest | The request containing contract details. (optional)

    try:
        # Create new contract.
        api_response = api_instance.post_contracts(zf_tuuid, zf_ouuid, create_contract_request=create_contract_request)
        print("The response of ContractsApi->post_contracts:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **create_contract_request** | [**CreateContractRequest**](CreateContractRequest.md)| The request containing contract details. | [optional] 

### Return type

[**ContractDTOApiResponseDTO**](ContractDTOApiResponseDTO.md)

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

# **post_contracts_bulk_block**
> ApiResponseDTO post_contracts_bulk_block(zf_tuuid, zf_ouuid, bulk_block_contract_request=bulk_block_contract_request)

Mark multiple contracts as blocked in bulk.

Mark multiple contracts as blocked in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_block_contract_request import BulkBlockContractRequest
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
    api_instance = masterdata_client.ContractsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_block_contract_request = {"comment":"string","onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"serviceLocationId":"string","propertyGroupIds":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","excludeTerminatedContracts":true},"quickFilter":"string"} # BulkBlockContractRequest | The request containing bulk blocking details and query parameters to filter the contracts to be blocked. (optional)

    try:
        # Mark multiple contracts as blocked in bulk.
        api_response = api_instance.post_contracts_bulk_block(zf_tuuid, zf_ouuid, bulk_block_contract_request=bulk_block_contract_request)
        print("The response of ContractsApi->post_contracts_bulk_block:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_bulk_block: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_block_contract_request** | [**BulkBlockContractRequest**](BulkBlockContractRequest.md)| The request containing bulk blocking details and query parameters to filter the contracts to be blocked. | [optional] 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_bulk_estimate**
> ApiResponseDTO post_contracts_bulk_estimate(zf_tuuid, zf_ouuid, bulk_recalculate_eav_contract_request=bulk_recalculate_eav_contract_request)

Trigger recalculation of EAV for multiple contracts in bulk.

Trigger recalculation of EAV for multiple contracts in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_recalculate_eav_contract_request import BulkRecalculateEavContractRequest
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
    api_instance = masterdata_client.ContractsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_recalculate_eav_contract_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"serviceLocationId":"string","propertyGroupIds":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","excludeTerminatedContracts":true},"quickFilter":"string"} # BulkRecalculateEavContractRequest | The request containing bulk EAV recalculation details and query parameters to filter the contracts, which are supposed to have EAV recalculated. (optional)

    try:
        # Trigger recalculation of EAV for multiple contracts in bulk.
        api_response = api_instance.post_contracts_bulk_estimate(zf_tuuid, zf_ouuid, bulk_recalculate_eav_contract_request=bulk_recalculate_eav_contract_request)
        print("The response of ContractsApi->post_contracts_bulk_estimate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_bulk_estimate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_recalculate_eav_contract_request** | [**BulkRecalculateEavContractRequest**](BulkRecalculateEavContractRequest.md)| The request containing bulk EAV recalculation details and query parameters to filter the contracts, which are supposed to have EAV recalculated. | [optional] 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_bulk_sign**
> ContractDTOApiResponseDTO post_contracts_bulk_sign(zf_tuuid, zf_ouuid, bulk_sign_contract_request=bulk_sign_contract_request)

Sign multiple contracts in bulk.

Sign multiple contracts in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.bulk_sign_contract_request import BulkSignContractRequest
from masterdata_client.models.contract_dto_api_response_dto import ContractDTOApiResponseDTO
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
    api_instance = masterdata_client.ContractsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_sign_contract_request = {"mutationDateTime":"string","keepExistingInvoiceOnEndDate":true,"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"serviceLocationId":"string","propertyGroupIds":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","excludeTerminatedContracts":true},"quickFilter":"string"} # BulkSignContractRequest | The request containing bulk sign details and query parameters to filter the contracts to be signed. (optional)

    try:
        # Sign multiple contracts in bulk.
        api_response = api_instance.post_contracts_bulk_sign(zf_tuuid, zf_ouuid, bulk_sign_contract_request=bulk_sign_contract_request)
        print("The response of ContractsApi->post_contracts_bulk_sign:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_bulk_sign: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_sign_contract_request** | [**BulkSignContractRequest**](BulkSignContractRequest.md)| The request containing bulk sign details and query parameters to filter the contracts to be signed. | [optional] 

### Return type

[**ContractDTOApiResponseDTO**](ContractDTOApiResponseDTO.md)

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

# **post_contracts_bulk_terminate**
> ApiResponseDTO post_contracts_bulk_terminate(zf_tuuid, zf_ouuid, bulk_terminate_contract_request=bulk_terminate_contract_request)

Terminate multiple signed contracts in bulk.

Terminate multiple signed contracts in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_terminate_contract_request import BulkTerminateContractRequest
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
    api_instance = masterdata_client.ContractsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_terminate_contract_request = {"mutationDateTime":"string","keepExistingInvoiceOnEndDate":true,"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"serviceLocationId":"string","propertyGroupIds":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","excludeTerminatedContracts":true},"quickFilter":"string"} # BulkTerminateContractRequest | The request containing bulk termination details and query parameters to filter the contracts to be terminated. (optional)

    try:
        # Terminate multiple signed contracts in bulk.
        api_response = api_instance.post_contracts_bulk_terminate(zf_tuuid, zf_ouuid, bulk_terminate_contract_request=bulk_terminate_contract_request)
        print("The response of ContractsApi->post_contracts_bulk_terminate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_bulk_terminate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_terminate_contract_request** | [**BulkTerminateContractRequest**](BulkTerminateContractRequest.md)| The request containing bulk termination details and query parameters to filter the contracts to be terminated. | [optional] 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_bulk_unblock**
> ApiResponseDTO post_contracts_bulk_unblock(zf_tuuid, zf_ouuid, bulk_unblock_contract_request=bulk_unblock_contract_request)

Mark multiple contracts as unblocked in bulk.

Mark multiple contracts as unblocked in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.api_response_dto import ApiResponseDTO
from masterdata_client.models.bulk_unblock_contract_request import BulkUnblockContractRequest
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
    api_instance = masterdata_client.ContractsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_unblock_contract_request = {"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"serviceLocationId":"string","propertyGroupIds":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","excludeTerminatedContracts":true},"quickFilter":"string"} # BulkUnblockContractRequest | The request containing bulk unblocking details and query parameters to filter the contracts to be unblocked. (optional)

    try:
        # Mark multiple contracts as unblocked in bulk.
        api_response = api_instance.post_contracts_bulk_unblock(zf_tuuid, zf_ouuid, bulk_unblock_contract_request=bulk_unblock_contract_request)
        print("The response of ContractsApi->post_contracts_bulk_unblock:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_bulk_unblock: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_unblock_contract_request** | [**BulkUnblockContractRequest**](BulkUnblockContractRequest.md)| The request containing bulk unblocking details and query parameters to filter the contracts to be unblocked. | [optional] 

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
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_contracts_bulk_updateproduct**
> ContractDTOApiResponseDTO post_contracts_bulk_updateproduct(zf_tuuid, zf_ouuid, bulk_update_contract_product_request=bulk_update_contract_product_request)

Update product on multiple contracts in bulk.

Update product on multiple contracts in bulk.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.bulk_update_contract_product_request import BulkUpdateContractProductRequest
from masterdata_client.models.contract_dto_api_response_dto import ContractDTOApiResponseDTO
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
    api_instance = masterdata_client.ContractsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    bulk_update_contract_product_request = {"startDate":"string","productId":"string","parameter":{},"onlyValidate":true,"queryParams":{"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"serviceLocationId":"string","propertyGroupIds":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","excludeTerminatedContracts":true},"quickFilter":"string"} # BulkUpdateContractProductRequest | The request containing bulk product update details and query parameters to filter the contracts to be updated. (optional)

    try:
        # Update product on multiple contracts in bulk.
        api_response = api_instance.post_contracts_bulk_updateproduct(zf_tuuid, zf_ouuid, bulk_update_contract_product_request=bulk_update_contract_product_request)
        print("The response of ContractsApi->post_contracts_bulk_updateproduct:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_bulk_updateproduct: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **bulk_update_contract_product_request** | [**BulkUpdateContractProductRequest**](BulkUpdateContractProductRequest.md)| The request containing bulk product update details and query parameters to filter the contracts to be updated. | [optional] 

### Return type

[**ContractDTOApiResponseDTO**](ContractDTOApiResponseDTO.md)

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

# **post_contracts_contractuuid_block**
> ContractDTOApiResponseDTO post_contracts_contractuuid_block(contractuuid, zf_tuuid, zf_ouuid, block_contract_request=block_contract_request)

Mark a contract as blocked for billing.

Mark a contract as blocked for billing.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.block_contract_request import BlockContractRequest
from masterdata_client.models.contract_dto_api_response_dto import ContractDTOApiResponseDTO
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
    api_instance = masterdata_client.ContractsApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    block_contract_request = {"comment":"string"} # BlockContractRequest | The request containing block details. (optional)

    try:
        # Mark a contract as blocked for billing.
        api_response = api_instance.post_contracts_contractuuid_block(contractuuid, zf_tuuid, zf_ouuid, block_contract_request=block_contract_request)
        print("The response of ContractsApi->post_contracts_contractuuid_block:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_contractuuid_block: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **block_contract_request** | [**BlockContractRequest**](BlockContractRequest.md)| The request containing block details. | [optional] 

### Return type

[**ContractDTOApiResponseDTO**](ContractDTOApiResponseDTO.md)

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

# **post_contracts_contractuuid_changeadvanceamount**
> ContractDTOApiResponseDTO post_contracts_contractuuid_changeadvanceamount(contractuuid, zf_tuuid, zf_ouuid, change_draft_contract_advance_amount_request=change_draft_contract_advance_amount_request)

Update the advance amount for a draft contract.

Update the advance amount for a draft contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.change_draft_contract_advance_amount_request import ChangeDraftContractAdvanceAmountRequest
from masterdata_client.models.contract_dto_api_response_dto import ContractDTOApiResponseDTO
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
    api_instance = masterdata_client.ContractsApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    change_draft_contract_advance_amount_request = {"newAdvanceAmount":0} # ChangeDraftContractAdvanceAmountRequest | The request containing new advance amount details. (optional)

    try:
        # Update the advance amount for a draft contract.
        api_response = api_instance.post_contracts_contractuuid_changeadvanceamount(contractuuid, zf_tuuid, zf_ouuid, change_draft_contract_advance_amount_request=change_draft_contract_advance_amount_request)
        print("The response of ContractsApi->post_contracts_contractuuid_changeadvanceamount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_contractuuid_changeadvanceamount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **change_draft_contract_advance_amount_request** | [**ChangeDraftContractAdvanceAmountRequest**](ChangeDraftContractAdvanceAmountRequest.md)| The request containing new advance amount details. | [optional] 

### Return type

[**ContractDTOApiResponseDTO**](ContractDTOApiResponseDTO.md)

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

# **post_contracts_contractuuid_changeservices**
> ContractDTOApiResponseDTO post_contracts_contractuuid_changeservices(contractuuid, zf_tuuid, zf_ouuid, change_contracted_services_request=change_contracted_services_request)

Update the locations and services supplied on a contract.

This action may affect supply period and status of other contracts supplied on the referenced locations.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.change_contracted_services_request import ChangeContractedServicesRequest
from masterdata_client.models.contract_dto_api_response_dto import ContractDTOApiResponseDTO
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
    api_instance = masterdata_client.ContractsApi(api_client)
    contractuuid = 'contractuuid_example' # str | The unique identifier of the contract.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    change_contracted_services_request = {"services":[{"serviceLocationId":"string","utilityType":{},"externalIdentifier":"string","estimatedConsumptions":[{"consumerGroupId":"string","value":0,"unitOfMeasure":{},"meteringType":{},"isManualEntry":true}]}]} # ChangeContractedServicesRequest | The request containing all requested locations, services and their details. (optional)

    try:
        # Update the locations and services supplied on a contract.
        api_response = api_instance.post_contracts_contractuuid_changeservices(contractuuid, zf_tuuid, zf_ouuid, change_contracted_services_request=change_contracted_services_request)
        print("The response of ContractsApi->post_contracts_contractuuid_changeservices:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_contractuuid_changeservices: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The unique identifier of the contract. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **change_contracted_services_request** | [**ChangeContractedServicesRequest**](ChangeContractedServicesRequest.md)| The request containing all requested locations, services and their details. | [optional] 

### Return type

[**ContractDTOApiResponseDTO**](ContractDTOApiResponseDTO.md)

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

# **post_contracts_contractuuid_sign**
> ContractDTOApiResponseDTO post_contracts_contractuuid_sign(contractuuid, zf_tuuid, zf_ouuid, sign_contract_request=sign_contract_request)

Sign a contract.

Sign a contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.contract_dto_api_response_dto import ContractDTOApiResponseDTO
from masterdata_client.models.sign_contract_request import SignContractRequest
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
    api_instance = masterdata_client.ContractsApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    sign_contract_request = {"mutationDateTime":"string","keepExistingInvoiceOnEndDate":true} # SignContractRequest | The request containing sign details. (optional)

    try:
        # Sign a contract.
        api_response = api_instance.post_contracts_contractuuid_sign(contractuuid, zf_tuuid, zf_ouuid, sign_contract_request=sign_contract_request)
        print("The response of ContractsApi->post_contracts_contractuuid_sign:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_contractuuid_sign: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **sign_contract_request** | [**SignContractRequest**](SignContractRequest.md)| The request containing sign details. | [optional] 

### Return type

[**ContractDTOApiResponseDTO**](ContractDTOApiResponseDTO.md)

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

# **post_contracts_contractuuid_terminate**
> ContractDTOApiResponseDTO post_contracts_contractuuid_terminate(contractuuid, zf_tuuid, zf_ouuid, terminate_contract_request=terminate_contract_request)

Terminate a signed contract.

Terminate a signed contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.contract_dto_api_response_dto import ContractDTOApiResponseDTO
from masterdata_client.models.terminate_contract_request import TerminateContractRequest
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
    api_instance = masterdata_client.ContractsApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    terminate_contract_request = {"mutationDateTime":"string","keepExistingInvoiceOnEndDate":true} # TerminateContractRequest | The request containing termination details. (optional)

    try:
        # Terminate a signed contract.
        api_response = api_instance.post_contracts_contractuuid_terminate(contractuuid, zf_tuuid, zf_ouuid, terminate_contract_request=terminate_contract_request)
        print("The response of ContractsApi->post_contracts_contractuuid_terminate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_contractuuid_terminate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **terminate_contract_request** | [**TerminateContractRequest**](TerminateContractRequest.md)| The request containing termination details. | [optional] 

### Return type

[**ContractDTOApiResponseDTO**](ContractDTOApiResponseDTO.md)

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

# **post_contracts_contractuuid_unblock**
> ContractDTOApiResponseDTO post_contracts_contractuuid_unblock(contractuuid, zf_tuuid, zf_ouuid, body=body)

Mark a contract as unblocked for billing.

Mark a contract as unblocked for billing.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.contract_dto_api_response_dto import ContractDTOApiResponseDTO
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
    api_instance = masterdata_client.ContractsApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    body = None # object | The request containing unblock details. (optional)

    try:
        # Mark a contract as unblocked for billing.
        api_response = api_instance.post_contracts_contractuuid_unblock(contractuuid, zf_tuuid, zf_ouuid, body=body)
        print("The response of ContractsApi->post_contracts_contractuuid_unblock:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_contractuuid_unblock: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **body** | **object**| The request containing unblock details. | [optional] 

### Return type

[**ContractDTOApiResponseDTO**](ContractDTOApiResponseDTO.md)

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

# **post_contracts_contractuuid_updatebillingdetails**
> ContractDTOApiResponseDTO post_contracts_contractuuid_updatebillingdetails(contractuuid, zf_tuuid, zf_ouuid, update_contract_billing_details_request=update_contract_billing_details_request)

Update billing details of a contract.

Update billing details of a contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.contract_dto_api_response_dto import ContractDTOApiResponseDTO
from masterdata_client.models.update_contract_billing_details_request import UpdateContractBillingDetailsRequest
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
    api_instance = masterdata_client.ContractsApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_contract_billing_details_request = {"paymentTermsId":"string"} # UpdateContractBillingDetailsRequest | The request containing billing details. (optional)

    try:
        # Update billing details of a contract.
        api_response = api_instance.post_contracts_contractuuid_updatebillingdetails(contractuuid, zf_tuuid, zf_ouuid, update_contract_billing_details_request=update_contract_billing_details_request)
        print("The response of ContractsApi->post_contracts_contractuuid_updatebillingdetails:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_contractuuid_updatebillingdetails: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_contract_billing_details_request** | [**UpdateContractBillingDetailsRequest**](UpdateContractBillingDetailsRequest.md)| The request containing billing details. | [optional] 

### Return type

[**ContractDTOApiResponseDTO**](ContractDTOApiResponseDTO.md)

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

# **post_contracts_contractuuid_updateexternalcontractreference**
> ContractDTOApiResponseDTO post_contracts_contractuuid_updateexternalcontractreference(contractuuid, zf_tuuid, zf_ouuid, update_external_contract_reference_request=update_external_contract_reference_request)

Update the external contract reference.

Update the external contract reference.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.contract_dto_api_response_dto import ContractDTOApiResponseDTO
from masterdata_client.models.update_external_contract_reference_request import UpdateExternalContractReferenceRequest
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
    api_instance = masterdata_client.ContractsApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_external_contract_reference_request = {"externalContractReference":"string"} # UpdateExternalContractReferenceRequest | The request containing external contract reference details. (optional)

    try:
        # Update the external contract reference.
        api_response = api_instance.post_contracts_contractuuid_updateexternalcontractreference(contractuuid, zf_tuuid, zf_ouuid, update_external_contract_reference_request=update_external_contract_reference_request)
        print("The response of ContractsApi->post_contracts_contractuuid_updateexternalcontractreference:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_contractuuid_updateexternalcontractreference: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_external_contract_reference_request** | [**UpdateExternalContractReferenceRequest**](UpdateExternalContractReferenceRequest.md)| The request containing external contract reference details. | [optional] 

### Return type

[**ContractDTOApiResponseDTO**](ContractDTOApiResponseDTO.md)

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

# **post_contracts_contractuuid_updateproduct**
> ContractDTOApiResponseDTO post_contracts_contractuuid_updateproduct(contractuuid, zf_tuuid, zf_ouuid, update_contract_product_request=update_contract_product_request)

Update product of a contract.

Update product of a contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.contract_dto_api_response_dto import ContractDTOApiResponseDTO
from masterdata_client.models.update_contract_product_request import UpdateContractProductRequest
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
    api_instance = masterdata_client.ContractsApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_contract_product_request = {"startDate":"string","productId":"string","parameter":{}} # UpdateContractProductRequest | The request containing product change details. (optional)

    try:
        # Update product of a contract.
        api_response = api_instance.post_contracts_contractuuid_updateproduct(contractuuid, zf_tuuid, zf_ouuid, update_contract_product_request=update_contract_product_request)
        print("The response of ContractsApi->post_contracts_contractuuid_updateproduct:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_contractuuid_updateproduct: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_contract_product_request** | [**UpdateContractProductRequest**](UpdateContractProductRequest.md)| The request containing product change details. | [optional] 

### Return type

[**ContractDTOApiResponseDTO**](ContractDTOApiResponseDTO.md)

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

# **post_contracts_entityid_customproperties**
> ContractDTOApiResponseDTO post_contracts_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)

/Contracts/{entityId}/customproperties - POST

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.contract_dto_api_response_dto import ContractDTOApiResponseDTO
from masterdata_client.models.update_custom_entity_properties_request import UpdateCustomEntityPropertiesRequest
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
    api_instance = masterdata_client.ContractsApi(api_client)
    entity_id = 'entity_id_example' # str | 
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_custom_entity_properties_request = {"properties":[{"customEntityPropertyTypeId":"string","values":[{"startDateTime":"string","endDateTime":"string","valueDecimal":0,"valueString":"string","valueBoolean":true,"valueNumber":0,"valueDateTime":"string","valueDropdown":["string"]}]}]} # UpdateCustomEntityPropertiesRequest |  (optional)

    try:
        # /Contracts/{entityId}/customproperties - POST
        api_response = api_instance.post_contracts_entityid_customproperties(entity_id, zf_tuuid, zf_ouuid, update_custom_entity_properties_request=update_custom_entity_properties_request)
        print("The response of ContractsApi->post_contracts_entityid_customproperties:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_entityid_customproperties: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_id** | **str**|  | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_custom_entity_properties_request** | [**UpdateCustomEntityPropertiesRequest**](UpdateCustomEntityPropertiesRequest.md)|  | [optional] 

### Return type

[**ContractDTOApiResponseDTO**](ContractDTOApiResponseDTO.md)

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

# **post_contracts_filter**
> ContractDTOPagedResponseModelDTOApiResponseDTO post_contracts_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_contracts_query_params=get_contracts_query_params)

Retrieve contracts based on the provided query parameters.

Retrieve contracts based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.contract_dto_paged_response_model_dto_api_response_dto import ContractDTOPagedResponseModelDTOApiResponseDTO
from masterdata_client.models.get_contracts_query_params import GetContractsQueryParams
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
    api_instance = masterdata_client.ContractsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    name = 'name_example' # str |  (optional)
    id = 56 # int | Format - int32. (optional)
    order_by = 'order_by_example' # str | Allows to order the contracts. (optional)
    continuation_token = 'continuation_token_example' # str | Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. (optional)
    get_contracts_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"serviceLocationId":"string","propertyGroupIds":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","excludeTerminatedContracts":true} # GetContractsQueryParams | Allows to search on fields within the contracts. (optional)

    try:
        # Retrieve contracts based on the provided query parameters.
        api_response = api_instance.post_contracts_filter(zf_tuuid, zf_ouuid, name=name, id=id, order_by=order_by, continuation_token=continuation_token, get_contracts_query_params=get_contracts_query_params)
        print("The response of ContractsApi->post_contracts_filter:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_filter: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **name** | **str**|  | [optional] 
 **id** | **int**| Format - int32. | [optional] 
 **order_by** | **str**| Allows to order the contracts. | [optional] 
 **continuation_token** | **str**| Token which allows you to fetch the next records. The continuation token is returned in the response and can be reused in the next request to fetch additional data. | [optional] 
 **get_contracts_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md)| Allows to search on fields within the contracts. | [optional] 

### Return type

[**ContractDTOPagedResponseModelDTOApiResponseDTO**](ContractDTOPagedResponseModelDTOApiResponseDTO.md)

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

# **post_contracts_filter_overviewcount**
> ContractOverviewCountDTOApiResponseDTO post_contracts_filter_overviewcount(zf_tuuid, zf_ouuid, get_contracts_query_params=get_contracts_query_params)

Retrieve the overview count of contracts based on the provided query parameters.

Retrieve the overview count of contracts based on the provided query parameters.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.contract_overview_count_dto_api_response_dto import ContractOverviewCountDTOApiResponseDTO
from masterdata_client.models.get_contracts_query_params import GetContractsQueryParams
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
    api_instance = masterdata_client.ContractsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    get_contracts_query_params = {"flexSearch":"string","includeOnlyIds":["string"],"excludeIds":["string"],"serviceLocationId":"string","propertyGroupIds":["string"],"customerGroupId":"string","customerId":"string","customerType":"string","productId":"string","excludeTerminatedContracts":true} # GetContractsQueryParams | Allows to search on fields within the contracts. (optional)

    try:
        # Retrieve the overview count of contracts based on the provided query parameters.
        api_response = api_instance.post_contracts_filter_overviewcount(zf_tuuid, zf_ouuid, get_contracts_query_params=get_contracts_query_params)
        print("The response of ContractsApi->post_contracts_filter_overviewcount:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_filter_overviewcount: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **get_contracts_query_params** | [**GetContractsQueryParams**](GetContractsQueryParams.md)| Allows to search on fields within the contracts. | [optional] 

### Return type

[**ContractOverviewCountDTOApiResponseDTO**](ContractOverviewCountDTOApiResponseDTO.md)

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

# **post_contracts_updatecostallocation**
> BooleanApiResponseDTO post_contracts_updatecostallocation(zf_tuuid, zf_ouuid, update_contracts_for_cost_allocation_request=update_contracts_for_cost_allocation_request)

Update contracts to use cost allocation for billing.

This action is irreversible.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.boolean_api_response_dto import BooleanApiResponseDTO
from masterdata_client.models.update_contracts_for_cost_allocation_request import UpdateContractsForCostAllocationRequest
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
    api_instance = masterdata_client.ContractsApi(api_client)
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    update_contracts_for_cost_allocation_request = {"contractIds":["string"]} # UpdateContractsForCostAllocationRequest | The request containing contracts that should start using cost allocation. (optional)

    try:
        # Update contracts to use cost allocation for billing.
        api_response = api_instance.post_contracts_updatecostallocation(zf_tuuid, zf_ouuid, update_contracts_for_cost_allocation_request=update_contracts_for_cost_allocation_request)
        print("The response of ContractsApi->post_contracts_updatecostallocation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->post_contracts_updatecostallocation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **update_contracts_for_cost_allocation_request** | [**UpdateContractsForCostAllocationRequest**](UpdateContractsForCostAllocationRequest.md)| The request containing contracts that should start using cost allocation. | [optional] 

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
**200** | Success |  -  |
**400** | Bad Request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_contracted_services**
> ContractDTOApiResponseDTO remove_contracted_services(contractuuid, zf_tuuid, zf_ouuid, remove_contracted_services_request=remove_contracted_services_request)

Remove locations and/or services from being supplied on a contract.

Remove locations and/or services from being supplied on a contract.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import masterdata_client
from masterdata_client.models.contract_dto_api_response_dto import ContractDTOApiResponseDTO
from masterdata_client.models.remove_contracted_services_request import RemoveContractedServicesRequest
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
    api_instance = masterdata_client.ContractsApi(api_client)
    contractuuid = 'contractuuid_example' # str | The ID of the contract.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    remove_contracted_services_request = {"supplyEndDate":"string","services":[{"serviceLocationId":"string","utilityType":{},"externalIdentifier":"string","estimatedConsumptions":[{"consumerGroupId":"string","value":0,"unitOfMeasure":{},"meteringType":{},"isManualEntry":true}]}]} # RemoveContractedServicesRequest | The request containing locations and services to be removed, including their supply end date. (optional)

    try:
        # Remove locations and/or services from being supplied on a contract.
        api_response = api_instance.remove_contracted_services(contractuuid, zf_tuuid, zf_ouuid, remove_contracted_services_request=remove_contracted_services_request)
        print("The response of ContractsApi->remove_contracted_services:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContractsApi->remove_contracted_services: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contractuuid** | **str**| The ID of the contract. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **remove_contracted_services_request** | [**RemoveContractedServicesRequest**](RemoveContractedServicesRequest.md)| The request containing locations and services to be removed, including their supply end date. | [optional] 

### Return type

[**ContractDTOApiResponseDTO**](ContractDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**404** | Not Found |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

