# BillingItemDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**person_tax_code_id** | **str** |  | [optional] 
**organisation_tax_code_id** | **str** |  | [optional] 
**hide_when_zero** | **bool** |  | [optional] 
**is_prepayment_eligible** | **bool** |  | [optional] 
**tier_calculation_method** | [**TierCalculationMethod**](TierCalculationMethod.md) |  | [optional] 
**calculation_parameters** | [**BillingCalculationTypeParametersDTO**](BillingCalculationTypeParametersDTO.md) |  | [optional] 
**localisation_level** | [**LocalisationLevel**](LocalisationLevel.md) |  | [optional] 
**localised_fields** | **List[str]** |  | [optional] 
**translated_fields** | **Dict[str, Dict[str, str]]** |  | [optional] 
**accounting_code_id** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

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


