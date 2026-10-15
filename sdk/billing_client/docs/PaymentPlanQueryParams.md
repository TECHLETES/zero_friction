# PaymentPlanQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_plan_number** | **str** |  | [optional] 
**debtor_id** | **str** |  | [optional] 
**customer_account_number** | **str** |  | [optional] 
**customer_name** | **str** |  | [optional] 
**statuses** | **List[str]** |  | [optional] 
**installment_status** | [**PaymentPlanInstallmentStatus**](PaymentPlanInstallmentStatus.md) |  | [optional] 
**start_date_from** | **datetime** |  | [optional] 
**start_date_to** | **datetime** |  | [optional] 
**due_date_from** | **datetime** |  | [optional] 
**due_date_to** | **datetime** |  | [optional] 
**amount_from** | **float** |  | [optional] 
**amount_to** | **float** |  | [optional] 
**remaining_amount_greater_then** | **float** |  | [optional] 
**payment_frequency** | **List[str]** |  | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**is_overdue** | **bool** |  | [optional] 
**is_ready_for_collection** | **bool** |  | [optional] 
**property_group_ids** | **List[str]** |  | [optional] 
**collection_case_id** | **str** |  | [optional] 
**payment_reference** | **str** |  | [optional] 
**customer_group_id** | **str** |  | [optional] 
**apply_filters_over_included_ids** | **bool** |  | [optional] 
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**page_size** | **int** |  | [optional] 

## Example

```python
from billing_client.models.payment_plan_query_params import PaymentPlanQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of PaymentPlanQueryParams from a JSON string
payment_plan_query_params_instance = PaymentPlanQueryParams.from_json(json)
# print the JSON string representation of the object
print(PaymentPlanQueryParams.to_json())

# convert the object into a dict
payment_plan_query_params_dict = payment_plan_query_params_instance.to_dict()
# create an instance of PaymentPlanQueryParams from a dict
payment_plan_query_params_from_dict = PaymentPlanQueryParams.from_dict(payment_plan_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


