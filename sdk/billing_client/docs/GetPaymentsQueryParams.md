# GetPaymentsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**payment_type** | **str** |  | [optional] 
**customer_id** | **str** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**batch_mutation_id** | **str** |  | [optional] 

## Example

```python
from billing_client.models.get_payments_query_params import GetPaymentsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetPaymentsQueryParams from a JSON string
get_payments_query_params_instance = GetPaymentsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetPaymentsQueryParams.to_json())

# convert the object into a dict
get_payments_query_params_dict = get_payments_query_params_instance.to_dict()
# create an instance of GetPaymentsQueryParams from a dict
get_payments_query_params_from_dict = GetPaymentsQueryParams.from_dict(get_payments_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


