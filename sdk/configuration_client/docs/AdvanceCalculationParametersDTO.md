# AdvanceCalculationParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recalculation_type** | [**AdvanceRecalculationType**](AdvanceRecalculationType.md) |  | [optional] 
**advance_limit_type** | [**AdvanceAmountLimitType**](AdvanceAmountLimitType.md) |  | [optional] 
**advance_limit_lower_threshold** | **float** |  | [optional] 
**advance_limit_upper_threshold** | **float** |  | [optional] 
**minimum_accuracy** | [**Level**](Level.md) |  | [optional] 

## Example

```python
from configuration_client.models.advance_calculation_parameters_dto import AdvanceCalculationParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AdvanceCalculationParametersDTO from a JSON string
advance_calculation_parameters_dto_instance = AdvanceCalculationParametersDTO.from_json(json)
# print the JSON string representation of the object
print(AdvanceCalculationParametersDTO.to_json())

# convert the object into a dict
advance_calculation_parameters_dto_dict = advance_calculation_parameters_dto_instance.to_dict()
# create an instance of AdvanceCalculationParametersDTO from a dict
advance_calculation_parameters_dto_from_dict = AdvanceCalculationParametersDTO.from_dict(advance_calculation_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


