# UpdateTimeOfUseCalendarRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional] 
**weekdays** | [**List[TimeOfUseDayDTO]**](TimeOfUseDayDTO.md) |  | 

## Example

```python
from configuration_client.models.update_time_of_use_calendar_request import UpdateTimeOfUseCalendarRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateTimeOfUseCalendarRequest from a JSON string
update_time_of_use_calendar_request_instance = UpdateTimeOfUseCalendarRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateTimeOfUseCalendarRequest.to_json())

# convert the object into a dict
update_time_of_use_calendar_request_dict = update_time_of_use_calendar_request_instance.to_dict()
# create an instance of UpdateTimeOfUseCalendarRequest from a dict
update_time_of_use_calendar_request_from_dict = UpdateTimeOfUseCalendarRequest.from_dict(update_time_of_use_calendar_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


