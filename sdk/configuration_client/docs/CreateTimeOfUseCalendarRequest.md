# CreateTimeOfUseCalendarRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**weekdays** | [**List[TimeOfUseDayDTO]**](TimeOfUseDayDTO.md) |  | 

## Example

```python
from configuration_client.models.create_time_of_use_calendar_request import CreateTimeOfUseCalendarRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateTimeOfUseCalendarRequest from a JSON string
create_time_of_use_calendar_request_instance = CreateTimeOfUseCalendarRequest.from_json(json)
# print the JSON string representation of the object
print(CreateTimeOfUseCalendarRequest.to_json())

# convert the object into a dict
create_time_of_use_calendar_request_dict = create_time_of_use_calendar_request_instance.to_dict()
# create an instance of CreateTimeOfUseCalendarRequest from a dict
create_time_of_use_calendar_request_from_dict = CreateTimeOfUseCalendarRequest.from_dict(create_time_of_use_calendar_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


