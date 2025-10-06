# BooleanApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | **bool** | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from regionalregulations_client.models.boolean_api_response_dto import BooleanApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BooleanApiResponseDTO from a JSON string
boolean_api_response_dto_instance = BooleanApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(BooleanApiResponseDTO.to_json())

# convert the object into a dict
boolean_api_response_dto_dict = boolean_api_response_dto_instance.to_dict()
# create an instance of BooleanApiResponseDTO from a dict
boolean_api_response_dto_from_dict = BooleanApiResponseDTO.from_dict(boolean_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


