# TimeOfUseCalendarDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional] 
**weekdays** | [**List[TimeOfUseDayDTO]**](TimeOfUseDayDTO.md) |  | [optional] 
**deleted** | **bool** |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.time_of_use_calendar_dto import TimeOfUseCalendarDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TimeOfUseCalendarDTO from a JSON string
time_of_use_calendar_dto_instance = TimeOfUseCalendarDTO.from_json(json)
# print the JSON string representation of the object
print(TimeOfUseCalendarDTO.to_json())

# convert the object into a dict
time_of_use_calendar_dto_dict = time_of_use_calendar_dto_instance.to_dict()
# create an instance of TimeOfUseCalendarDTO from a dict
time_of_use_calendar_dto_from_dict = TimeOfUseCalendarDTO.from_dict(time_of_use_calendar_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


