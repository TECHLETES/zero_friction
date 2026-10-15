# AdvancePercentageParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**monthly** | [**AdvanceFrequencyPercentagesDTO**](AdvanceFrequencyPercentagesDTO.md) |  | [optional] 
**quarterly** | [**AdvanceFrequencyPercentagesDTO**](AdvanceFrequencyPercentagesDTO.md) |  | [optional] 
**half_yearly** | [**AdvanceFrequencyPercentagesDTO**](AdvanceFrequencyPercentagesDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.advance_percentage_parameters_dto import AdvancePercentageParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AdvancePercentageParametersDTO from a JSON string
advance_percentage_parameters_dto_instance = AdvancePercentageParametersDTO.from_json(json)
# print the JSON string representation of the object
print(AdvancePercentageParametersDTO.to_json())

# convert the object into a dict
advance_percentage_parameters_dto_dict = advance_percentage_parameters_dto_instance.to_dict()
# create an instance of AdvancePercentageParametersDTO from a dict
advance_percentage_parameters_dto_from_dict = AdvancePercentageParametersDTO.from_dict(advance_percentage_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


