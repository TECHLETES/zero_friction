# GetIncomingMutationsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**status** | **str** |  | [optional] 
**incoming_mutation_type** | **str** |  | [optional] 
**incoming_banking_transaction_id** | **str** |  | [optional] 
**transaction_date_start** | **datetime** |  | [optional] 
**transaction_date_end** | **datetime** |  | [optional] 

## Example

```python
from billing_client.models.get_incoming_mutations_query_params import GetIncomingMutationsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetIncomingMutationsQueryParams from a JSON string
get_incoming_mutations_query_params_instance = GetIncomingMutationsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetIncomingMutationsQueryParams.to_json())

# convert the object into a dict
get_incoming_mutations_query_params_dict = get_incoming_mutations_query_params_instance.to_dict()
# create an instance of GetIncomingMutationsQueryParams from a dict
get_incoming_mutations_query_params_from_dict = GetIncomingMutationsQueryParams.from_dict(get_incoming_mutations_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


