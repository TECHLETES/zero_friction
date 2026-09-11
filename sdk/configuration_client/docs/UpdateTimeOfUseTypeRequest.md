# UpdateTimeOfUseTypeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional]
**description** | **str** |  |

## Example

```python
from configuration_client.models.update_time_of_use_type_request import UpdateTimeOfUseTypeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateTimeOfUseTypeRequest from a JSON string
update_time_of_use_type_request_instance = UpdateTimeOfUseTypeRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateTimeOfUseTypeRequest.to_json())

# convert the object into a dict
update_time_of_use_type_request_dict = update_time_of_use_type_request_instance.to_dict()
# create an instance of UpdateTimeOfUseTypeRequest from a dict
update_time_of_use_type_request_from_dict = UpdateTimeOfUseTypeRequest.from_dict(update_time_of_use_type_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
