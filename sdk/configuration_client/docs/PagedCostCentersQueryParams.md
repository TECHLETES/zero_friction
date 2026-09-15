# PagedCostCentersQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**page_size** | **int** |  | [optional] 

## Example

```python
from configuration_client.models.paged_cost_centers_query_params import PagedCostCentersQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of PagedCostCentersQueryParams from a JSON string
paged_cost_centers_query_params_instance = PagedCostCentersQueryParams.from_json(json)
# print the JSON string representation of the object
print(PagedCostCentersQueryParams.to_json())

# convert the object into a dict
paged_cost_centers_query_params_dict = paged_cost_centers_query_params_instance.to_dict()
# create an instance of PagedCostCentersQueryParams from a dict
paged_cost_centers_query_params_from_dict = PagedCostCentersQueryParams.from_dict(paged_cost_centers_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


