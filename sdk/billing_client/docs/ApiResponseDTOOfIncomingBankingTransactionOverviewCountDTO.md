# ApiResponseDTOOfIncomingBankingTransactionOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**IncomingBankingTransactionOverviewCountDTO**](IncomingBankingTransactionOverviewCountDTO.md) |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] 
**is_synchronous** | **bool** |  | [optional] 

## Example

```python
from billing_client.models.api_response_dtoof_incoming_banking_transaction_overview_count_dto import ApiResponseDTOOfIncomingBankingTransactionOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfIncomingBankingTransactionOverviewCountDTO from a JSON string
api_response_dtoof_incoming_banking_transaction_overview_count_dto_instance = ApiResponseDTOOfIncomingBankingTransactionOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfIncomingBankingTransactionOverviewCountDTO.to_json())

# convert the object into a dict
api_response_dtoof_incoming_banking_transaction_overview_count_dto_dict = api_response_dtoof_incoming_banking_transaction_overview_count_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfIncomingBankingTransactionOverviewCountDTO from a dict
api_response_dtoof_incoming_banking_transaction_overview_count_dto_from_dict = ApiResponseDTOOfIncomingBankingTransactionOverviewCountDTO.from_dict(api_response_dtoof_incoming_banking_transaction_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


