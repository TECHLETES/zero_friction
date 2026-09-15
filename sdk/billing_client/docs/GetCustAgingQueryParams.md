# GetCustAgingQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bucket_type** | **List[str]** |  | [optional] 
**hide_credits** | **bool** |  | [optional] 
**only_overdue** | **bool** |  | [optional] 
**property_group_ids** | **List[str]** |  | [optional] 
**order_by** | **str** |  | [optional] 
**reference_date** | **datetime** |  | [optional] 
**show_collection_cases** | **bool** |  | [optional] 
**show_active_payment_plans** | **bool** |  | [optional] 
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**page_size** | **int** |  | [optional] 

## Example

```python
from billing_client.models.get_cust_aging_query_params import GetCustAgingQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetCustAgingQueryParams from a JSON string
get_cust_aging_query_params_instance = GetCustAgingQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetCustAgingQueryParams.to_json())

# convert the object into a dict
get_cust_aging_query_params_dict = get_cust_aging_query_params_instance.to_dict()
# create an instance of GetCustAgingQueryParams from a dict
get_cust_aging_query_params_from_dict = GetCustAgingQueryParams.from_dict(get_cust_aging_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


