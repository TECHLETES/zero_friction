# GetMeteringProviderRunsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provider_type** | [**MeteringProviderType**](MeteringProviderType.md) |  | [optional]
**flex_search** | **str** |  | [optional]
**include_only_ids** | **List[str]** |  | [optional]
**exclude_ids** | **List[str]** |  | [optional]
**page_size** | **int** |  | [optional]

## Example

```python
from metering_client.models.get_metering_provider_runs_query_params import GetMeteringProviderRunsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetMeteringProviderRunsQueryParams from a JSON string
get_metering_provider_runs_query_params_instance = GetMeteringProviderRunsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetMeteringProviderRunsQueryParams.to_json())

# convert the object into a dict
get_metering_provider_runs_query_params_dict = get_metering_provider_runs_query_params_instance.to_dict()
# create an instance of GetMeteringProviderRunsQueryParams from a dict
get_metering_provider_runs_query_params_from_dict = GetMeteringProviderRunsQueryParams.from_dict(get_metering_provider_runs_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
