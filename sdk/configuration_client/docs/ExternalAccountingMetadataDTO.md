# ExternalAccountingMetadataDTO

Represents metadata about an external accounting system entity.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source** | **str** | The source of the external accounting system. | 
**source_entity_id** | **str** | The unique identifier of the entity in the external accounting system. | 

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


