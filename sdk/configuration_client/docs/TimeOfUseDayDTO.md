# TimeOfUseDayDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**weekday_index** | **int** |  | [optional]
**intervals** | [**List[TimeOfUseIntervalDTO]**](TimeOfUseIntervalDTO.md) |  | [optional]

## Example

```python
from configuration_client.models.time_of_use_day_dto import TimeOfUseDayDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TimeOfUseDayDTO from a JSON string
time_of_use_day_dto_instance = TimeOfUseDayDTO.from_json(json)
# print the JSON string representation of the object
print(TimeOfUseDayDTO.to_json())

# convert the object into a dict
time_of_use_day_dto_dict = time_of_use_day_dto_instance.to_dict()
# create an instance of TimeOfUseDayDTO from a dict
time_of_use_day_dto_from_dict = TimeOfUseDayDTO.from_dict(time_of_use_day_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
