# TimeOfUseIntervalDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**begin_minute_of_day** | **int** |  | [optional] 
**end_minute_of_day** | **int** |  | [optional] 
**time_of_use_type_code** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.time_of_use_interval_dto import TimeOfUseIntervalDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TimeOfUseIntervalDTO from a JSON string
time_of_use_interval_dto_instance = TimeOfUseIntervalDTO.from_json(json)
# print the JSON string representation of the object
print(TimeOfUseIntervalDTO.to_json())

# convert the object into a dict
time_of_use_interval_dto_dict = time_of_use_interval_dto_instance.to_dict()
# create an instance of TimeOfUseIntervalDTO from a dict
time_of_use_interval_dto_from_dict = TimeOfUseIntervalDTO.from_dict(time_of_use_interval_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


