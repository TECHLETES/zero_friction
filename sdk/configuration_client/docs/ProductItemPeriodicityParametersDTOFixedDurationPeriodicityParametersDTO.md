# ProductItemPeriodicityParametersDTOFixedDurationPeriodicityParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**amount** | **int** |  |
**frequency** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional]
**periodicity_type** | [**ProductItemPeriodicityType**](ProductItemPeriodicityType.md) |  | [optional]

## Example

```python
from configuration_client.models.product_item_periodicity_parameters_dto_fixed_duration_periodicity_parameters_dto import ProductItemPeriodicityParametersDTOFixedDurationPeriodicityParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProductItemPeriodicityParametersDTOFixedDurationPeriodicityParametersDTO from a JSON string
product_item_periodicity_parameters_dto_fixed_duration_periodicity_parameters_dto_instance = ProductItemPeriodicityParametersDTOFixedDurationPeriodicityParametersDTO.from_json(json)
# print the JSON string representation of the object
print(ProductItemPeriodicityParametersDTOFixedDurationPeriodicityParametersDTO.to_json())

# convert the object into a dict
product_item_periodicity_parameters_dto_fixed_duration_periodicity_parameters_dto_dict = product_item_periodicity_parameters_dto_fixed_duration_periodicity_parameters_dto_instance.to_dict()
# create an instance of ProductItemPeriodicityParametersDTOFixedDurationPeriodicityParametersDTO from a dict
product_item_periodicity_parameters_dto_fixed_duration_periodicity_parameters_dto_from_dict = ProductItemPeriodicityParametersDTOFixedDurationPeriodicityParametersDTO.from_dict(product_item_periodicity_parameters_dto_fixed_duration_periodicity_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
