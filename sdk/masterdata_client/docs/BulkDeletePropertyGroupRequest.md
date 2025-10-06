# BulkDeletePropertyGroupRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mutation_date_time** | **datetime** |  | [optional] 
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetPropertyGroupsQueryParams**](GetPropertyGroupsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_delete_property_group_request import BulkDeletePropertyGroupRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkDeletePropertyGroupRequest from a JSON string
bulk_delete_property_group_request_instance = BulkDeletePropertyGroupRequest.from_json(json)
# print the JSON string representation of the object
print(BulkDeletePropertyGroupRequest.to_json())

# convert the object into a dict
bulk_delete_property_group_request_dict = bulk_delete_property_group_request_instance.to_dict()
# create an instance of BulkDeletePropertyGroupRequest from a dict
bulk_delete_property_group_request_from_dict = BulkDeletePropertyGroupRequest.from_dict(bulk_delete_property_group_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


