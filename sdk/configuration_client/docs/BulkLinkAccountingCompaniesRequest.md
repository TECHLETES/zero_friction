# BulkLinkAccountingCompaniesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**PagedAccountingCompanyMappingQueryParams**](PagedAccountingCompanyMappingQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]
**accounting_company_id** | **str** |  | [optional]
**bank_journal_id** | **str** |  | [optional]
**sales_journal_id** | **str** |  | [optional]
**default_collection_account_id** | **str** |  | [optional]

## Example

```python
from configuration_client.models.bulk_link_accounting_companies_request import BulkLinkAccountingCompaniesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkLinkAccountingCompaniesRequest from a JSON string
bulk_link_accounting_companies_request_instance = BulkLinkAccountingCompaniesRequest.from_json(json)
# print the JSON string representation of the object
print(BulkLinkAccountingCompaniesRequest.to_json())

# convert the object into a dict
bulk_link_accounting_companies_request_dict = bulk_link_accounting_companies_request_instance.to_dict()
# create an instance of BulkLinkAccountingCompaniesRequest from a dict
bulk_link_accounting_companies_request_from_dict = BulkLinkAccountingCompaniesRequest.from_dict(bulk_link_accounting_companies_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
