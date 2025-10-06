# GetMetersQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**servicelocation_ids** | **List[str]** |  | [optional] 
**property_group_ids** | **List[str]** |  | [optional] 
**meter_type** | [**MeterType**](MeterType.md) |  | [optional] 
**received_metering_data_start** | **datetime** |  | [optional] 
**received_metering_data_end** | **datetime** |  | [optional] 
**next_expected_reading_date_start** | **datetime** |  | [optional] 
**next_expected_reading_date_end** | **datetime** |  | [optional] 
**parent_serial_number** | **str** |  | [optional] 
**filter_by_reading_frequency** | **bool** |  | [optional] 
**reading_frequency** | [**MeterReadingFrequency**](MeterReadingFrequency.md) |  | [optional] 
**customer_id** | **str** |  | [optional] 
**meter_type_group** | **str** |  | [optional] 
**meter_serial_number** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.get_meters_query_params import GetMetersQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetMetersQueryParams from a JSON string
get_meters_query_params_instance = GetMetersQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetMetersQueryParams.to_json())

# convert the object into a dict
get_meters_query_params_dict = get_meters_query_params_instance.to_dict()
# create an instance of GetMetersQueryParams from a dict
get_meters_query_params_from_dict = GetMetersQueryParams.from_dict(get_meters_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


