# ServiceLocationDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[ServiceLocationDTO]**](ServiceLocationDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.service_location_dto_paged_response_model_dto import ServiceLocationDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ServiceLocationDTOPagedResponseModelDTO from a JSON string
service_location_dto_paged_response_model_dto_instance = ServiceLocationDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(ServiceLocationDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
service_location_dto_paged_response_model_dto_dict = service_location_dto_paged_response_model_dto_instance.to_dict()
# create an instance of ServiceLocationDTOPagedResponseModelDTO from a dict
service_location_dto_paged_response_model_dto_from_dict = ServiceLocationDTOPagedResponseModelDTO.from_dict(service_location_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


