# BulkLinkCostUnitsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**PagedCostUnitMappingQueryParams**](PagedCostUnitMappingQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**cost_unit_id** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_link_cost_units_request import BulkLinkCostUnitsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkLinkCostUnitsRequest from a JSON string
bulk_link_cost_units_request_instance = BulkLinkCostUnitsRequest.from_json(json)
# print the JSON string representation of the object
print(BulkLinkCostUnitsRequest.to_json())

# convert the object into a dict
bulk_link_cost_units_request_dict = bulk_link_cost_units_request_instance.to_dict()
# create an instance of BulkLinkCostUnitsRequest from a dict
bulk_link_cost_units_request_from_dict = BulkLinkCostUnitsRequest.from_dict(bulk_link_cost_units_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


