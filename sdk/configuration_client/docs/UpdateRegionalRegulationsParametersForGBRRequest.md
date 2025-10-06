# UpdateRegionalRegulationsParametersForGBRRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**priority_register_parameters** | [**PriorityRegisterParametersRequest**](PriorityRegisterParametersRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.update_regional_regulations_parameters_for_gbr_request import UpdateRegionalRegulationsParametersForGBRRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateRegionalRegulationsParametersForGBRRequest from a JSON string
update_regional_regulations_parameters_for_gbr_request_instance = UpdateRegionalRegulationsParametersForGBRRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateRegionalRegulationsParametersForGBRRequest.to_json())

# convert the object into a dict
update_regional_regulations_parameters_for_gbr_request_dict = update_regional_regulations_parameters_for_gbr_request_instance.to_dict()
# create an instance of UpdateRegionalRegulationsParametersForGBRRequest from a dict
update_regional_regulations_parameters_for_gbr_request_from_dict = UpdateRegionalRegulationsParametersForGBRRequest.from_dict(update_regional_regulations_parameters_for_gbr_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


