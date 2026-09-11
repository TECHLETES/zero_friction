# SyntheticLoadProfileDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**origin** | [**SyntheticLoadProfileOrigin**](SyntheticLoadProfileOrigin.md) |  | [optional] 
**deleted** | **bool** |  | [optional] 
**organisation_id** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

## Example

```python
from forecasting_client.models.synthetic_load_profile_dto import SyntheticLoadProfileDTO

# TODO update the JSON string below
json = "{}"
# create an instance of SyntheticLoadProfileDTO from a JSON string
synthetic_load_profile_dto_instance = SyntheticLoadProfileDTO.from_json(json)
# print the JSON string representation of the object
print(SyntheticLoadProfileDTO.to_json())

# convert the object into a dict
synthetic_load_profile_dto_dict = synthetic_load_profile_dto_instance.to_dict()
# create an instance of SyntheticLoadProfileDTO from a dict
synthetic_load_profile_dto_from_dict = SyntheticLoadProfileDTO.from_dict(synthetic_load_profile_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


