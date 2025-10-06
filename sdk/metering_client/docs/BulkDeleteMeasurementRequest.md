# BulkDeleteMeasurementRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**GetMeasurementsQueryParams**](GetMeasurementsQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from metering_client.models.bulk_delete_measurement_request import BulkDeleteMeasurementRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkDeleteMeasurementRequest from a JSON string
bulk_delete_measurement_request_instance = BulkDeleteMeasurementRequest.from_json(json)
# print the JSON string representation of the object
print(BulkDeleteMeasurementRequest.to_json())

# convert the object into a dict
bulk_delete_measurement_request_dict = bulk_delete_measurement_request_instance.to_dict()
# create an instance of BulkDeleteMeasurementRequest from a dict
bulk_delete_measurement_request_from_dict = BulkDeleteMeasurementRequest.from_dict(bulk_delete_measurement_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


