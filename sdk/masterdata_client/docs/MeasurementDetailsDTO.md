# MeasurementDetailsDTO


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
**time_zone** | **str** |  | [optional] 
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.measurement_details_dto import MeasurementDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeasurementDetailsDTO from a JSON string
measurement_details_dto_instance = MeasurementDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(MeasurementDetailsDTO.to_json())

# convert the object into a dict
measurement_details_dto_dict = measurement_details_dto_instance.to_dict()
# create an instance of MeasurementDetailsDTO from a dict
measurement_details_dto_from_dict = MeasurementDetailsDTO.from_dict(measurement_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


