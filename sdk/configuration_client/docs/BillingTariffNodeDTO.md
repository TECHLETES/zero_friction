# BillingTariffNodeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billing_tariff_id** | **str** |  | [optional] 
**calculation_parameters** | [**BaseTariffCalculationTypeParametersDTO**](BaseTariffCalculationTypeParametersDTO.md) |  | [optional] 
**condition** | **object** |  | [optional] 

## Example

```python
from configuration_client.models.billing_tariff_node_dto import BillingTariffNodeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingTariffNodeDTO from a JSON string
billing_tariff_node_dto_instance = BillingTariffNodeDTO.from_json(json)
# print the JSON string representation of the object
print(BillingTariffNodeDTO.to_json())

# convert the object into a dict
billing_tariff_node_dto_dict = billing_tariff_node_dto_instance.to_dict()
# create an instance of BillingTariffNodeDTO from a dict
billing_tariff_node_dto_from_dict = BillingTariffNodeDTO.from_dict(billing_tariff_node_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


