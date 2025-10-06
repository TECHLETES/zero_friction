# BulkUninstallMeterRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**remove_date** | **datetime** |  | [optional] 
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetMetersQueryParams**](GetMetersQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from masterdata_client.models.bulk_uninstall_meter_request import BulkUninstallMeterRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkUninstallMeterRequest from a JSON string
bulk_uninstall_meter_request_instance = BulkUninstallMeterRequest.from_json(json)
# print the JSON string representation of the object
print(BulkUninstallMeterRequest.to_json())

# convert the object into a dict
bulk_uninstall_meter_request_dict = bulk_uninstall_meter_request_instance.to_dict()
# create an instance of BulkUninstallMeterRequest from a dict
bulk_uninstall_meter_request_from_dict = BulkUninstallMeterRequest.from_dict(bulk_uninstall_meter_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


