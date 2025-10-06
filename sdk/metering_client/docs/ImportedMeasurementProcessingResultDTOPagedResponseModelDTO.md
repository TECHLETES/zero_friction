# ImportedMeasurementProcessingResultDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[ImportedMeasurementProcessingResultDTO]**](ImportedMeasurementProcessingResultDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from metering_client.models.imported_measurement_processing_result_dto_paged_response_model_dto import ImportedMeasurementProcessingResultDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ImportedMeasurementProcessingResultDTOPagedResponseModelDTO from a JSON string
imported_measurement_processing_result_dto_paged_response_model_dto_instance = ImportedMeasurementProcessingResultDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(ImportedMeasurementProcessingResultDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
imported_measurement_processing_result_dto_paged_response_model_dto_dict = imported_measurement_processing_result_dto_paged_response_model_dto_instance.to_dict()
# create an instance of ImportedMeasurementProcessingResultDTOPagedResponseModelDTO from a dict
imported_measurement_processing_result_dto_paged_response_model_dto_from_dict = ImportedMeasurementProcessingResultDTOPagedResponseModelDTO.from_dict(imported_measurement_processing_result_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


