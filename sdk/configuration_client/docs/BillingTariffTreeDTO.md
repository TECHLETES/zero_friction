# BillingTariffTreeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] [readonly] 
**billing_item_id** | **str** |  | [optional] 
**product_id** | **str** |  | [optional] 
**activity_period** | [**DateRange**](DateRange.md) |  | [optional] 
**currently_active** | **bool** |  | [optional] 
**nodes** | [**List[BillingTariffNodeDTO]**](BillingTariffNodeDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.billing_tariff_tree_dto import BillingTariffTreeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingTariffTreeDTO from a JSON string
billing_tariff_tree_dto_instance = BillingTariffTreeDTO.from_json(json)
# print the JSON string representation of the object
print(BillingTariffTreeDTO.to_json())

# convert the object into a dict
billing_tariff_tree_dto_dict = billing_tariff_tree_dto_instance.to_dict()
# create an instance of BillingTariffTreeDTO from a dict
billing_tariff_tree_dto_from_dict = BillingTariffTreeDTO.from_dict(billing_tariff_tree_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


