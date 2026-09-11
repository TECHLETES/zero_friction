# LinkAccountingCompanyRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accounting_company_id** | **str** |  | [optional] 
**bank_journal_id** | **str** |  | [optional] 
**sales_journal_id** | **str** |  | [optional] 
**default_collection_account_id** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.link_accounting_company_request import LinkAccountingCompanyRequest

# TODO update the JSON string below
json = "{}"
# create an instance of LinkAccountingCompanyRequest from a JSON string
link_accounting_company_request_instance = LinkAccountingCompanyRequest.from_json(json)
# print the JSON string representation of the object
print(LinkAccountingCompanyRequest.to_json())

# convert the object into a dict
link_accounting_company_request_dict = link_accounting_company_request_instance.to_dict()
# create an instance of LinkAccountingCompanyRequest from a dict
link_accounting_company_request_from_dict = LinkAccountingCompanyRequest.from_dict(link_accounting_company_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


