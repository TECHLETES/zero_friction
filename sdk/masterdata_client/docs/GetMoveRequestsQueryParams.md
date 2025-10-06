# GetMoveRequestsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**location_id** | **str** |  | [optional] 
**move_request_type_id** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.get_move_requests_query_params import GetMoveRequestsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetMoveRequestsQueryParams from a JSON string
get_move_requests_query_params_instance = GetMoveRequestsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetMoveRequestsQueryParams.to_json())

# convert the object into a dict
get_move_requests_query_params_dict = get_move_requests_query_params_instance.to_dict()
# create an instance of GetMoveRequestsQueryParams from a dict
get_move_requests_query_params_from_dict = GetMoveRequestsQueryParams.from_dict(get_move_requests_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


