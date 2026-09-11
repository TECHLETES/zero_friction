# ApiResponseDTOOfOutgoingBankingTransactionOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**OutgoingBankingTransactionOverviewCountDTO**](OutgoingBankingTransactionOverviewCountDTO.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from billing_client.models.api_response_dtoof_outgoing_banking_transaction_overview_count_dto import ApiResponseDTOOfOutgoingBankingTransactionOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfOutgoingBankingTransactionOverviewCountDTO from a JSON string
api_response_dtoof_outgoing_banking_transaction_overview_count_dto_instance = ApiResponseDTOOfOutgoingBankingTransactionOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfOutgoingBankingTransactionOverviewCountDTO.to_json())

# convert the object into a dict
api_response_dtoof_outgoing_banking_transaction_overview_count_dto_dict = api_response_dtoof_outgoing_banking_transaction_overview_count_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfOutgoingBankingTransactionOverviewCountDTO from a dict
api_response_dtoof_outgoing_banking_transaction_overview_count_dto_from_dict = ApiResponseDTOOfOutgoingBankingTransactionOverviewCountDTO.from_dict(api_response_dtoof_outgoing_banking_transaction_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
