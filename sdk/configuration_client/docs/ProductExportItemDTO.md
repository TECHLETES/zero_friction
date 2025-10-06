# ProductExportItemDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Gets or sets the unique identifier. | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) | Gets or sets the type of the entity. | [optional] 
**created_date_time** | **datetime** | Gets or sets the date and time when the entity was created. | [optional] 
**discriminator** | **str** | Gets or sets the discriminator value. | [optional] 
**etag** | **str** | Gets or sets the ETag value. | [optional] 
**require_attention** | **bool** | Gets a value indicating whether the entity requires attention. | [optional] [readonly] 
**has_errors** | **bool** | Gets or sets a value indicating whether the entity has errors. | [optional] 
**has_warnings** | **bool** | Gets or sets a value indicating whether the entity has warnings. | [optional] 
**is_read_only** | **bool** | Gets or sets a value indicating whether the entity is read-only. | [optional] 
**organisation_id** | **str** | Gets or sets the organization identifier. | [optional] 
**product_name** | **str** |  | [optional] 
**billing_item_name** | **str** |  | [optional] 
**billing_item_unit_of_measure** | [**UnitOfMeasure**](UnitOfMeasure.md) |  | [optional] 
**status** | [**ProductExportStatus**](ProductExportStatus.md) |  | [optional] 
**origin** | [**TariffOrigin**](TariffOrigin.md) |  | [optional] 
**tariff_period_start_date** | **datetime** |  | [optional] 
**tariff_period_end_date** | **datetime** |  | [optional] 
**tariff_type** | [**BillingItemTariffCalculationType**](BillingItemTariffCalculationType.md) |  | [optional] 
**unit_price** | **float** |  | [optional] 
**unit_price_uses_formula** | **bool** |  | [optional] 
**unit_price_formula_expression** | **str** |  | [optional] 
**tiered_price_type** | [**BillingItemTariffCalculationType**](BillingItemTariffCalculationType.md) |  | [optional] 
**tiered_prices** | [**List[KeyBasedPriceExportItemDTO]**](KeyBasedPriceExportItemDTO.md) |  | [optional] 
**custom_entity_property_key** | **str** |  | [optional] 
**custom_entity_property_prices** | [**List[KeyBasedPriceExportItemDTO]**](KeyBasedPriceExportItemDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.product_export_item_dto import ProductExportItemDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProductExportItemDTO from a JSON string
product_export_item_dto_instance = ProductExportItemDTO.from_json(json)
# print the JSON string representation of the object
print(ProductExportItemDTO.to_json())

# convert the object into a dict
product_export_item_dto_dict = product_export_item_dto_instance.to_dict()
# create an instance of ProductExportItemDTO from a dict
product_export_item_dto_from_dict = ProductExportItemDTO.from_dict(product_export_item_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


