# AdvanceDetailsDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**advance_amount** | **float** |  | [optional]
**original_amount** | **float** |  | [optional]
**changed_by** | [**AdvanceAmountChangedBy**](AdvanceAmountChangedBy.md) |  | [optional]
**changed_by_user_id** | **str** |  | [optional]
**changed_date** | **datetime** |  | [optional]
**advance_amount_excl_vat** | **float** |  | [optional]
**advance_frequency** | [**AdvanceFrequency**](AdvanceFrequency.md) |  | [optional]
**advance_calculation_type** | [**AdvanceCalculationType**](AdvanceCalculationType.md) |  | [optional]
**advance_period_percentages** | [**List[AdvancePeriodPercentage]**](AdvancePeriodPercentage.md) |  | [optional]

## Example

```python
from billing_client.models.advance_details_dto import AdvanceDetailsDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AdvanceDetailsDTO from a JSON string
advance_details_dto_instance = AdvanceDetailsDTO.from_json(json)
# print the JSON string representation of the object
print(AdvanceDetailsDTO.to_json())

# convert the object into a dict
advance_details_dto_dict = advance_details_dto_instance.to_dict()
# create an instance of AdvanceDetailsDTO from a dict
advance_details_dto_from_dict = AdvanceDetailsDTO.from_dict(advance_details_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
