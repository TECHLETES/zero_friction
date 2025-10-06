# MeteringImportDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[MeteringImportDTO]**](MeteringImportDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from metering_client.models.metering_import_dto_paged_response_model_dto import MeteringImportDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringImportDTOPagedResponseModelDTO from a JSON string
metering_import_dto_paged_response_model_dto_instance = MeteringImportDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringImportDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
metering_import_dto_paged_response_model_dto_dict = metering_import_dto_paged_response_model_dto_instance.to_dict()
# create an instance of MeteringImportDTOPagedResponseModelDTO from a dict
metering_import_dto_paged_response_model_dto_from_dict = MeteringImportDTOPagedResponseModelDTO.from_dict(metering_import_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


