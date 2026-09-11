# BulkRestoreServiceLocationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**GetServiceLocationsQueryParams**](GetServiceLocationsQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]

## Example

```python
from masterdata_client.models.bulk_restore_service_location_request import BulkRestoreServiceLocationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkRestoreServiceLocationRequest from a JSON string
bulk_restore_service_location_request_instance = BulkRestoreServiceLocationRequest.from_json(json)
# print the JSON string representation of the object
print(BulkRestoreServiceLocationRequest.to_json())

# convert the object into a dict
bulk_restore_service_location_request_dict = bulk_restore_service_location_request_instance.to_dict()
# create an instance of BulkRestoreServiceLocationRequest from a dict
bulk_restore_service_location_request_from_dict = BulkRestoreServiceLocationRequest.from_dict(bulk_restore_service_location_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
