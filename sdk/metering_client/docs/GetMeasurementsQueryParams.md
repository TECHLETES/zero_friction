# GetMeasurementsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**external_channel_identifier** | **str** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**show_invalid** | **bool** |  | [optional] 
**data_frequency** | [**DataFrequency**](DataFrequency.md) |  | [optional] 

## Example

```python
from metering_client.models.get_measurements_query_params import GetMeasurementsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetMeasurementsQueryParams from a JSON string
get_measurements_query_params_instance = GetMeasurementsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetMeasurementsQueryParams.to_json())

# convert the object into a dict
get_measurements_query_params_dict = get_measurements_query_params_instance.to_dict()
# create an instance of GetMeasurementsQueryParams from a dict
get_measurements_query_params_from_dict = GetMeasurementsQueryParams.from_dict(get_measurements_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


