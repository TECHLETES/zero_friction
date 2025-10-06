# UpdateAdvanceCalculationParametersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recalculation_type** | [**AdvanceRecalculationType**](AdvanceRecalculationType.md) | Defines how and if we will recalculate advances | [optional] 
**advance_limit_type** | [**AdvanceAmountLimitType**](AdvanceAmountLimitType.md) | Defines how we will limit the deviation of the new advance amount | [optional] 
**advance_limit_lower_threshold** | **float** | A threshold for decrease of advance amount that will update the advance amount if the threshold is exceeded. | [optional] 
**advance_limit_upper_threshold** | **float** | A threshold for increase of advance amount that will update the advance amount if the threshold is exceeded. | [optional] 
**minimum_accuracy** | [**Level**](Level.md) | The minimum accuracy of the estimated invoice would we   want to use it to calculate an advance amount. | [optional] 

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


