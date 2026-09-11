# ContextualAccountingCodeLinkDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional]
**code** | **str** |  | [optional]
**description** | **str** |  | [optional]
**context** | **str** |  | [optional]
**source_references** | [**List[ExternalAccountingReferenceDTO]**](ExternalAccountingReferenceDTO.md) |  | [optional]

## Example

```python
from configuration_client.models.contextual_accounting_code_link_dto import ContextualAccountingCodeLinkDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ContextualAccountingCodeLinkDTO from a JSON string
contextual_accounting_code_link_dto_instance = ContextualAccountingCodeLinkDTO.from_json(json)
# print the JSON string representation of the object
print(ContextualAccountingCodeLinkDTO.to_json())

# convert the object into a dict
contextual_accounting_code_link_dto_dict = contextual_accounting_code_link_dto_instance.to_dict()
# create an instance of ContextualAccountingCodeLinkDTO from a dict
contextual_accounting_code_link_dto_from_dict = ContextualAccountingCodeLinkDTO.from_dict(contextual_accounting_code_link_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
