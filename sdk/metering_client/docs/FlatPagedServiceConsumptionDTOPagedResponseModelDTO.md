# FlatPagedServiceConsumptionDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[FlatPagedServiceConsumptionDTO]**](FlatPagedServiceConsumptionDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from metering_client.models.flat_paged_service_consumption_dto_paged_response_model_dto import FlatPagedServiceConsumptionDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of FlatPagedServiceConsumptionDTOPagedResponseModelDTO from a JSON string
flat_paged_service_consumption_dto_paged_response_model_dto_instance = FlatPagedServiceConsumptionDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(FlatPagedServiceConsumptionDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
flat_paged_service_consumption_dto_paged_response_model_dto_dict = flat_paged_service_consumption_dto_paged_response_model_dto_instance.to_dict()
# create an instance of FlatPagedServiceConsumptionDTOPagedResponseModelDTO from a dict
flat_paged_service_consumption_dto_paged_response_model_dto_from_dict = FlatPagedServiceConsumptionDTOPagedResponseModelDTO.from_dict(flat_paged_service_consumption_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


