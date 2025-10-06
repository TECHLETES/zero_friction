# ProductItemPeriodicityParametersDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**periodicity_type** | [**ProductItemPeriodicityType**](ProductItemPeriodicityType.md) |  | [optional] [readonly] 

## Example

```python
from configuration_client.models.product_item_periodicity_parameters_dto import ProductItemPeriodicityParametersDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProductItemPeriodicityParametersDTO from a JSON string
product_item_periodicity_parameters_dto_instance = ProductItemPeriodicityParametersDTO.from_json(json)
# print the JSON string representation of the object
print(ProductItemPeriodicityParametersDTO.to_json())

# convert the object into a dict
product_item_periodicity_parameters_dto_dict = product_item_periodicity_parameters_dto_instance.to_dict()
# create an instance of ProductItemPeriodicityParametersDTO from a dict
product_item_periodicity_parameters_dto_from_dict = ProductItemPeriodicityParametersDTO.from_dict(product_item_periodicity_parameters_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


