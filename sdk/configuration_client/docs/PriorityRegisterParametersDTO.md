# PriorityRegisterParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**psr_codes_custom_entity_property_type_id** | **str** |  | [optional] 
**vr_codes_custom_entity_property_type_id** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.priority_register_parameters_dto import PriorityRegisterParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PriorityRegisterParametersDTO from a JSON string
priority_register_parameters_dto_instance = PriorityRegisterParametersDTO.from_json(json)
# print the JSON string representation of the object
print(PriorityRegisterParametersDTO.to_json())

# convert the object into a dict
priority_register_parameters_dto_dict = priority_register_parameters_dto_instance.to_dict()
# create an instance of PriorityRegisterParametersDTO from a dict
priority_register_parameters_dto_from_dict = PriorityRegisterParametersDTO.from_dict(priority_register_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


