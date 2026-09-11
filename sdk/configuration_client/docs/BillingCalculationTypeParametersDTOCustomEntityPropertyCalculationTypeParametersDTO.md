# BillingCalculationTypeParametersDTOCustomEntityPropertyCalculationTypeParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional] 
**custom_entity_property_type_id** | **str** |  | 
**scope** | [**BillingScope**](BillingScope.md) |  | 
**utility_type** | [**UtilityType**](UtilityType.md) |  | [optional] 
**billing_calculation_type** | [**BillingCalculationType**](BillingCalculationType.md) |  | [optional] 
**unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | 

## Example

```python
from configuration_client.models.billing_calculation_type_parameters_dto_custom_entity_property_calculation_type_parameters_dto import BillingCalculationTypeParametersDTOCustomEntityPropertyCalculationTypeParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingCalculationTypeParametersDTOCustomEntityPropertyCalculationTypeParametersDTO from a JSON string
billing_calculation_type_parameters_dto_custom_entity_property_calculation_type_parameters_dto_instance = BillingCalculationTypeParametersDTOCustomEntityPropertyCalculationTypeParametersDTO.from_json(json)
# print the JSON string representation of the object
print(BillingCalculationTypeParametersDTOCustomEntityPropertyCalculationTypeParametersDTO.to_json())

# convert the object into a dict
billing_calculation_type_parameters_dto_custom_entity_property_calculation_type_parameters_dto_dict = billing_calculation_type_parameters_dto_custom_entity_property_calculation_type_parameters_dto_instance.to_dict()
# create an instance of BillingCalculationTypeParametersDTOCustomEntityPropertyCalculationTypeParametersDTO from a dict
billing_calculation_type_parameters_dto_custom_entity_property_calculation_type_parameters_dto_from_dict = BillingCalculationTypeParametersDTOCustomEntityPropertyCalculationTypeParametersDTO.from_dict(billing_calculation_type_parameters_dto_custom_entity_property_calculation_type_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


