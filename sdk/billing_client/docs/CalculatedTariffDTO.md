# CalculatedTariffDTO

Represents a calculated tariff with its validity period.  Contains the tariff value and the period during which it applies.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tariff** | **float** | The calculated tariff value. | [optional] 
**start_date** | **datetime** | The start date and time from which this tariff applies. | [optional] 
**end_date** | **datetime** | The end date and time until which this tariff applies. | [optional] 

## Example

```python
from billing_client.models.calculated_tariff_dto import CalculatedTariffDTO

# TODO update the JSON string below
json = "{}"
# create an instance of CalculatedTariffDTO from a JSON string
calculated_tariff_dto_instance = CalculatedTariffDTO.from_json(json)
# print the JSON string representation of the object
print(CalculatedTariffDTO.to_json())

# convert the object into a dict
calculated_tariff_dto_dict = calculated_tariff_dto_instance.to_dict()
# create an instance of CalculatedTariffDTO from a dict
calculated_tariff_dto_from_dict = CalculatedTariffDTO.from_dict(calculated_tariff_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


