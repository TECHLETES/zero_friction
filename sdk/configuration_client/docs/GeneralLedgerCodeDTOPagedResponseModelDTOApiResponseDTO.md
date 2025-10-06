# GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**GeneralLedgerCodeDTOPagedResponseModelDTO**](GeneralLedgerCodeDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.general_ledger_code_dto_paged_response_model_dto_api_response_dto import GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO from a JSON string
general_ledger_code_dto_paged_response_model_dto_api_response_dto_instance = GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
general_ledger_code_dto_paged_response_model_dto_api_response_dto_dict = general_ledger_code_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO from a dict
general_ledger_code_dto_paged_response_model_dto_api_response_dto_from_dict = GeneralLedgerCodeDTOPagedResponseModelDTOApiResponseDTO.from_dict(general_ledger_code_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


