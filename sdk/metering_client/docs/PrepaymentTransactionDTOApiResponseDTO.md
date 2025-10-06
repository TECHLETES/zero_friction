# PrepaymentTransactionDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**PrepaymentTransactionDTO**](PrepaymentTransactionDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from metering_client.models.prepayment_transaction_dto_api_response_dto import PrepaymentTransactionDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PrepaymentTransactionDTOApiResponseDTO from a JSON string
prepayment_transaction_dto_api_response_dto_instance = PrepaymentTransactionDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(PrepaymentTransactionDTOApiResponseDTO.to_json())

# convert the object into a dict
prepayment_transaction_dto_api_response_dto_dict = prepayment_transaction_dto_api_response_dto_instance.to_dict()
# create an instance of PrepaymentTransactionDTOApiResponseDTO from a dict
prepayment_transaction_dto_api_response_dto_from_dict = PrepaymentTransactionDTOApiResponseDTO.from_dict(prepayment_transaction_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


