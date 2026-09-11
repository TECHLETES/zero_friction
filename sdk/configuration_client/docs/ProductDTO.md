# ProductDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional]
**invoice_upfront** | **bool** |  | [optional]
**is_prepayment_eligible** | **bool** |  | [optional]
**billing_items** | [**List[ProductBillingItemDTO]**](ProductBillingItemDTO.md) |  | [optional]
**attachments** | [**List[ProductAttachmentDTO]**](ProductAttachmentDTO.md) |  | [optional]
**localisation_level** | [**LocalisationLevel**](LocalisationLevel.md) |  | [optional]
**localised_fields** | **List[str]** |  | [optional]
**translated_fields** | **Dict[str, Dict[str, str]]** |  | [optional]
**accounting_code_id** | **str** |  | [optional]
**organisation_id** | **str** |  | [optional]
**id** | **str** |  | [optional]
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional]
**created_date_time** | **datetime** |  | [optional]
**discriminator** | **str** |  | [optional]
**etag** | **str** |  | [optional]
**has_errors** | **bool** |  | [optional]
**is_read_only** | **bool** |  | [optional]

## Example

```python
from configuration_client.models.product_dto import ProductDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ProductDTO from a JSON string
product_dto_instance = ProductDTO.from_json(json)
# print the JSON string representation of the object
print(ProductDTO.to_json())

# convert the object into a dict
product_dto_dict = product_dto_instance.to_dict()
# create an instance of ProductDTO from a dict
product_dto_from_dict = ProductDTO.from_dict(product_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
