# PagedJournalsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_accounting_company_id** | **str** |  | [optional]
**flex_search** | **str** |  | [optional]
**include_only_ids** | **List[str]** |  | [optional]
**exclude_ids** | **List[str]** |  | [optional]
**page_size** | **int** |  | [optional]

## Example

```python
from configuration_client.models.paged_journals_query_params import PagedJournalsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of PagedJournalsQueryParams from a JSON string
paged_journals_query_params_instance = PagedJournalsQueryParams.from_json(json)
# print the JSON string representation of the object
print(PagedJournalsQueryParams.to_json())

# convert the object into a dict
paged_journals_query_params_dict = paged_journals_query_params_instance.to_dict()
# create an instance of PagedJournalsQueryParams from a dict
paged_journals_query_params_from_dict = PagedJournalsQueryParams.from_dict(paged_journals_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
