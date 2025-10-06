# IncomingBankingTransactionInsightsDTOApiResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 
**success** | **bool** |  | [optional] 
**applicable_entities_count** | **int** |  | [optional] 
**requested_entities_count** | **int** |  | [optional] 
**succeeded_entities_count** | **int** |  | [optional] [readonly] 
**is_synchronous** | **bool** |  | [optional] 
**data** | [**IncomingBankingTransactionInsightsDTO**](IncomingBankingTransactionInsightsDTO.md) | The updated entity in case of modifications or creation | [optional] 

## Example

```python
from billing_client.models.incoming_banking_transaction_insights_dto_api_response_dto import IncomingBankingTransactionInsightsDTOApiResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingBankingTransactionInsightsDTOApiResponseDTO from a JSON string
incoming_banking_transaction_insights_dto_api_response_dto_instance = IncomingBankingTransactionInsightsDTOApiResponseDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingBankingTransactionInsightsDTOApiResponseDTO.to_json())

# convert the object into a dict
incoming_banking_transaction_insights_dto_api_response_dto_dict = incoming_banking_transaction_insights_dto_api_response_dto_instance.to_dict()
# create an instance of IncomingBankingTransactionInsightsDTOApiResponseDTO from a dict
incoming_banking_transaction_insights_dto_api_response_dto_from_dict = IncomingBankingTransactionInsightsDTOApiResponseDTO.from_dict(incoming_banking_transaction_insights_dto_api_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


