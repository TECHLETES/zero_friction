# PrepaymentTransactionDTOPagedResponseModelDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**PrepaymentTransactionDTOPagedResponseModelDTO**](PrepaymentTransactionDTOPagedResponseModelDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from metering_client.models.prepayment_transaction_dto_paged_response_model_dto_api_response_dto import PrepaymentTransactionDTOPagedResponseModelDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PrepaymentTransactionDTOPagedResponseModelDTOApiResponseDTO from a JSON string
prepayment_transaction_dto_paged_response_model_dto_api_response_dto_instance = PrepaymentTransactionDTOPagedResponseModelDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(PrepaymentTransactionDTOPagedResponseModelDTOApiResponseDTO.to_json())

# convert the object into a dict
prepayment_transaction_dto_paged_response_model_dto_api_response_dto_dict = prepayment_transaction_dto_paged_response_model_dto_api_response_dto_instance.to_dict()
# create an instance of PrepaymentTransactionDTOPagedResponseModelDTOApiResponseDTO from a dict
prepayment_transaction_dto_paged_response_model_dto_api_response_dto_from_dict = PrepaymentTransactionDTOPagedResponseModelDTOApiResponseDTO.from_dict(prepayment_transaction_dto_paged_response_model_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


