# PrepaymentParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**emergency_credit** | **float** |  | [optional] 
**enable_deduction** | **bool** |  | [optional] 
**deduction_rate** | **float** |  | [optional] 

## Example

```python
from configuration_client.models.prepayment_parameters_dto import PrepaymentParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PrepaymentParametersDTO from a JSON string
prepayment_parameters_dto_instance = PrepaymentParametersDTO.from_json(json)
# print the JSON string representation of the object
print(PrepaymentParametersDTO.to_json())

# convert the object into a dict
prepayment_parameters_dto_dict = prepayment_parameters_dto_instance.to_dict()
# create an instance of PrepaymentParametersDTO from a dict
prepayment_parameters_dto_from_dict = PrepaymentParametersDTO.from_dict(prepayment_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


