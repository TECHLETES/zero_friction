# CreateTimeOfUseTypeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  |
**description** | **str** |  |

## Example

```python
from configuration_client.models.create_time_of_use_type_request import CreateTimeOfUseTypeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateTimeOfUseTypeRequest from a JSON string
create_time_of_use_type_request_instance = CreateTimeOfUseTypeRequest.from_json(json)
# print the JSON string representation of the object
print(CreateTimeOfUseTypeRequest.to_json())

# convert the object into a dict
create_time_of_use_type_request_dict = create_time_of_use_type_request_instance.to_dict()
# create an instance of CreateTimeOfUseTypeRequest from a dict
create_time_of_use_type_request_from_dict = CreateTimeOfUseTypeRequest.from_dict(create_time_of_use_type_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
