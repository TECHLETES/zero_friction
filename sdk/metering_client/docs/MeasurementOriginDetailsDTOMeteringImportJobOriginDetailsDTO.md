# MeasurementOriginDetailsDTOMeteringImportJobOriginDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**import_job_id** | **str** |  | [optional]
**data_provider_id** | **str** |  | [optional]
**data_provider_name** | **str** |  | [optional]
**display_name** | **str** |  | [optional]

## Example

```python
from metering_client.models.measurement_origin_details_dto_metering_import_job_origin_details_dto import MeasurementOriginDetailsDTOMeteringImportJobOriginDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeasurementOriginDetailsDTOMeteringImportJobOriginDetailsDTO from a JSON string
measurement_origin_details_dto_metering_import_job_origin_details_dto_instance = MeasurementOriginDetailsDTOMeteringImportJobOriginDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(MeasurementOriginDetailsDTOMeteringImportJobOriginDetailsDTO.to_json())

# convert the object into a dict
measurement_origin_details_dto_metering_import_job_origin_details_dto_dict = measurement_origin_details_dto_metering_import_job_origin_details_dto_instance.to_dict()
# create an instance of MeasurementOriginDetailsDTOMeteringImportJobOriginDetailsDTO from a dict
measurement_origin_details_dto_metering_import_job_origin_details_dto_from_dict = MeasurementOriginDetailsDTOMeteringImportJobOriginDetailsDTO.from_dict(measurement_origin_details_dto_metering_import_job_origin_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
