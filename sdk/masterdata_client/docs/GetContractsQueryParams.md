# GetContractsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**service_location_id** | **str** |  | [optional] 
**property_group_ids** | **List[str]** |  | [optional] 
**customer_group_id** | **str** |  | [optional] 
**customer_id** | **str** |  | [optional] 
**customer_type** | **str** |  | [optional] 
**product_id** | **str** |  | [optional] 
**exclude_terminated_contracts** | **bool** |  | [optional] 

## Example

```python
from masterdata_client.models.get_contracts_query_params import GetContractsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetContractsQueryParams from a JSON string
get_contracts_query_params_instance = GetContractsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetContractsQueryParams.to_json())

# convert the object into a dict
get_contracts_query_params_dict = get_contracts_query_params_instance.to_dict()
# create an instance of GetContractsQueryParams from a dict
get_contracts_query_params_from_dict = GetContractsQueryParams.from_dict(get_contracts_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


