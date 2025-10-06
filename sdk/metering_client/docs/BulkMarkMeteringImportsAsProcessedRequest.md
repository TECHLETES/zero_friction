# BulkMarkMeteringImportsAsProcessedRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetMeteringImportsQueryParams**](GetMeteringImportsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from metering_client.models.bulk_mark_metering_imports_as_processed_request import BulkMarkMeteringImportsAsProcessedRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkMarkMeteringImportsAsProcessedRequest from a JSON string
bulk_mark_metering_imports_as_processed_request_instance = BulkMarkMeteringImportsAsProcessedRequest.from_json(json)
# print the JSON string representation of the object
print(BulkMarkMeteringImportsAsProcessedRequest.to_json())

# convert the object into a dict
bulk_mark_metering_imports_as_processed_request_dict = bulk_mark_metering_imports_as_processed_request_instance.to_dict()
# create an instance of BulkMarkMeteringImportsAsProcessedRequest from a dict
bulk_mark_metering_imports_as_processed_request_from_dict = BulkMarkMeteringImportsAsProcessedRequest.from_dict(bulk_mark_metering_imports_as_processed_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


