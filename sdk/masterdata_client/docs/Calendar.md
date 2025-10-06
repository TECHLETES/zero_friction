# Calendar


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**min_supported_date_time** | **datetime** |  | [optional] [readonly] 
**max_supported_date_time** | **datetime** |  | [optional] [readonly] 
**algorithm_type** | [**CalendarAlgorithmType**](CalendarAlgorithmType.md) |  | [optional] [readonly] 
**is_read_only** | **bool** |  | [optional] [readonly] 
**eras** | **List[int]** |  | [optional] [readonly] 
**two_digit_year_max** | **int** |  | [optional] 

## Example

```python
from masterdata_client.models.calendar import Calendar

# TODO update the JSON string below
json = "{}"
# create an instance of Calendar from a JSON string
calendar_instance = Calendar.from_json(json)
# print the JSON string representation of the object
print(Calendar.to_json())

# convert the object into a dict
calendar_dict = calendar_instance.to_dict()
# create an instance of Calendar from a dict
calendar_from_dict = Calendar.from_dict(calendar_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


