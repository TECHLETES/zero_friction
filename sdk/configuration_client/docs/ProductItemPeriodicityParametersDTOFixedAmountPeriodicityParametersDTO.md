# ProductItemPeriodicityParametersDTOFixedAmountPeriodicityParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **str** |  | [optional]
**amount** | **int** |  |
**periodicity_type** | [**ProductItemPeriodicityType**](ProductItemPeriodicityType.md) |  | [optional]

## Example

```python
from configuration_client.models.product_item_periodicity_parameters_dto_fixed_amount_periodicity_parameters_dto import ProductItemPeriodicityParametersDTOFixedAmountPeriodicityParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProductItemPeriodicityParametersDTOFixedAmountPeriodicityParametersDTO from a JSON string
product_item_periodicity_parameters_dto_fixed_amount_periodicity_parameters_dto_instance = ProductItemPeriodicityParametersDTOFixedAmountPeriodicityParametersDTO.from_json(json)
# print the JSON string representation of the object
print(ProductItemPeriodicityParametersDTOFixedAmountPeriodicityParametersDTO.to_json())

# convert the object into a dict
product_item_periodicity_parameters_dto_fixed_amount_periodicity_parameters_dto_dict = product_item_periodicity_parameters_dto_fixed_amount_periodicity_parameters_dto_instance.to_dict()
# create an instance of ProductItemPeriodicityParametersDTOFixedAmountPeriodicityParametersDTO from a dict
product_item_periodicity_parameters_dto_fixed_amount_periodicity_parameters_dto_from_dict = ProductItemPeriodicityParametersDTOFixedAmountPeriodicityParametersDTO.from_dict(product_item_periodicity_parameters_dto_fixed_amount_periodicity_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
