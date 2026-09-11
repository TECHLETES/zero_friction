# BillingTariffInputDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identifier** | **str** |  |
**input_type** | [**BillingTariffInputType**](BillingTariffInputType.md) |  |
**input_reference** | **str** |  |
**value** | **float** |  |

## Example

```python
from configuration_client.models.billing_tariff_input_dto import BillingTariffInputDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BillingTariffInputDTO from a JSON string
billing_tariff_input_dto_instance = BillingTariffInputDTO.from_json(json)
# print the JSON string representation of the object
print(BillingTariffInputDTO.to_json())

# convert the object into a dict
billing_tariff_input_dto_dict = billing_tariff_input_dto_instance.to_dict()
# create an instance of BillingTariffInputDTO from a dict
billing_tariff_input_dto_from_dict = BillingTariffInputDTO.from_dict(billing_tariff_input_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
