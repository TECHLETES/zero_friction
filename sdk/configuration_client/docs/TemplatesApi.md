# configuration_client.TemplatesApi

All URIs are relative to *https://api.zerofriction.co/api/cfg*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_templates_entitysubjecttype_entitysubjectsubtype_templateusecase**](TemplatesApi.md#delete_templates_entitysubjecttype_entitysubjectsubtype_templateusecase) | **DELETE** /Templates/{entitySubjectType}/{entitySubjectSubType}/{templateUsecase} | Removes a custom template for a specific scenario.
[**post_templates_entitysubjecttype_entitysubjectsubtype_email_culture_send**](TemplatesApi.md#post_templates_entitysubjecttype_entitysubjectsubtype_email_culture_send) | **POST** /Templates/{entitySubjectType}/{entitySubjectSubType}/email/{culture}/send | Send a test mail using a template.
[**post_templates_entitysubjecttype_entitysubjectsubtype_pdf_culture_preview**](TemplatesApi.md#post_templates_entitysubjecttype_entitysubjectsubtype_pdf_culture_preview) | **POST** /Templates/{entitySubjectType}/{entitySubjectSubType}/pdf/{culture}/preview | Generates a PDF preview of a template.
[**post_templates_entitysubjecttype_entitysubjectsubtype_templateusecase_cultur**](TemplatesApi.md#post_templates_entitysubjecttype_entitysubjectsubtype_templateusecase_cultur) | **POST** /Templates/{entitySubjectType}/{entitySubjectSubType}/{templateUsecase}/{culture}/html | Tests and previews a template in HTML format.
[**post_templates_entitysubjecttype_entitysubjectsubtype_templateusecase_downlo**](TemplatesApi.md#post_templates_entitysubjecttype_entitysubjectsubtype_templateusecase_downlo) | **POST** /Templates/{entitySubjectType}/{entitySubjectSubType}/{templateUsecase}/download | Downloads a template for a specific scenario.
[**put_templates_entitysubjecttype_entitysubjectsubtype_templateusecase**](TemplatesApi.md#put_templates_entitysubjecttype_entitysubjectsubtype_templateusecase) | **PUT** /Templates/{entitySubjectType}/{entitySubjectSubType}/{templateUsecase} | Uploads a custom template for a specific scenario.


# **delete_templates_entitysubjecttype_entitysubjectsubtype_templateusecase**
> IScenarioDTOApiResponseDTO delete_templates_entitysubjecttype_entitysubjectsubtype_templateusecase(entity_subject_type, entity_subject_sub_type, template_usecase, zf_tuuid, zf_ouuid)

Removes a custom template for a specific scenario.

Removes a custom template for a specific scenario.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.i_scenario_dto_api_response_dto import IScenarioDTOApiResponseDTO
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
    api_instance = configuration_client.TemplatesApi(api_client)
    entity_subject_type = 'entity_subject_type_example' # str | The type of entity subject.
    entity_subject_sub_type = 'entity_subject_sub_type_example' # str | The subtype of entity subject.
    template_usecase = 'template_usecase_example' # str | The template use case.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Removes a custom template for a specific scenario.
        api_response = api_instance.delete_templates_entitysubjecttype_entitysubjectsubtype_templateusecase(entity_subject_type, entity_subject_sub_type, template_usecase, zf_tuuid, zf_ouuid)
        print("The response of TemplatesApi->delete_templates_entitysubjecttype_entitysubjectsubtype_templateusecase:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplatesApi->delete_templates_entitysubjecttype_entitysubjectsubtype_templateusecase: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_subject_type** | **str**| The type of entity subject. | 
 **entity_subject_sub_type** | **str**| The subtype of entity subject. | 
 **template_usecase** | **str**| The template use case. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

[**IScenarioDTOApiResponseDTO**](IScenarioDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_templates_entitysubjecttype_entitysubjectsubtype_email_culture_send**
> BooleanApiResponseDTO post_templates_entitysubjecttype_entitysubjectsubtype_email_culture_send(entity_subject_type, entity_subject_sub_type, culture, zf_tuuid, zf_ouuid, email_receiver=email_receiver, payment_method=payment_method, auto_settlement=auto_settlement, customer_balance=customer_balance, invoice_amount=invoice_amount, number_of_addresses=number_of_addresses, show_charts_placeholder=show_charts_placeholder)

Send a test mail using a template.

Send a test mail using a template.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.boolean_api_response_dto import BooleanApiResponseDTO
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
    api_instance = configuration_client.TemplatesApi(api_client)
    entity_subject_type = 'entity_subject_type_example' # str | The type of entity subject.
    entity_subject_sub_type = 'entity_subject_sub_type_example' # str | The subtype of entity subject.
    culture = configuration_client.CultureInfo() # CultureInfo | The culture information for localization.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    email_receiver = 'email_receiver_example' # str | The email address of the recipient. (optional)
    payment_method = 'payment_method_example' # str |  (optional)
    auto_settlement = True # bool |  (optional)
    customer_balance = 'customer_balance_example' # str |  (optional)
    invoice_amount = 'invoice_amount_example' # str |  (optional)
    number_of_addresses = 'number_of_addresses_example' # str |  (optional)
    show_charts_placeholder = True # bool |  (optional)

    try:
        # Send a test mail using a template.
        api_response = api_instance.post_templates_entitysubjecttype_entitysubjectsubtype_email_culture_send(entity_subject_type, entity_subject_sub_type, culture, zf_tuuid, zf_ouuid, email_receiver=email_receiver, payment_method=payment_method, auto_settlement=auto_settlement, customer_balance=customer_balance, invoice_amount=invoice_amount, number_of_addresses=number_of_addresses, show_charts_placeholder=show_charts_placeholder)
        print("The response of TemplatesApi->post_templates_entitysubjecttype_entitysubjectsubtype_email_culture_send:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplatesApi->post_templates_entitysubjecttype_entitysubjectsubtype_email_culture_send: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_subject_type** | **str**| The type of entity subject. | 
 **entity_subject_sub_type** | **str**| The subtype of entity subject. | 
 **culture** | **CultureInfo**| The culture information for localization. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **email_receiver** | **str**| The email address of the recipient. | [optional] 
 **payment_method** | **str**|  | [optional] 
 **auto_settlement** | **bool**|  | [optional] 
 **customer_balance** | **str**|  | [optional] 
 **invoice_amount** | **str**|  | [optional] 
 **number_of_addresses** | **str**|  | [optional] 
 **show_charts_placeholder** | **bool**|  | [optional] 

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
**400** | Bad Request |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_templates_entitysubjecttype_entitysubjectsubtype_pdf_culture_preview**
> bytearray post_templates_entitysubjecttype_entitysubjectsubtype_pdf_culture_preview(entity_subject_type, entity_subject_sub_type, culture, zf_tuuid, zf_ouuid, payment_method=payment_method, auto_settlement=auto_settlement, customer_balance=customer_balance, invoice_amount=invoice_amount, number_of_addresses=number_of_addresses, show_charts_placeholder=show_charts_placeholder)

Generates a PDF preview of a template.

Generates a PDF preview of a template.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
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
    api_instance = configuration_client.TemplatesApi(api_client)
    entity_subject_type = 'entity_subject_type_example' # str | The type of entity subject.
    entity_subject_sub_type = 'entity_subject_sub_type_example' # str | The subtype of entity subject.
    culture = configuration_client.CultureInfo() # CultureInfo | The culture information for localization.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    payment_method = 'payment_method_example' # str |  (optional)
    auto_settlement = True # bool |  (optional)
    customer_balance = 'customer_balance_example' # str |  (optional)
    invoice_amount = 'invoice_amount_example' # str |  (optional)
    number_of_addresses = 'number_of_addresses_example' # str |  (optional)
    show_charts_placeholder = True # bool |  (optional)

    try:
        # Generates a PDF preview of a template.
        api_response = api_instance.post_templates_entitysubjecttype_entitysubjectsubtype_pdf_culture_preview(entity_subject_type, entity_subject_sub_type, culture, zf_tuuid, zf_ouuid, payment_method=payment_method, auto_settlement=auto_settlement, customer_balance=customer_balance, invoice_amount=invoice_amount, number_of_addresses=number_of_addresses, show_charts_placeholder=show_charts_placeholder)
        print("The response of TemplatesApi->post_templates_entitysubjecttype_entitysubjectsubtype_pdf_culture_preview:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplatesApi->post_templates_entitysubjecttype_entitysubjectsubtype_pdf_culture_preview: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_subject_type** | **str**| The type of entity subject. | 
 **entity_subject_sub_type** | **str**| The subtype of entity subject. | 
 **culture** | **CultureInfo**| The culture information for localization. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **payment_method** | **str**|  | [optional] 
 **auto_settlement** | **bool**|  | [optional] 
 **customer_balance** | **str**|  | [optional] 
 **invoice_amount** | **str**|  | [optional] 
 **number_of_addresses** | **str**|  | [optional] 
 **show_charts_placeholder** | **bool**|  | [optional] 

### Return type

**bytearray**

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

# **post_templates_entitysubjecttype_entitysubjectsubtype_templateusecase_cultur**
> ContentResult post_templates_entitysubjecttype_entitysubjectsubtype_templateusecase_cultur(entity_subject_type, entity_subject_sub_type, template_usecase, culture, zf_tuuid, zf_ouuid, wrap_labels=wrap_labels, show_labels=show_labels, payment_method=payment_method, auto_settlement=auto_settlement, customer_balance=customer_balance, invoice_amount=invoice_amount, number_of_addresses=number_of_addresses, show_charts_placeholder=show_charts_placeholder)

Tests and previews a template in HTML format.

Tests and previews a template in HTML format.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.content_result import ContentResult
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
    api_instance = configuration_client.TemplatesApi(api_client)
    entity_subject_type = 'entity_subject_type_example' # str | The type of entity subject.
    entity_subject_sub_type = 'entity_subject_sub_type_example' # str | The subtype of entity subject.
    template_usecase = 'template_usecase_example' # str | The template use case.
    culture = configuration_client.CultureInfo() # CultureInfo | The culture information for localization.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    wrap_labels = True # bool | Whether to wrap labels in the output. (optional)
    show_labels = True # bool | Whether to display labels in the output. (optional)
    payment_method = 'payment_method_example' # str |  (optional)
    auto_settlement = True # bool |  (optional)
    customer_balance = 'customer_balance_example' # str |  (optional)
    invoice_amount = 'invoice_amount_example' # str |  (optional)
    number_of_addresses = 'number_of_addresses_example' # str |  (optional)
    show_charts_placeholder = True # bool |  (optional)

    try:
        # Tests and previews a template in HTML format.
        api_response = api_instance.post_templates_entitysubjecttype_entitysubjectsubtype_templateusecase_cultur(entity_subject_type, entity_subject_sub_type, template_usecase, culture, zf_tuuid, zf_ouuid, wrap_labels=wrap_labels, show_labels=show_labels, payment_method=payment_method, auto_settlement=auto_settlement, customer_balance=customer_balance, invoice_amount=invoice_amount, number_of_addresses=number_of_addresses, show_charts_placeholder=show_charts_placeholder)
        print("The response of TemplatesApi->post_templates_entitysubjecttype_entitysubjectsubtype_templateusecase_cultur:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplatesApi->post_templates_entitysubjecttype_entitysubjectsubtype_templateusecase_cultur: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_subject_type** | **str**| The type of entity subject. | 
 **entity_subject_sub_type** | **str**| The subtype of entity subject. | 
 **template_usecase** | **str**| The template use case. | 
 **culture** | **CultureInfo**| The culture information for localization. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **wrap_labels** | **bool**| Whether to wrap labels in the output. | [optional] 
 **show_labels** | **bool**| Whether to display labels in the output. | [optional] 
 **payment_method** | **str**|  | [optional] 
 **auto_settlement** | **bool**|  | [optional] 
 **customer_balance** | **str**|  | [optional] 
 **invoice_amount** | **str**|  | [optional] 
 **number_of_addresses** | **str**|  | [optional] 
 **show_charts_placeholder** | **bool**|  | [optional] 

### Return type

[**ContentResult**](ContentResult.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_templates_entitysubjecttype_entitysubjectsubtype_templateusecase_downlo**
> bytearray post_templates_entitysubjecttype_entitysubjectsubtype_templateusecase_downlo(entity_subject_type, entity_subject_sub_type, template_usecase, zf_tuuid, zf_ouuid)

Downloads a template for a specific scenario.

Downloads a template for a specific scenario.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
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
    api_instance = configuration_client.TemplatesApi(api_client)
    entity_subject_type = 'entity_subject_type_example' # str | The type of entity subject.
    entity_subject_sub_type = 'entity_subject_sub_type_example' # str | The subtype of entity subject.
    template_usecase = 'template_usecase_example' # str | The template use case.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID

    try:
        # Downloads a template for a specific scenario.
        api_response = api_instance.post_templates_entitysubjecttype_entitysubjectsubtype_templateusecase_downlo(entity_subject_type, entity_subject_sub_type, template_usecase, zf_tuuid, zf_ouuid)
        print("The response of TemplatesApi->post_templates_entitysubjecttype_entitysubjectsubtype_templateusecase_downlo:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplatesApi->post_templates_entitysubjecttype_entitysubjectsubtype_templateusecase_downlo: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_subject_type** | **str**| The type of entity subject. | 
 **entity_subject_sub_type** | **str**| The subtype of entity subject. | 
 **template_usecase** | **str**| The template use case. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 

### Return type

**bytearray**

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_templates_entitysubjecttype_entitysubjectsubtype_templateusecase**
> IScenarioDTOApiResponseDTO put_templates_entitysubjecttype_entitysubjectsubtype_templateusecase(entity_subject_type, entity_subject_sub_type, template_usecase, zf_tuuid, zf_ouuid, content_type=content_type, content_disposition=content_disposition, headers=headers, length=length, name=name, file_name=file_name)

Uploads a custom template for a specific scenario.

Uploads a custom template for a specific scenario.

### Example

* Api Key Authentication (apiKeyQuery):
* Api Key Authentication (apiKeyHeader):

```python
import configuration_client
from configuration_client.models.i_scenario_dto_api_response_dto import IScenarioDTOApiResponseDTO
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
    api_instance = configuration_client.TemplatesApi(api_client)
    entity_subject_type = 'entity_subject_type_example' # str | The type of entity subject.
    entity_subject_sub_type = 'entity_subject_sub_type_example' # str | The subtype of entity subject.
    template_usecase = 'template_usecase_example' # str | The template use case.
    zf_tuuid = '{{zf-tuuid}}' # str | Format - uuid. Tenant ID
    zf_ouuid = '{{zf-ouuid}}' # str | Format - uuid. Organisation ID
    content_type = 'content_type_example' # str |  (optional)
    content_disposition = 'content_disposition_example' # str |  (optional)
    headers = None # object |  (optional)
    length = 56 # int |  (optional)
    name = 'name_example' # str |  (optional)
    file_name = 'file_name_example' # str |  (optional)

    try:
        # Uploads a custom template for a specific scenario.
        api_response = api_instance.put_templates_entitysubjecttype_entitysubjectsubtype_templateusecase(entity_subject_type, entity_subject_sub_type, template_usecase, zf_tuuid, zf_ouuid, content_type=content_type, content_disposition=content_disposition, headers=headers, length=length, name=name, file_name=file_name)
        print("The response of TemplatesApi->put_templates_entitysubjecttype_entitysubjectsubtype_templateusecase:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TemplatesApi->put_templates_entitysubjecttype_entitysubjectsubtype_templateusecase: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **entity_subject_type** | **str**| The type of entity subject. | 
 **entity_subject_sub_type** | **str**| The subtype of entity subject. | 
 **template_usecase** | **str**| The template use case. | 
 **zf_tuuid** | **str**| Format - uuid. Tenant ID | 
 **zf_ouuid** | **str**| Format - uuid. Organisation ID | 
 **content_type** | **str**|  | [optional] 
 **content_disposition** | **str**|  | [optional] 
 **headers** | [**object**](object.md)|  | [optional] 
 **length** | **int**|  | [optional] 
 **name** | **str**|  | [optional] 
 **file_name** | **str**|  | [optional] 

### Return type

[**IScenarioDTOApiResponseDTO**](IScenarioDTOApiResponseDTO.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/x-www-form-urlencoded
 - **Accept**: text/plain, application/json, text/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | Bad Request |  -  |
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

