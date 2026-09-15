# UpdateAdvancePercentageParametersRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**monthly** | [**UpdateAdvanceFrequencyPercentagesRequest**](UpdateAdvanceFrequencyPercentagesRequest.md) |  | [optional] 
**quarterly** | [**UpdateAdvanceFrequencyPercentagesRequest**](UpdateAdvanceFrequencyPercentagesRequest.md) |  | [optional] 
**half_yearly** | [**UpdateAdvanceFrequencyPercentagesRequest**](UpdateAdvanceFrequencyPercentagesRequest.md) |  | [optional] 

## Example

```python
from configuration_client.models.update_advance_percentage_parameters_request import UpdateAdvancePercentageParametersRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateAdvancePercentageParametersRequest from a JSON string
update_advance_percentage_parameters_request_instance = UpdateAdvancePercentageParametersRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateAdvancePercentageParametersRequest.to_json())

# convert the object into a dict
update_advance_percentage_parameters_request_dict = update_advance_percentage_parameters_request_instance.to_dict()
# create an instance of UpdateAdvancePercentageParametersRequest from a dict
update_advance_percentage_parameters_request_from_dict = UpdateAdvancePercentageParametersRequest.from_dict(update_advance_percentage_parameters_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


