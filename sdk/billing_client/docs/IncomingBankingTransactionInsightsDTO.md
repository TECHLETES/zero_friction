# IncomingBankingTransactionInsightsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**incoming_banking_transaction_id** | **str** |  | [optional]
**identification** | **str** |  | [optional]
**opening_balance** | **float** |  | [optional]
**closing_balance** | **float** |  | [optional]
**balance_difference** | **float** |  | [optional]
**opening_balance_date** | **datetime** |  | [optional]
**closing_balance_date** | **datetime** |  | [optional]
**status_details** | [**Dict[str, IncomingMutationGroupedDetailsDTO]**](IncomingMutationGroupedDetailsDTO.md) |  | [optional]
**mutation_type_details** | [**Dict[str, IncomingMutationGroupedDetailsDTO]**](IncomingMutationGroupedDetailsDTO.md) |  | [optional]
**payment_method_details** | [**Dict[str, IncomingMutationGroupedDetailsDTO]**](IncomingMutationGroupedDetailsDTO.md) |  | [optional]

## Example

```python
from billing_client.models.incoming_banking_transaction_insights_dto import IncomingBankingTransactionInsightsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of IncomingBankingTransactionInsightsDTO from a JSON string
incoming_banking_transaction_insights_dto_instance = IncomingBankingTransactionInsightsDTO.from_json(json)
# print the JSON string representation of the object
print(IncomingBankingTransactionInsightsDTO.to_json())

# convert the object into a dict
incoming_banking_transaction_insights_dto_dict = incoming_banking_transaction_insights_dto_instance.to_dict()
# create an instance of IncomingBankingTransactionInsightsDTO from a dict
incoming_banking_transaction_insights_dto_from_dict = IncomingBankingTransactionInsightsDTO.from_dict(incoming_banking_transaction_insights_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
