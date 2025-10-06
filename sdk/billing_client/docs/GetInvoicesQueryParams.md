# GetInvoicesQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**invoice_type** | **List[str]** |  | [optional] 
**property_group_ids** | **List[str]** |  | [optional] 
**product_id** | **str** | Filter invoices by product. | [optional] 
**customer_id** | **str** |  | [optional] 
**contract_id** | **str** |  | [optional] 
**invoice_status** | **List[str]** |  | [optional] 
**payment_process_status** | **List[str]** |  | [optional] 
**billing_completeness_id** | **str** |  | [optional] 
**payment_method** | **str** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**period_start_date_time** | **datetime** |  | [optional] 
**period_end_date_time** | **datetime** |  | [optional] 
**period_start_date_time_begin** | **datetime** |  | [optional] 
**period_start_date_time_end** | **datetime** |  | [optional] 
**period_end_date_time_begin** | **datetime** |  | [optional] 
**period_end_date_time_end** | **datetime** |  | [optional] 
**paid_date_time_begin** | **datetime** |  | [optional] 
**export_status** | **str** |  | [optional] 
**collection_case_id** | **str** |  | [optional] 
**customer_group_id** | **str** |  | [optional] 
**company_bank_account_id** | **str** |  | [optional] 

## Example

```python
from billing_client.models.get_invoices_query_params import GetInvoicesQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetInvoicesQueryParams from a JSON string
get_invoices_query_params_instance = GetInvoicesQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetInvoicesQueryParams.to_json())

# convert the object into a dict
get_invoices_query_params_dict = get_invoices_query_params_instance.to_dict()
# create an instance of GetInvoicesQueryParams from a dict
get_invoices_query_params_from_dict = GetInvoicesQueryParams.from_dict(get_invoices_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


