# CostComponentDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**CostComponentDTOPagedResponseModelDTO**](CostComponentDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.cost_component_dto_paged_response_model_dto_api_response_dto import CostComponentDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CostComponentDTOPagedResponseModelDTOApiResponseDTO from a JSON string
cost_component_dto_paged_response_model_dto_api_response_dto_instance = CostComponentDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CostComponentDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
cost_component_dto_paged_response_model_dto_api_response_dto_dict = cost_component_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of CostComponentDTOPagedResponseModelDTOApiResponseDTO from a dict
cost_component_dto_paged_response_model_dto_api_response_dto_from_dict = CostComponentDTOPagedResponseModelDTOApiResponseDTO.from_dict(cost_component_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


