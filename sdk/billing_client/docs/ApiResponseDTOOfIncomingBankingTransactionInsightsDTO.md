# ApiResponseDTOOfIncomingBankingTransactionInsightsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**IncomingBankingTransactionInsightsDTO**](IncomingBankingTransactionInsightsDTO.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from billing_client.models.api_response_dtoof_incoming_banking_transaction_insights_dto import ApiResponseDTOOfIncomingBankingTransactionInsightsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfIncomingBankingTransactionInsightsDTO from a JSON string
api_response_dtoof_incoming_banking_transaction_insights_dto_instance = ApiResponseDTOOfIncomingBankingTransactionInsightsDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfIncomingBankingTransactionInsightsDTO.to_json())

# convert the object into a dict
api_response_dtoof_incoming_banking_transaction_insights_dto_dict = api_response_dtoof_incoming_banking_transaction_insights_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfIncomingBankingTransactionInsightsDTO from a dict
api_response_dtoof_incoming_banking_transaction_insights_dto_from_dict = ApiResponseDTOOfIncomingBankingTransactionInsightsDTO.from_dict(api_response_dtoof_incoming_banking_transaction_insights_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
