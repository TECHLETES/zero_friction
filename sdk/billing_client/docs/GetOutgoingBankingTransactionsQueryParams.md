# GetOutgoingBankingTransactionsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**company_bank_account_id** | **str** |  | [optional] 
**outgoing_banking_transaction_type** | **str** |  | [optional] 
**mutation_date_time_start** | **datetime** |  | [optional] 
**mutation_date_time_end** | **datetime** |  | [optional] 

## Example

```python
from billing_client.models.get_outgoing_banking_transactions_query_params import GetOutgoingBankingTransactionsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetOutgoingBankingTransactionsQueryParams from a JSON string
get_outgoing_banking_transactions_query_params_instance = GetOutgoingBankingTransactionsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetOutgoingBankingTransactionsQueryParams.to_json())

# convert the object into a dict
get_outgoing_banking_transactions_query_params_dict = get_outgoing_banking_transactions_query_params_instance.to_dict()
# create an instance of GetOutgoingBankingTransactionsQueryParams from a dict
get_outgoing_banking_transactions_query_params_from_dict = GetOutgoingBankingTransactionsQueryParams.from_dict(get_outgoing_banking_transactions_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


