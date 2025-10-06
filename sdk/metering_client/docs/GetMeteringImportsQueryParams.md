# GetMeteringImportsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**status** | **List[str]** |  | [optional] 
**communication_type** | **str** |  | [optional] 
**metering_format** | **str** |  | [optional] 
**created_start_date_time** | **datetime** |  | [optional] 
**created_end_date_time** | **datetime** |  | [optional] 

## Example

```python
from metering_client.models.get_metering_imports_query_params import GetMeteringImportsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetMeteringImportsQueryParams from a JSON string
get_metering_imports_query_params_instance = GetMeteringImportsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetMeteringImportsQueryParams.to_json())

# convert the object into a dict
get_metering_imports_query_params_dict = get_metering_imports_query_params_instance.to_dict()
# create an instance of GetMeteringImportsQueryParams from a dict
get_metering_imports_query_params_from_dict = GetMeteringImportsQueryParams.from_dict(get_metering_imports_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


