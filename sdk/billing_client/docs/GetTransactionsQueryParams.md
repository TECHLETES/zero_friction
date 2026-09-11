# GetTransactionsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customeruuid** | **str** |  | [optional] 
**reference_date** | **datetime** |  | [optional] 
**period_start_date** | **datetime** |  | [optional] 
**period_end_date** | **datetime** |  | [optional] 
**created_start_date** | **datetime** |  | [optional] 
**created_end_date** | **datetime** |  | [optional] 
**hide_credits** | **bool** |  | [optional] 
**only_overdue** | **bool** |  | [optional] 
**only_open** | **bool** |  | [optional] 
**property_group_id** | **str** |  | [optional] 
**company_bank_account_id** | **str** |  | [optional] 
**amount_sign** | **str** |  | [optional] 
**open_amount_minimum** | **float** |  | [optional] 
**open_amount_maximum** | **float** |  | [optional] 
**only_count** | **bool** |  | [optional] 
**transaction_reference_type** | **str** |  | [optional] 
**invoice_types** | **List[str]** |  | [optional] 
**payment_plan_id** | **str** |  | [optional] 
**exclude_active_payment_plans** | **bool** |  | [optional] 
**only_in_payment_plan** | **bool** |  | [optional] 
**only_in_collection_case** | **bool** |  | [optional] 
**transaction_type** | [**TransactionType**](TransactionType.md) |  | [optional] 
**transaction_types** | **List[str]** |  | [optional] 
**account_export_status** | [**AccountExportStatus**](AccountExportStatus.md) |  | [optional] 
**only_credit_billing** | **bool** |  | [optional] 
**prepayment_account_id** | **str** |  | [optional] 
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**page_size** | **int** |  | [optional] 

## Example

```python
from billing_client.models.get_transactions_query_params import GetTransactionsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetTransactionsQueryParams from a JSON string
get_transactions_query_params_instance = GetTransactionsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetTransactionsQueryParams.to_json())

# convert the object into a dict
get_transactions_query_params_dict = get_transactions_query_params_instance.to_dict()
# create an instance of GetTransactionsQueryParams from a dict
get_transactions_query_params_from_dict = GetTransactionsQueryParams.from_dict(get_transactions_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


