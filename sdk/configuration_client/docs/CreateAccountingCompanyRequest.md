# CreateAccountingCompanyRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**description** | **str** |  | [optional] 
**metadata** | [**ExternalAccountingMetadataRequest**](ExternalAccountingMetadataRequest.md) |  | 

## Example

```python
from configuration_client.models.create_accounting_company_request import CreateAccountingCompanyRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateAccountingCompanyRequest from a JSON string
create_accounting_company_request_instance = CreateAccountingCompanyRequest.from_json(json)
# print the JSON string representation of the object
print(CreateAccountingCompanyRequest.to_json())

# convert the object into a dict
create_accounting_company_request_dict = create_accounting_company_request_instance.to_dict()
# create an instance of CreateAccountingCompanyRequest from a dict
create_accounting_company_request_from_dict = CreateAccountingCompanyRequest.from_dict(create_accounting_company_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


