# ServiceConsumptionDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[ServiceConsumptionDTO]**](ServiceConsumptionDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from metering_client.models.service_consumption_dto_paged_response_model_dto import ServiceConsumptionDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceConsumptionDTOPagedResponseModelDTO from a JSON string
service_consumption_dto_paged_response_model_dto_instance = ServiceConsumptionDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceConsumptionDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
service_consumption_dto_paged_response_model_dto_dict = service_consumption_dto_paged_response_model_dto_instance.to_dict()
# create an instance of ServiceConsumptionDTOPagedResponseModelDTO from a dict
service_consumption_dto_paged_response_model_dto_from_dict = ServiceConsumptionDTOPagedResponseModelDTO.from_dict(service_consumption_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


