# GetBillingCompletenessQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**billing_relation_id** | **str** |  | [optional] 
**customer_id** | **str** |  | [optional] 
**property_group_ids** | **List[str]** |  | [optional] 
**contract_id** | **str** |  | [optional] 
**invoice_type** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**only_open** | **bool** |  | [optional] 
**skip_blocked** | **bool** |  | [optional] 
**period_start_date_time** | **datetime** |  | [optional] 
**period_end_date_time** | **datetime** |  | [optional] 
**invoicing_checkpoint_start_date_time** | **datetime** |  | [optional] 
**invoicing_checkpoint_end_date_time** | **datetime** |  | [optional] 

## Example

```python
from billing_client.models.get_billing_completeness_query_params import GetBillingCompletenessQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetBillingCompletenessQueryParams from a JSON string
get_billing_completeness_query_params_instance = GetBillingCompletenessQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetBillingCompletenessQueryParams.to_json())

# convert the object into a dict
get_billing_completeness_query_params_dict = get_billing_completeness_query_params_instance.to_dict()
# create an instance of GetBillingCompletenessQueryParams from a dict
get_billing_completeness_query_params_from_dict = GetBillingCompletenessQueryParams.from_dict(get_billing_completeness_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


