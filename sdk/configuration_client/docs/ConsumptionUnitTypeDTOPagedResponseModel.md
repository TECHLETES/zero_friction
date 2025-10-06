# ConsumptionUnitTypeDTOPagedResponseModel


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[ConsumptionUnitTypeDTO]**](ConsumptionUnitTypeDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetails]**](AggregateDetails.md) |  | [optional] 

## Example

```python
from configuration_client.models.consumption_unit_type_dto_paged_response_model import ConsumptionUnitTypeDTOPagedResponseModel

# TODO update the JSON string below
json = "{}"
# create an instance of ConsumptionUnitTypeDTOPagedResponseModel from a JSON string
consumption_unit_type_dto_paged_response_model_instance = ConsumptionUnitTypeDTOPagedResponseModel.from_json(json)
# print the JSON string representation of the object
print(ConsumptionUnitTypeDTOPagedResponseModel.to_json())

# convert the object into a dict
consumption_unit_type_dto_paged_response_model_dict = consumption_unit_type_dto_paged_response_model_instance.to_dict()
# create an instance of ConsumptionUnitTypeDTOPagedResponseModel from a dict
consumption_unit_type_dto_paged_response_model_from_dict = ConsumptionUnitTypeDTOPagedResponseModel.from_dict(consumption_unit_type_dto_paged_response_model_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


