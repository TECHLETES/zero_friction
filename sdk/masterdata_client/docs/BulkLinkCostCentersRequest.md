# BulkLinkCostCentersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**PagedCostCenterMappingQueryParams**](PagedCostCenterMappingQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]
**cost_center_id** | **str** |  | [optional]

## Example

```python
from masterdata_client.models.bulk_link_cost_centers_request import BulkLinkCostCentersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkLinkCostCentersRequest from a JSON string
bulk_link_cost_centers_request_instance = BulkLinkCostCentersRequest.from_json(json)
# print the JSON string representation of the object
print(BulkLinkCostCentersRequest.to_json())

# convert the object into a dict
bulk_link_cost_centers_request_dict = bulk_link_cost_centers_request_instance.to_dict()
# create an instance of BulkLinkCostCentersRequest from a dict
bulk_link_cost_centers_request_from_dict = BulkLinkCostCentersRequest.from_dict(bulk_link_cost_centers_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
