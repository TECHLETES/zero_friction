# BankAccountDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**BankAccountDTO**](BankAccountDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from configuration_client.models.bank_account_dto_api_response_dto import BankAccountDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BankAccountDTOApiResponseDTO from a JSON string
bank_account_dto_api_response_dto_instance = BankAccountDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(BankAccountDTOApiResponseDTO.to_json())

# convert the object into a dict
bank_account_dto_api_response_dto_dict = bank_account_dto_api_response_dto_instance.to_dict()
# create an instance of BankAccountDTOApiResponseDTO from a dict
bank_account_dto_api_response_dto_from_dict = BankAccountDTOApiResponseDTO.from_dict(bank_account_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


