# ExternalAccountingMetadataDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source** | **str** |  |
**source_entity_id** | **str** |  |
**source_accounting_company_id** | **str** |  | [optional]
**source_references** | [**List[ExternalAccountingReferenceDTO]**](ExternalAccountingReferenceDTO.md) |  | [optional]

## Example

```python
from configuration_client.models.external_accounting_metadata_dto import ExternalAccountingMetadataDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ExternalAccountingMetadataDTO from a JSON string
external_accounting_metadata_dto_instance = ExternalAccountingMetadataDTO.from_json(json)
# print the JSON string representation of the object
print(ExternalAccountingMetadataDTO.to_json())

# convert the object into a dict
external_accounting_metadata_dto_dict = external_accounting_metadata_dto_instance.to_dict()
# create an instance of ExternalAccountingMetadataDTO from a dict
external_accounting_metadata_dto_from_dict = ExternalAccountingMetadataDTO.from_dict(external_accounting_metadata_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
