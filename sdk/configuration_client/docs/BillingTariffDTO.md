# BillingTariffDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **str** |  | [optional] 
**billing_item_id** | **str** |  | [optional] 
**contract_id** | **str** |  | [optional] 
**calculation_parameters** | [**BaseTariffCalculationTypeParametersDTO**](BaseTariffCalculationTypeParametersDTO.md) |  | [optional] 
**condition_parameters** | [**List[BaseTariffConditionTypeParametersDTO]**](BaseTariffConditionTypeParametersDTO.md) |  | [optional] 
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
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
from configuration_client.models.billing_tariff_dto import BillingTariffDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingTariffDTO from a JSON string
billing_tariff_dto_instance = BillingTariffDTO.from_json(json)
# print the JSON string representation of the object
print(BillingTariffDTO.to_json())

# convert the object into a dict
billing_tariff_dto_dict = billing_tariff_dto_instance.to_dict()
# create an instance of BillingTariffDTO from a dict
billing_tariff_dto_from_dict = BillingTariffDTO.from_dict(billing_tariff_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


