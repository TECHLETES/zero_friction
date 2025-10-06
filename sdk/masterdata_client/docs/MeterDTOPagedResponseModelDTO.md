# MeterDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[MeterDTO]**](MeterDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.meter_dto_paged_response_model_dto import MeterDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeterDTOPagedResponseModelDTO from a JSON string
meter_dto_paged_response_model_dto_instance = MeterDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(MeterDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
meter_dto_paged_response_model_dto_dict = meter_dto_paged_response_model_dto_instance.to_dict()
# create an instance of MeterDTOPagedResponseModelDTO from a dict
meter_dto_paged_response_model_dto_from_dict = MeterDTOPagedResponseModelDTO.from_dict(meter_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


