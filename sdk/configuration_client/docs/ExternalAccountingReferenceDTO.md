# ExternalAccountingReferenceDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_entity_id** | **str** |  |
**source_accounting_company_id** | **str** |  |

## Example

```python
from configuration_client.models.external_accounting_reference_dto import ExternalAccountingReferenceDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ExternalAccountingReferenceDTO from a JSON string
external_accounting_reference_dto_instance = ExternalAccountingReferenceDTO.from_json(json)
# print the JSON string representation of the object
print(ExternalAccountingReferenceDTO.to_json())

# convert the object into a dict
external_accounting_reference_dto_dict = external_accounting_reference_dto_instance.to_dict()
# create an instance of ExternalAccountingReferenceDTO from a dict
external_accounting_reference_dto_from_dict = ExternalAccountingReferenceDTO.from_dict(external_accounting_reference_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
