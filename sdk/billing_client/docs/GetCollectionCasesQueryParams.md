# GetCollectionCasesQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**workflow_id** | **str** |  | [optional]
**customer_id** | **str** |  | [optional]
**property_group_ids** | **List[str]** |  | [optional]
**next_action_due_from** | **datetime** |  | [optional]
**next_action_due_to** | **datetime** |  | [optional]
**open_amount_lower_limit** | **float** |  | [optional]
**customer_group_id** | **str** |  | [optional]
**exclude_active_payment_plans** | **bool** |  | [optional]
**in_payment_plan** | **bool** |  | [optional]
**statuses** | **List[str]** |  | [optional]
**flex_search** | **str** |  | [optional]
**include_only_ids** | **List[str]** |  | [optional]
**exclude_ids** | **List[str]** |  | [optional]
**page_size** | **int** |  | [optional]

## Example

```python
from billing_client.models.get_collection_cases_query_params import GetCollectionCasesQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetCollectionCasesQueryParams from a JSON string
get_collection_cases_query_params_instance = GetCollectionCasesQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetCollectionCasesQueryParams.to_json())

# convert the object into a dict
get_collection_cases_query_params_dict = get_collection_cases_query_params_instance.to_dict()
# create an instance of GetCollectionCasesQueryParams from a dict
get_collection_cases_query_params_from_dict = GetCollectionCasesQueryParams.from_dict(get_collection_cases_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
