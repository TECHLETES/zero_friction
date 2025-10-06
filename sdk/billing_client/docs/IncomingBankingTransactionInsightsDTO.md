# IncomingBankingTransactionInsightsDTO

Provides detailed insights and analytics about an incoming banking transaction.  This DTO contains aggregated information about mutations grouped by status, type, and payment method.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**incoming_banking_transaction_id** | **str** | The unique identifier of the incoming banking transaction. | [optional] 
**identification** | **str** | The identification number of the transaction file. | [optional] 
**opening_balance** | **float** | The opening balance of the account at the start of the transaction period. | [optional] 
**closing_balance** | **float** | The closing balance of the account at the end of the transaction period. | [optional] 
**balance_difference** | **float** | The difference between the closing and opening balances. | [optional] 
**opening_balance_date** | **datetime** | The date and time of the opening balance. | [optional] 
**closing_balance_date** | **datetime** | The date and time of the closing balance. | [optional] 
**status_details** | [**Dict[str, IncomingMutationGroupedDetailsDTO]**](IncomingMutationGroupedDetailsDTO.md) | Details of mutations grouped by their status. | [optional] 
**mutation_type_details** | [**Dict[str, IncomingMutationGroupedDetailsDTO]**](IncomingMutationGroupedDetailsDTO.md) | Details of mutations grouped by their type. | [optional] 
**payment_method_details** | [**Dict[str, IncomingMutationGroupedDetailsDTO]**](IncomingMutationGroupedDetailsDTO.md) | Details of mutations grouped by their payment method. | [optional] 

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


