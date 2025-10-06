# GeneralLedgerCodeDTOPagedResponseModelDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[GeneralLedgerCodeDTO]**](GeneralLedgerCodeDTO.md) |  | [optional] 
**has_next_page** | **bool** |  | [optional] 
**next_page_token** | **str** |  | [optional] 
**total_records** | **int** |  | [optional] 
**sortable_fields** | **List[str]** |  | [optional] 
**aggregate_details** | [**List[AggregateDetailsDTO]**](AggregateDetailsDTO.md) |  | [optional] 

## Example

```python
from configuration_client.models.general_ledger_code_dto_paged_response_model_dto import GeneralLedgerCodeDTOPagedResponseModelDTO

# TODO update the JSON string below
json = "{}"
# create an instance of GeneralLedgerCodeDTOPagedResponseModelDTO from a JSON string
general_ledger_code_dto_paged_response_model_dto_instance = GeneralLedgerCodeDTOPagedResponseModelDTO.from_json(json)
# print the JSON string representation of the object
print(GeneralLedgerCodeDTOPagedResponseModelDTO.to_json())

# convert the object into a dict
general_ledger_code_dto_paged_response_model_dto_dict = general_ledger_code_dto_paged_response_model_dto_instance.to_dict()
# create an instance of GeneralLedgerCodeDTOPagedResponseModelDTO from a dict
general_ledger_code_dto_paged_response_model_dto_from_dict = GeneralLedgerCodeDTOPagedResponseModelDTO.from_dict(general_ledger_code_dto_paged_response_model_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


