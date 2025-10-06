# GetServiceLocationsQueryParams


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flex_search** | **str** |  | [optional] 
**include_only_ids** | **List[str]** |  | [optional] 
**exclude_ids** | **List[str]** |  | [optional] 
**customer_id** | **str** |  | [optional] 
**property_group_ids** | **List[str]** |  | [optional] 
**exclude_service_locations_supplied_in_contract_id** | **str** |  | [optional] 
**exclude_service_locations_in_property_group_id** | **str** |  | [optional] 
**reference_date_time** | **datetime** |  | [optional] 
**postal_code** | **str** |  | [optional] 
**city** | **str** |  | [optional] 
**street_number** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.get_service_locations_query_params import GetServiceLocationsQueryParams

# TODO update the JSON string below
json = "{}"
# create an instance of GetServiceLocationsQueryParams from a JSON string
get_service_locations_query_params_instance = GetServiceLocationsQueryParams.from_json(json)
# print the JSON string representation of the object
print(GetServiceLocationsQueryParams.to_json())

# convert the object into a dict
get_service_locations_query_params_dict = get_service_locations_query_params_instance.to_dict()
# create an instance of GetServiceLocationsQueryParams from a dict
get_service_locations_query_params_from_dict = GetServiceLocationsQueryParams.from_dict(get_service_locations_query_params_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


