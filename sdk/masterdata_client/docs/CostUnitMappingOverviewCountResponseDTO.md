# CostUnitMappingOverviewCountResponseDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_groups** | **int** |  | [optional]

## Example

```python
from masterdata_client.models.cost_unit_mapping_overview_count_response_dto import CostUnitMappingOverviewCountResponseDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CostUnitMappingOverviewCountResponseDTO from a JSON string
cost_unit_mapping_overview_count_response_dto_instance = CostUnitMappingOverviewCountResponseDTO.from_json(json)
# print the JSON string representation of the object
print(CostUnitMappingOverviewCountResponseDTO.to_json())

# convert the object into a dict
cost_unit_mapping_overview_count_response_dto_dict = cost_unit_mapping_overview_count_response_dto_instance.to_dict()
# create an instance of CostUnitMappingOverviewCountResponseDTO from a dict
cost_unit_mapping_overview_count_response_dto_from_dict = CostUnitMappingOverviewCountResponseDTO.from_dict(cost_unit_mapping_overview_count_response_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
