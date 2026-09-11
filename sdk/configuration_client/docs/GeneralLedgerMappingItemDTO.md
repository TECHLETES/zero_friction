# GeneralLedgerMappingItemDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**category** | [**GeneralLedgerCategory**](GeneralLedgerCategory.md) |  | [optional] 
**accounting_code** | [**AccountingCodeLinkDTO**](AccountingCodeLinkDTO.md) |  | [optional] 
**contextual_accounting_codes** | [**List[ContextualAccountingCodeLinkDTO]**](ContextualAccountingCodeLinkDTO.md) |  | [optional] 
**accounting_status** | [**AccountingMappingStatus**](AccountingMappingStatus.md) |  | [optional] 
**id** | **str** |  | [optional] 
**entity_type** | [**EntitySubjectType**](EntitySubjectType.md) |  | [optional] 
**created_date_time** | **datetime** |  | [optional] 
**discriminator** | **str** |  | [optional] 
**etag** | **str** |  | [optional] 
**has_errors** | **bool** |  | [optional] 
**is_read_only** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.general_ledger_mapping_item_dto import GeneralLedgerMappingItemDTO

# TODO update the JSON string below
json = "{}"
# create an instance of GeneralLedgerMappingItemDTO from a JSON string
general_ledger_mapping_item_dto_instance = GeneralLedgerMappingItemDTO.from_json(json)
# print the JSON string representation of the object
print(GeneralLedgerMappingItemDTO.to_json())

# convert the object into a dict
general_ledger_mapping_item_dto_dict = general_ledger_mapping_item_dto_instance.to_dict()
# create an instance of GeneralLedgerMappingItemDTO from a dict
general_ledger_mapping_item_dto_from_dict = GeneralLedgerMappingItemDTO.from_dict(general_ledger_mapping_item_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


