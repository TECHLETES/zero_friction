# GetBillingItemsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**show_deleted** | **bool** |  | [optional] 
**name** | **str** |  | [optional] 
**calculation_type** | **str** |  | [optional] 
**utility_type** | **str** |  | [optional] 
**product_id** | **str** |  | [optional] 
**is_prepayment_eligible** | **bool** |  | [optional] 
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**page_size** | **int** |  | [optional] 

## Example

```python
from configuration_client.models.get_billing_items_query_params import GetBillingItemsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetBillingItemsQueryParams from a JSON string
get_billing_items_query_params_instance = GetBillingItemsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetBillingItemsQueryParams.to_json())

# convert the object into a dict
get_billing_items_query_params_dict = get_billing_items_query_params_instance.to_dict()
# create an instance of GetBillingItemsQueryParams from a dict
get_billing_items_query_params_from_dict = GetBillingItemsQueryParams.from_dict(get_billing_items_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


