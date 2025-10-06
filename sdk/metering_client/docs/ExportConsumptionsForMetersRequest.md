# ExportConsumptionsForMetersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_query_params** | [**GetMetersQueryParams**](GetMetersQueryParams.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 
**meter_ids** | **List[str]** |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**only_validate** | **bool** |  | [optional] 

## Example

```python
from metering_client.models.export_consumptions_for_meters_request import ExportConsumptionsForMetersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ExportConsumptionsForMetersRequest from a JSON string
export_consumptions_for_meters_request_instance = ExportConsumptionsForMetersRequest.from_json(json)
# print the JSON string representation of the object
print(ExportConsumptionsForMetersRequest.to_json())

# convert the object into a dict
export_consumptions_for_meters_request_dict = export_consumptions_for_meters_request_instance.to_dict()
# create an instance of ExportConsumptionsForMetersRequest from a dict
export_consumptions_for_meters_request_from_dict = ExportConsumptionsForMetersRequest.from_dict(export_consumptions_for_meters_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


