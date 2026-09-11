# TaxCodeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional]
**rates** | [**List[TaxRateDTO]**](TaxRateDTO.md) |  | [optional]
**deleted** | **bool** |  | [optional]
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
from configuration_client.models.tax_code_dto import TaxCodeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of TaxCodeDTO from a JSON string
tax_code_dto_instance = TaxCodeDTO.from_json(json)
# print the JSON string representation of the object
print(TaxCodeDTO.to_json())

# convert the object into a dict
tax_code_dto_dict = tax_code_dto_instance.to_dict()
# create an instance of TaxCodeDTO from a dict
tax_code_dto_from_dict = TaxCodeDTO.from_dict(tax_code_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
