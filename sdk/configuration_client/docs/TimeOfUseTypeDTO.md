# TimeOfUseTypeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**deleted** | **bool** |  | [optional] 
**localisation_level** | [**LocalisationLevel**](LocalisationLevel.md) |  | [optional] 
**localised_fields** | **List[str]** |  | [optional] 
**translated_fields** | **Dict[str, Dict[str, str]]** |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.time_of_use_type_dto import TimeOfUseTypeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TimeOfUseTypeDTO from a JSON string
time_of_use_type_dto_instance = TimeOfUseTypeDTO.from_json(json)
# print the JSON string representation of the object
print(TimeOfUseTypeDTO.to_json())

# convert the object into a dict
time_of_use_type_dto_dict = time_of_use_type_dto_instance.to_dict()
# create an instance of TimeOfUseTypeDTO from a dict
time_of_use_type_dto_from_dict = TimeOfUseTypeDTO.from_dict(time_of_use_type_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


