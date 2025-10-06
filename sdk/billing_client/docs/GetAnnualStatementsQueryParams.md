# GetAnnualStatementsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**customer_id** | **str** |  | [optional] 
**statuses** | **List[str]** |  | [optional] 
**year** | **int** |  | [optional] 
**limit** | **int** |  | [optional] 

## Example

```python
from billing_client.models.get_annual_statements_query_params import GetAnnualStatementsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetAnnualStatementsQueryParams from a JSON string
get_annual_statements_query_params_instance = GetAnnualStatementsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetAnnualStatementsQueryParams.to_json())

# convert the object into a dict
get_annual_statements_query_params_dict = get_annual_statements_query_params_instance.to_dict()
# create an instance of GetAnnualStatementsQueryParams from a dict
get_annual_statements_query_params_from_dict = GetAnnualStatementsQueryParams.from_dict(get_annual_statements_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


