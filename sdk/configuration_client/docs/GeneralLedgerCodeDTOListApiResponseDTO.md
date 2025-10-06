# GeneralLedgerCodeDTOListApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**List[GeneralLedgerCodeDTO]**](GeneralLedgerCodeDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.general_ledger_code_dto_list_api_response_dto import GeneralLedgerCodeDTOListApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of GeneralLedgerCodeDTOListApiResponseDTO from a JSON string
general_ledger_code_dto_list_api_response_dto_instance = GeneralLedgerCodeDTOListApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(GeneralLedgerCodeDTOListApiResponseDTO.to_json())

# convert the object into a dict
general_ledger_code_dto_list_api_response_dto_dict = general_ledger_code_dto_list_api_response_dto_instance.to_dict()
# create an instance of GeneralLedgerCodeDTOListApiResponseDTO from a dict
general_ledger_code_dto_list_api_response_dto_from_dict = GeneralLedgerCodeDTOListApiResponseDTO.from_dict(general_ledger_code_dto_list_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


