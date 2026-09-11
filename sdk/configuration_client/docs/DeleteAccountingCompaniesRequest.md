# DeleteAccountingCompaniesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accounting_company_ids** | **List[str]** |  |

## Example

```python
from configuration_client.models.delete_accounting_companies_request import DeleteAccountingCompaniesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteAccountingCompaniesRequest from a JSON string
delete_accounting_companies_request_instance = DeleteAccountingCompaniesRequest.from_json(json)
# print the JSON string representation of the object
print(DeleteAccountingCompaniesRequest.to_json())

# convert the object into a dict
delete_accounting_companies_request_dict = delete_accounting_companies_request_instance.to_dict()
# create an instance of DeleteAccountingCompaniesRequest from a dict
delete_accounting_companies_request_from_dict = DeleteAccountingCompaniesRequest.from_dict(delete_accounting_companies_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
