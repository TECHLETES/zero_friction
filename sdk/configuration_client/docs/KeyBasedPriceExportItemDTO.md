# KeyBasedPriceExportItemDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **str** |  | [optional] 
**unit_price** | **float** |  | [optional] 
**unit_price_uses_formula** | **bool** |  | [optional] 
**formula_expression** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.key_based_price_export_item_dto import KeyBasedPriceExportItemDTO

# TODO update the JSON string below
json = "{}"
# create an instance of KeyBasedPriceExportItemDTO from a JSON string
key_based_price_export_item_dto_instance = KeyBasedPriceExportItemDTO.from_json(json)
# print the JSON string representation of the object
print(KeyBasedPriceExportItemDTO.to_json())

# convert the object into a dict
key_based_price_export_item_dto_dict = key_based_price_export_item_dto_instance.to_dict()
# create an instance of KeyBasedPriceExportItemDTO from a dict
key_based_price_export_item_dto_from_dict = KeyBasedPriceExportItemDTO.from_dict(key_based_price_export_item_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


