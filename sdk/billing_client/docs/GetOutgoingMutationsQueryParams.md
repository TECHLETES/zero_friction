# GetOutgoingMutationsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**outgoing_banking_transaction_id** | **str** |  | [optional] 
**status** | **str** |  | [optional] 
**reference_type** | **str** |  | [optional] 

## Example

```python
from billing_client.models.get_outgoing_mutations_query_params import GetOutgoingMutationsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetOutgoingMutationsQueryParams from a JSON string
get_outgoing_mutations_query_params_instance = GetOutgoingMutationsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetOutgoingMutationsQueryParams.to_json())

# convert the object into a dict
get_outgoing_mutations_query_params_dict = get_outgoing_mutations_query_params_instance.to_dict()
# create an instance of GetOutgoingMutationsQueryParams from a dict
get_outgoing_mutations_query_params_from_dict = GetOutgoingMutationsQueryParams.from_dict(get_outgoing_mutations_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


