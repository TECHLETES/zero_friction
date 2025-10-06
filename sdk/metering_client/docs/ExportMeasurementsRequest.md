# ExportMeasurementsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meter_ids** | **List[str]** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**order_by** | **str** |  | [optional] 

## Example

```python
from metering_client.models.export_measurements_request import ExportMeasurementsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ExportMeasurementsRequest from a JSON string
export_measurements_request_instance = ExportMeasurementsRequest.from_json(json)
# print the JSON string representation of the object
print(ExportMeasurementsRequest.to_json())

# convert the object into a dict
export_measurements_request_dict = export_measurements_request_instance.to_dict()
# create an instance of ExportMeasurementsRequest from a dict
export_measurements_request_from_dict = ExportMeasurementsRequest.from_dict(export_measurements_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


