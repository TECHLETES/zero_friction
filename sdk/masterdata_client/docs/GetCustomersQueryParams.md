# GetCustomersQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**customer_type** | **str** |  | [optional] 
**default_payment_method** | **str** |  | [optional] 
**property_group_ids** | **List[str]** |  | [optional] 
**exclude_property_group_id** | **str** |  | [optional] 
**customer_group_id** | **str** |  | [optional] 
**exclude_customer_group_id** | **str** |  | [optional] 
**customer_group_name** | **str** |  | [optional] 
**name_contains** | **str** |  | [optional] 
**activation_code** | **str** |  | [optional] 
**priority_service_register_property_type_id** | **str** |  | [optional] 
**vulnerability_register_property_type_id** | **str** |  | [optional] 
**priority_service_register_ids** | **List[str]** |  | [optional] 
**vulnerability_register_ids** | **List[str]** |  | [optional] 

## Example

```python
from masterdata_client.models.get_customers_query_params import GetCustomersQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetCustomersQueryParams from a JSON string
get_customers_query_params_instance = GetCustomersQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetCustomersQueryParams.to_json())

# convert the object into a dict
get_customers_query_params_dict = get_customers_query_params_instance.to_dict()
# create an instance of GetCustomersQueryParams from a dict
get_customers_query_params_from_dict = GetCustomersQueryParams.from_dict(get_customers_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


