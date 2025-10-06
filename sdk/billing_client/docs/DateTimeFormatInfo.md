# DateTimeFormatInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**am_designator** | **str** |  | [optional] 
**calendar** | [**Calendar**](Calendar.md) |  | [optional] 
**date_separator** | **str** |  | [optional] 
**first_day_of_week** | [**DayOfWeek**](DayOfWeek.md) |  | [optional] 
**calendar_week_rule** | [**CalendarWeekRule**](CalendarWeekRule.md) |  | [optional] 
**full_date_time_pattern** | **str** |  | [optional] 
**long_date_pattern** | **str** |  | [optional] 
**long_time_pattern** | **str** |  | [optional] 
**month_day_pattern** | **str** |  | [optional] 
**pm_designator** | **str** |  | [optional] 
**rf_c1123_pattern** | **str** |  | [optional] [readonly] 
**short_date_pattern** | **str** |  | [optional] 
**short_time_pattern** | **str** |  | [optional] 
**sortable_date_time_pattern** | **str** |  | [optional] [readonly] 
**time_separator** | **str** |  | [optional] 
**universal_sortable_date_time_pattern** | **str** |  | [optional] [readonly] 
**year_month_pattern** | **str** |  | [optional] 
**abbreviated_day_names** | **List[str]** |  | [optional] 
**shortest_day_names** | **List[str]** |  | [optional] 
**day_names** | **List[str]** |  | [optional] 
**abbreviated_month_names** | **List[str]** |  | [optional] 
**month_names** | **List[str]** |  | [optional] 
**is_read_only** | **bool** |  | [optional] [readonly] 
**native_calendar_name** | **str** |  | [optional] [readonly] 
**abbreviated_month_genitive_names** | **List[str]** |  | [optional] 
**month_genitive_names** | **List[str]** |  | [optional] 

## Example

```python
from billing_client.models.date_time_format_info import DateTimeFormatInfo

# TODO update the JSON string below
json = "{}"
# create an instance of DateTimeFormatInfo from a JSON string
date_time_format_info_instance = DateTimeFormatInfo.from_json(json)
# print the JSON string representation of the object
print(DateTimeFormatInfo.to_json())

# convert the object into a dict
date_time_format_info_dict = date_time_format_info_instance.to_dict()
# create an instance of DateTimeFormatInfo from a dict
date_time_format_info_from_dict = DateTimeFormatInfo.from_dict(date_time_format_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


