# PriorityRegisterParametersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**psr_codes_custom_entity_property_type_id** | **str** |  | [optional] 
**vr_codes_custom_entity_property_type_id** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.priority_register_parameters_request import PriorityRegisterParametersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PriorityRegisterParametersRequest from a JSON string
priority_register_parameters_request_instance = PriorityRegisterParametersRequest.from_json(json)
# print the JSON string representation of the object
print(PriorityRegisterParametersRequest.to_json())

# convert the object into a dict
priority_register_parameters_request_dict = priority_register_parameters_request_instance.to_dict()
# create an instance of PriorityRegisterParametersRequest from a dict
priority_register_parameters_request_from_dict = PriorityRegisterParametersRequest.from_dict(priority_register_parameters_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


