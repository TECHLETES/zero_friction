# MutingRuleDTOListApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**List[MutingRuleDTO]**](MutingRuleDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from metering_client.models.muting_rule_dto_list_api_response_dto import MutingRuleDTOListApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MutingRuleDTOListApiResponseDTO from a JSON string
muting_rule_dto_list_api_response_dto_instance = MutingRuleDTOListApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(MutingRuleDTOListApiResponseDTO.to_json())

# convert the object into a dict
muting_rule_dto_list_api_response_dto_dict = muting_rule_dto_list_api_response_dto_instance.to_dict()
# create an instance of MutingRuleDTOListApiResponseDTO from a dict
muting_rule_dto_list_api_response_dto_from_dict = MutingRuleDTOListApiResponseDTO.from_dict(muting_rule_dto_list_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


