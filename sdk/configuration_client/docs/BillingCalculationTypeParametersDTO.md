# BillingCalculationTypeParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | 
**billing_calculation_type** | [**BillingCalculationType**](BillingCalculationType.md) |  | [optional] [readonly] 

## Example

```python
from configuration_client.models.billing_calculation_type_parameters_dto import BillingCalculationTypeParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingCalculationTypeParametersDTO from a JSON string
billing_calculation_type_parameters_dto_instance = BillingCalculationTypeParametersDTO.from_json(json)
# print the JSON string representation of the object
print(BillingCalculationTypeParametersDTO.to_json())

# convert the object into a dict
billing_calculation_type_parameters_dto_dict = billing_calculation_type_parameters_dto_instance.to_dict()
# create an instance of BillingCalculationTypeParametersDTO from a dict
billing_calculation_type_parameters_dto_from_dict = BillingCalculationTypeParametersDTO.from_dict(billing_calculation_type_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


