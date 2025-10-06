# MeasurementDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[MeasurementDTO]**](MeasurementDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from metering_client.models.measurement_dto_paged_response_model_dto import MeasurementDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeasurementDTOPagedResponseModelDTO from a JSON string
measurement_dto_paged_response_model_dto_instance = MeasurementDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(MeasurementDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
measurement_dto_paged_response_model_dto_dict = measurement_dto_paged_response_model_dto_instance.to_dict()
# create an instance of MeasurementDTOPagedResponseModelDTO from a dict
measurement_dto_paged_response_model_dto_from_dict = MeasurementDTOPagedResponseModelDTO.from_dict(measurement_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


