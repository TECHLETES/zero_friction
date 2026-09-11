# PagedGeneralLedgerMappingQueryParams


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
from configuration_client.models.paged_general_ledger_mapping_query_params import PagedGeneralLedgerMappingQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of PagedGeneralLedgerMappingQueryParams from a JSON string
paged_general_ledger_mapping_query_params_instance = PagedGeneralLedgerMappingQueryParams.from_json(json)
# print the JSON string representation of the object
print(PagedGeneralLedgerMappingQueryParams.to_json())

# convert the object into a dict
paged_general_ledger_mapping_query_params_dict = paged_general_ledger_mapping_query_params_instance.to_dict()
# create an instance of PagedGeneralLedgerMappingQueryParams from a dict
paged_general_ledger_mapping_query_params_from_dict = PagedGeneralLedgerMappingQueryParams.from_dict(paged_general_ledger_mapping_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
