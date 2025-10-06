# EstimableContractDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**EstimableContractDTO**](EstimableContractDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from forecasting_client.models.estimable_contract_dto_api_response_dto import EstimableContractDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of EstimableContractDTOApiResponseDTO from a JSON string
estimable_contract_dto_api_response_dto_instance = EstimableContractDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(EstimableContractDTOApiResponseDTO.to_json())

# convert the object into a dict
estimable_contract_dto_api_response_dto_dict = estimable_contract_dto_api_response_dto_instance.to_dict()
# create an instance of EstimableContractDTOApiResponseDTO from a dict
estimable_contract_dto_api_response_dto_from_dict = EstimableContractDTOApiResponseDTO.from_dict(estimable_contract_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


