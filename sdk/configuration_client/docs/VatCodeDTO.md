# VatCodeDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**external_accounting_metadata** | [**ExternalAccountingMetadataDTO**](ExternalAccountingMetadataDTO.md) |  | [optional] 
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
from configuration_client.models.vat_code_dto import VatCodeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of VatCodeDTO from a JSON string
vat_code_dto_instance = VatCodeDTO.from_json(json)
# print the JSON string representation of the object
print(VatCodeDTO.to_json())

# convert the object into a dict
vat_code_dto_dict = vat_code_dto_instance.to_dict()
# create an instance of VatCodeDTO from a dict
vat_code_dto_from_dict = VatCodeDTO.from_dict(vat_code_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


