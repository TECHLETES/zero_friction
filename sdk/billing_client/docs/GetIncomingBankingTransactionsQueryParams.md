# GetIncomingBankingTransactionsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**company_bank_account_id** | **str** |  | [optional] 
**mutation_date_time_start** | **datetime** |  | [optional] 
**mutation_date_time_end** | **datetime** |  | [optional] 
**opening_balance_date_start** | **datetime** |  | [optional] 
**opening_balance_date_end** | **datetime** |  | [optional] 

## Example

```python
from billing_client.models.get_incoming_banking_transactions_query_params import GetIncomingBankingTransactionsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetIncomingBankingTransactionsQueryParams from a JSON string
get_incoming_banking_transactions_query_params_instance = GetIncomingBankingTransactionsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetIncomingBankingTransactionsQueryParams.to_json())

# convert the object into a dict
get_incoming_banking_transactions_query_params_dict = get_incoming_banking_transactions_query_params_instance.to_dict()
# create an instance of GetIncomingBankingTransactionsQueryParams from a dict
get_incoming_banking_transactions_query_params_from_dict = GetIncomingBankingTransactionsQueryParams.from_dict(get_incoming_banking_transactions_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


