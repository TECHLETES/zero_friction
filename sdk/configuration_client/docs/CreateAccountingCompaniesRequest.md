# CreateAccountingCompaniesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accounting_companies** | [**List[CreateAccountingCompanyRequest]**](CreateAccountingCompanyRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.create_accounting_companies_request import CreateAccountingCompaniesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateAccountingCompaniesRequest from a JSON string
create_accounting_companies_request_instance = CreateAccountingCompaniesRequest.from_json(json)
# print the JSON string representation of the object
print(CreateAccountingCompaniesRequest.to_json())

# convert the object into a dict
create_accounting_companies_request_dict = create_accounting_companies_request_instance.to_dict()
# create an instance of CreateAccountingCompaniesRequest from a dict
create_accounting_companies_request_from_dict = CreateAccountingCompaniesRequest.from_dict(create_accounting_companies_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


