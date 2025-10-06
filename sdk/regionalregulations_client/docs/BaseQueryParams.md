# BaseQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 

## Example

```python
from regionalregulations_client.models.base_query_params import BaseQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of BaseQueryParams from a JSON string
base_query_params_instance = BaseQueryParams.from_json(json)
# print the JSON string representation of the object
print(BaseQueryParams.to_json())

# convert the object into a dict
base_query_params_dict = base_query_params_instance.to_dict()
# create an instance of BaseQueryParams from a dict
base_query_params_from_dict = BaseQueryParams.from_dict(base_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


