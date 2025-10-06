# BulkProcessMeteringImportRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetMeteringImportsQueryParams**](GetMeteringImportsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from metering_client.models.bulk_process_metering_import_request import BulkProcessMeteringImportRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkProcessMeteringImportRequest from a JSON string
bulk_process_metering_import_request_instance = BulkProcessMeteringImportRequest.from_json(json)
# print the JSON string representation of the object
print(BulkProcessMeteringImportRequest.to_json())

# convert the object into a dict
bulk_process_metering_import_request_dict = bulk_process_metering_import_request_instance.to_dict()
# create an instance of BulkProcessMeteringImportRequest from a dict
bulk_process_metering_import_request_from_dict = BulkProcessMeteringImportRequest.from_dict(bulk_process_metering_import_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


