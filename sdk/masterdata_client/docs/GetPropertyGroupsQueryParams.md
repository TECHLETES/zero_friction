# GetPropertyGroupsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**name_contains** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.get_property_groups_query_params import GetPropertyGroupsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetPropertyGroupsQueryParams from a JSON string
get_property_groups_query_params_instance = GetPropertyGroupsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetPropertyGroupsQueryParams.to_json())

# convert the object into a dict
get_property_groups_query_params_dict = get_property_groups_query_params_instance.to_dict()
# create an instance of GetPropertyGroupsQueryParams from a dict
get_property_groups_query_params_from_dict = GetPropertyGroupsQueryParams.from_dict(get_property_groups_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


