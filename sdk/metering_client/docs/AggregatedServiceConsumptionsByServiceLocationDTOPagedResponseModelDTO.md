# AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[AggregatedServiceConsumptionsByServiceLocationDTO]**](AggregatedServiceConsumptionsByServiceLocationDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from metering_client.models.aggregated_service_consumptions_by_service_location_dto_paged_response_model_dto import AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTO from a JSON string
aggregated_service_consumptions_by_service_location_dto_paged_response_model_dto_instance = AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
aggregated_service_consumptions_by_service_location_dto_paged_response_model_dto_dict = aggregated_service_consumptions_by_service_location_dto_paged_response_model_dto_instance.to_dict()
# create an instance of AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTO from a dict
aggregated_service_consumptions_by_service_location_dto_paged_response_model_dto_from_dict = AggregatedServiceConsumptionsByServiceLocationDTOPagedResponseModelDTO.from_dict(aggregated_service_consumptions_by_service_location_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


