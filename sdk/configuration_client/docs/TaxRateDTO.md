# TaxRateDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date_time** | **datetime** |  | [optional] 
**end_date_time** | **datetime** |  | [optional] 
**rate** | **float** |  | [optional] 

## Example

```python
from configuration_client.models.tax_rate_dto import TaxRateDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TaxRateDTO from a JSON string
tax_rate_dto_instance = TaxRateDTO.from_json(json)
# print the JSON string representation of the object
print(TaxRateDTO.to_json())

# convert the object into a dict
tax_rate_dto_dict = tax_rate_dto_instance.to_dict()
# create an instance of TaxRateDTO from a dict
tax_rate_dto_from_dict = TaxRateDTO.from_dict(tax_rate_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


