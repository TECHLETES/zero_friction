# AccountingCodeLinkDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**code** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**source_references** | [**List[ExternalAccountingReferenceDTO]**](ExternalAccountingReferenceDTO.md) |  | [optional] 

## Example

```python
from masterdata_client.models.accounting_code_link_dto import AccountingCodeLinkDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AccountingCodeLinkDTO from a JSON string
accounting_code_link_dto_instance = AccountingCodeLinkDTO.from_json(json)
# print the JSON string representation of the object
print(AccountingCodeLinkDTO.to_json())

# convert the object into a dict
accounting_code_link_dto_dict = accounting_code_link_dto_instance.to_dict()
# create an instance of AccountingCodeLinkDTO from a dict
accounting_code_link_dto_from_dict = AccountingCodeLinkDTO.from_dict(accounting_code_link_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


