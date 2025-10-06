# BillingItemDTO


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
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**person_tax_code_id** | **str** |  | [optional] 
**organisation_tax_code_id** | **str** |  | [optional] 
**tier_calculation_method** | [**TierCalculationMethod**](TierCalculationMethod.md) |  | [optional] 
**calculation_parameters** | [**BillingCalculationTypeParametersDTO**](BillingCalculationTypeParametersDTO.md) |  | [optional] 
**localisation_level** | [**LocalisationLevel**](LocalisationLevel.md) |  | [optional] 
**localised_fields** | **List[str]** |  | [optional] 
**translated_fields** | **Dict[str, Optional[Dict[str, str]]]** |  | [optional] 

## Example

```python
from configuration_client.models.billing_item_dto import BillingItemDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingItemDTO from a JSON string
billing_item_dto_instance = BillingItemDTO.from_json(json)
# print the JSON string representation of the object
print(BillingItemDTO.to_json())

# convert the object into a dict
billing_item_dto_dict = billing_item_dto_instance.to_dict()
# create an instance of BillingItemDTO from a dict
billing_item_dto_from_dict = BillingItemDTO.from_dict(billing_item_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


