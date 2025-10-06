# MeteringParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**validation_rules** | [**List[BaseMeteringValidationRuleDTO]**](BaseMeteringValidationRuleDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.metering_parameters_dto import MeteringParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of MeteringParametersDTO from a JSON string
metering_parameters_dto_instance = MeteringParametersDTO.from_json(json)
# print the JSON string representation of the object
print(MeteringParametersDTO.to_json())

# convert the object into a dict
metering_parameters_dto_dict = metering_parameters_dto_instance.to_dict()
# create an instance of MeteringParametersDTO from a dict
metering_parameters_dto_from_dict = MeteringParametersDTO.from_dict(metering_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


