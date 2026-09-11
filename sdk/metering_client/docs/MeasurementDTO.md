# MeasurementDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_channel_identifier** | **str** |  | [optional]
**meter_serial_number** | **str** |  | [optional]
**operation_id** | **str** |  | [optional]
**value** | **float** |  | [optional]
**start_date_time** | **datetime** |  | [optional]
**end_date_time** | **datetime** |  | [optional]
**deleted** | **bool** |  | [optional]
**data_frequency** | [**DataFrequency**](DataFrequency.md) |  | [optional]
**incrementation_type** | [**IncrementationType**](IncrementationType.md) |  | [optional]
**metering_type** | [**MeteringType**](MeteringType.md) |  | [optional]
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional]
**direction** | [**Direction**](Direction.md) |  | [optional]
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional]
**time_of_use** | **str** |  | [optional]
**issue** | [**MeteringIssueReference**](MeteringIssueReference.md) |  | [optional]
**has_issue** | **bool** |  | [optional]
**reading_origin** | [**MeasurementReadingOrigin**](MeasurementReadingOrigin.md) |  | [optional]
**reading_method** | [**MeasurementReadingMethod**](MeasurementReadingMethod.md) |  | [optional]
**origin_details** | [**MeasurementOriginDetailsDTOMeteringImportJobOriginDetailsDTO**](MeasurementOriginDetailsDTOMeteringImportJobOriginDetailsDTO.md) |  | [optional]
**organisation_id** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

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
