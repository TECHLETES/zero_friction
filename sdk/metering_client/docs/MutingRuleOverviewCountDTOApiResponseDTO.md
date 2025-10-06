# MutingRuleOverviewCountDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**MutingRuleOverviewCountDTO**](MutingRuleOverviewCountDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from metering_client.models.muting_rule_overview_count_dto_api_response_dto import MutingRuleOverviewCountDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MutingRuleOverviewCountDTOApiResponseDTO from a JSON string
muting_rule_overview_count_dto_api_response_dto_instance = MutingRuleOverviewCountDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(MutingRuleOverviewCountDTOApiResponseDTO.to_json())

# convert the object into a dict
muting_rule_overview_count_dto_api_response_dto_dict = muting_rule_overview_count_dto_api_response_dto_instance.to_dict()
# create an instance of MutingRuleOverviewCountDTOApiResponseDTO from a dict
muting_rule_overview_count_dto_api_response_dto_from_dict = MutingRuleOverviewCountDTOApiResponseDTO.from_dict(muting_rule_overview_count_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


