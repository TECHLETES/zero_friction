# ApiResponseDTOOfCostCenterMappingOverviewCountResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**CostCenterMappingOverviewCountResponseDTO**](CostCenterMappingOverviewCountResponseDTO.md) |  | [optional]
**errors** | [**List[LocalisedErrorDTO]**](LocalisedErrorDTO.md) |  | [optional]
**success** | **bool** |  | [optional]
**applicable_entities_count** | **int** |  | [optional]
**requested_entities_count** | **int** |  | [optional]
**succeeded_entities_count** | **int** |  | [optional]
**is_synchronous** | **bool** |  | [optional]

## Example

```python
from masterdata_client.models.api_response_dtoof_cost_center_mapping_overview_count_response_dto import ApiResponseDTOOfCostCenterMappingOverviewCountResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ApiResponseDTOOfCostCenterMappingOverviewCountResponseDTO from a JSON string
api_response_dtoof_cost_center_mapping_overview_count_response_dto_instance = ApiResponseDTOOfCostCenterMappingOverviewCountResponseDTO.from_json(json)
# print the JSON string representation of the object
print(ApiResponseDTOOfCostCenterMappingOverviewCountResponseDTO.to_json())

# convert the object into a dict
api_response_dtoof_cost_center_mapping_overview_count_response_dto_dict = api_response_dtoof_cost_center_mapping_overview_count_response_dto_instance.to_dict()
# create an instance of ApiResponseDTOOfCostCenterMappingOverviewCountResponseDTO from a dict
api_response_dtoof_cost_center_mapping_overview_count_response_dto_from_dict = ApiResponseDTOOfCostCenterMappingOverviewCountResponseDTO.from_dict(api_response_dtoof_cost_center_mapping_overview_count_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
