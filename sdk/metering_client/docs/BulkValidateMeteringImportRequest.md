# BulkValidateMeteringImportRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional]
**var_query_params** | [**GetMeteringImportsQueryParams**](GetMeteringImportsQueryParams.md) |  | [optional]
**quick_filter** | **str** |  | [optional]

## Example

```python
from metering_client.models.bulk_validate_metering_import_request import BulkValidateMeteringImportRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkValidateMeteringImportRequest from a JSON string
bulk_validate_metering_import_request_instance = BulkValidateMeteringImportRequest.from_json(json)
# print the JSON string representation of the object
print(BulkValidateMeteringImportRequest.to_json())

# convert the object into a dict
bulk_validate_metering_import_request_dict = bulk_validate_metering_import_request_instance.to_dict()
# create an instance of BulkValidateMeteringImportRequest from a dict
bulk_validate_metering_import_request_from_dict = BulkValidateMeteringImportRequest.from_dict(bulk_validate_metering_import_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
