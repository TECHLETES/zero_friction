# BillingCalculationTypeParametersDTOAttributeCalculationTypeParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**billing_calculation_type** | [**BillingCalculationType**](BillingCalculationType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | 

## Example

```python
from configuration_client.models.billing_calculation_type_parameters_dto_attribute_calculation_type_parameters_dto import BillingCalculationTypeParametersDTOAttributeCalculationTypeParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingCalculationTypeParametersDTOAttributeCalculationTypeParametersDTO from a JSON string
billing_calculation_type_parameters_dto_attribute_calculation_type_parameters_dto_instance = BillingCalculationTypeParametersDTOAttributeCalculationTypeParametersDTO.from_json(json)
# print the JSON string representation of the object
print(BillingCalculationTypeParametersDTOAttributeCalculationTypeParametersDTO.to_json())

# convert the object into a dict
billing_calculation_type_parameters_dto_attribute_calculation_type_parameters_dto_dict = billing_calculation_type_parameters_dto_attribute_calculation_type_parameters_dto_instance.to_dict()
# create an instance of BillingCalculationTypeParametersDTOAttributeCalculationTypeParametersDTO from a dict
billing_calculation_type_parameters_dto_attribute_calculation_type_parameters_dto_from_dict = BillingCalculationTypeParametersDTOAttributeCalculationTypeParametersDTO.from_dict(billing_calculation_type_parameters_dto_attribute_calculation_type_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


