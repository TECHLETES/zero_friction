# ImportedMeasurementsOverviewDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**measurements** | [**ImportedMeasurementProcessingResultDTOPagedResponseModelDTO**](ImportedMeasurementProcessingResultDTOPagedResponseModelDTO.md) |  | [optional] 
**total_invalid_measurements** | **int** |  | [optional] 
**total_valid_measurements** | **int** |  | [optional] 
**total_measurements_not_processed** | **int** |  | [optional] 
**total_measurements_processed** | **int** |  | [optional] 
**total_lines_with_format_issues** | **int** |  | [optional] 

## Example

```python
from metering_client.models.imported_measurements_overview_dto import ImportedMeasurementsOverviewDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ImportedMeasurementsOverviewDTO from a JSON string
imported_measurements_overview_dto_instance = ImportedMeasurementsOverviewDTO.from_json(json)
# print the JSON string representation of the object
print(ImportedMeasurementsOverviewDTO.to_json())

# convert the object into a dict
imported_measurements_overview_dto_dict = imported_measurements_overview_dto_instance.to_dict()
# create an instance of ImportedMeasurementsOverviewDTO from a dict
imported_measurements_overview_dto_from_dict = ImportedMeasurementsOverviewDTO.from_dict(imported_measurements_overview_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


