# UpdateAdvanceCalculationParametersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recalculation_type** | [**AdvanceRecalculationType**](AdvanceRecalculationType.md) |  | [optional]
**advance_limit_type** | [**AdvanceAmountLimitType**](AdvanceAmountLimitType.md) |  | [optional]
**advance_limit_lower_threshold** | **float** |  | [optional]
**advance_limit_upper_threshold** | **float** |  | [optional]
**minimum_accuracy** | [**Level**](Level.md) |  |

## Example

```python
from configuration_client.models.update_advance_calculation_parameters_request import UpdateAdvanceCalculationParametersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateAdvanceCalculationParametersRequest from a JSON string
update_advance_calculation_parameters_request_instance = UpdateAdvanceCalculationParametersRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateAdvanceCalculationParametersRequest.to_json())

# convert the object into a dict
update_advance_calculation_parameters_request_dict = update_advance_calculation_parameters_request_instance.to_dict()
# create an instance of UpdateAdvanceCalculationParametersRequest from a dict
update_advance_calculation_parameters_request_from_dict = UpdateAdvanceCalculationParametersRequest.from_dict(update_advance_calculation_parameters_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
