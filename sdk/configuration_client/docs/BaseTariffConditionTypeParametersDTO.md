# BaseTariffConditionTypeParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | 
**custom_entity_property_type_id** | **str** |  | 
**custom_entity_property_type_name** | **str** |  | [optional] 
**value_string** | **str** |  | [optional] 
**value_boolean** | **bool** |  | [optional] 
**value_number** | **int** |  | [optional] 
**value_decimal** | **float** |  | [optional] 
**value** | [**PaymentMethod**](PaymentMethod.md) |  | 
**time_of_use_type_id** | **str** |  | 
**time_of_use_type_code** | **str** |  | [optional] 
**time_of_use_type_description** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.base_tariff_condition_type_parameters_dto import BaseTariffConditionTypeParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BaseTariffConditionTypeParametersDTO from a JSON string
base_tariff_condition_type_parameters_dto_instance = BaseTariffConditionTypeParametersDTO.from_json(json)
# print the JSON string representation of the object
print(BaseTariffConditionTypeParametersDTO.to_json())

# convert the object into a dict
base_tariff_condition_type_parameters_dto_dict = base_tariff_condition_type_parameters_dto_instance.to_dict()
# create an instance of BaseTariffConditionTypeParametersDTO from a dict
base_tariff_condition_type_parameters_dto_from_dict = BaseTariffConditionTypeParametersDTO.from_dict(base_tariff_condition_type_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


