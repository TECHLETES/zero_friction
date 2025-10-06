# MoveRequestMeasurementDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**internal_meter_id** | **str** |  | [optional] 
**external_channel_identifier** | **str** |  | [optional] 
**meter_serial_number** | **str** |  | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**time_of_use** | **str** |  | [optional] 
**value** | **float** |  | [optional] 

## Example

```python
from masterdata_client.models.move_request_measurement_details import MoveRequestMeasurementDetails

# TODO update the JSON string below
json = "{}"
# create an instance of MoveRequestMeasurementDetails from a JSON string
move_request_measurement_details_instance = MoveRequestMeasurementDetails.from_json(json)
# print the JSON string representation of the object
print(MoveRequestMeasurementDetails.to_json())

# convert the object into a dict
move_request_measurement_details_dict = move_request_measurement_details_instance.to_dict()
# create an instance of MoveRequestMeasurementDetails from a dict
move_request_measurement_details_from_dict = MoveRequestMeasurementDetails.from_dict(move_request_measurement_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


