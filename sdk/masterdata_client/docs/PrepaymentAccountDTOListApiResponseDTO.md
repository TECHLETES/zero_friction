# PrepaymentAccountDTOListApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**List[PrepaymentAccountDTO]**](PrepaymentAccountDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from masterdata_client.models.prepayment_account_dto_list_api_response_dto import PrepaymentAccountDTOListApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PrepaymentAccountDTOListApiResponseDTO from a JSON string
prepayment_account_dto_list_api_response_dto_instance = PrepaymentAccountDTOListApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(PrepaymentAccountDTOListApiResponseDTO.to_json())

# convert the object into a dict
prepayment_account_dto_list_api_response_dto_dict = prepayment_account_dto_list_api_response_dto_instance.to_dict()
# create an instance of PrepaymentAccountDTOListApiResponseDTO from a dict
prepayment_account_dto_list_api_response_dto_from_dict = PrepaymentAccountDTOListApiResponseDTO.from_dict(prepayment_account_dto_list_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


