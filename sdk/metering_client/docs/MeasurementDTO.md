# MeasurementDTO

Represents a measurement reading from a meter with associated metadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**external_channel_identifier** | **str** | External identifier for the channel | [optional] 
**meter_serial_number** | **str** | Serial number of the meter that took the measurement | [optional] 
**operation_id** | **str** | Unique identifier of the operation that generated this measurement | [optional] 
**value** | **float** | The measured value | [optional] 
**end_date_time** | **datetime** | Date and time when the measurement was taken | [optional] 
**deleted** | **bool** | Indicates whether this measurement has been deleted | [optional] 
**data_frequency** | [**DataFrequency**](DataFrequency.md) | Frequency of the measurement data points | [optional] 
**incrementation_type** | [**IncrementationType**](IncrementationType.md) | Type of increment used for the measurement | [optional] 
**metering_type** | [**MeteringType**](MeteringType.md) | Type of metering used for the measurement | [optional] 
**utility_type** | [**UtilityType**](UtilityType.md) | Type of utility being measured | [optional] 
**direction** | [**Direction**](Direction.md) | Direction of the measurement flow | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) | Unit of measure for the measurement value | [optional] 
**time_of_use** | **str** | Time of use classification for the measurement | [optional] 
**issue** | [**MeteringIssueReference**](MeteringIssueReference.md) | Reference to any metering issue associated with this measurement | [optional] 
**has_issue** | **bool** | Indicates whether this measurement has an associated issue | [optional] [readonly] 

## Example

```python
from metering_client.models.measurement_dto import MeasurementDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeasurementDTO from a JSON string
measurement_dto_instance = MeasurementDTO.from_json(json)
# print the JSON string representation of the object
print(MeasurementDTO.to_json())

# convert the object into a dict
measurement_dto_dict = measurement_dto_instance.to_dict()
# create an instance of MeasurementDTO from a dict
measurement_dto_from_dict = MeasurementDTO.from_dict(measurement_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


