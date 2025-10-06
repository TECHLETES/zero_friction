# AnnualStatementDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**AnnualStatementDTOPagedResponseModelDTO**](AnnualStatementDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.annual_statement_dto_paged_response_model_dto_api_response_dto import AnnualStatementDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AnnualStatementDTOPagedResponseModelDTOApiResponseDTO from a JSON string
annual_statement_dto_paged_response_model_dto_api_response_dto_instance = AnnualStatementDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(AnnualStatementDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
annual_statement_dto_paged_response_model_dto_api_response_dto_dict = annual_statement_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of AnnualStatementDTOPagedResponseModelDTOApiResponseDTO from a dict
annual_statement_dto_paged_response_model_dto_api_response_dto_from_dict = AnnualStatementDTOPagedResponseModelDTOApiResponseDTO.from_dict(annual_statement_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


