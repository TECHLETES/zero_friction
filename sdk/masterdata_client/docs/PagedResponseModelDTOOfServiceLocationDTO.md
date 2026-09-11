# PagedResponseModelDTOOfServiceLocationDTO


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
from masterdata_client.models.paged_response_model_dtoof_service_location_dto import PagedResponseModelDTOOfServiceLocationDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PagedResponseModelDTOOfServiceLocationDTO from a JSON string
paged_response_model_dtoof_service_location_dto_instance = PagedResponseModelDTOOfServiceLocationDTO.from_json(json)
# print the JSON string representation of the object
print(PagedResponseModelDTOOfServiceLocationDTO.to_json())

# convert the object into a dict
paged_response_model_dtoof_service_location_dto_dict = paged_response_model_dtoof_service_location_dto_instance.to_dict()
# create an instance of PagedResponseModelDTOOfServiceLocationDTO from a dict
paged_response_model_dtoof_service_location_dto_from_dict = PagedResponseModelDTOOfServiceLocationDTO.from_dict(paged_response_model_dtoof_service_location_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
