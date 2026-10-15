# PagedAccountingCompanyMappingQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_unlinked** | **bool** |  | [optional] 
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**page_size** | **int** |  | [optional] 

## Example

```python
from configuration_client.models.paged_accounting_company_mapping_query_params import PagedAccountingCompanyMappingQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of PagedAccountingCompanyMappingQueryParams from a JSON string
paged_accounting_company_mapping_query_params_instance = PagedAccountingCompanyMappingQueryParams.from_json(json)
# print the JSON string representation of the object
print(PagedAccountingCompanyMappingQueryParams.to_json())

# convert the object into a dict
paged_accounting_company_mapping_query_params_dict = paged_accounting_company_mapping_query_params_instance.to_dict()
# create an instance of PagedAccountingCompanyMappingQueryParams from a dict
paged_accounting_company_mapping_query_params_from_dict = PagedAccountingCompanyMappingQueryParams.from_dict(paged_accounting_company_mapping_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


