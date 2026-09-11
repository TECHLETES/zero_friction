# PagedResponseModelDTOOfGeneralLedgerCodeDTO


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
from configuration_client.models.paged_response_model_dtoof_general_ledger_code_dto import PagedResponseModelDTOOfGeneralLedgerCodeDTO

# TODO update the JSON string below
json = "{}"
# create an instance of PagedResponseModelDTOOfGeneralLedgerCodeDTO from a JSON string
paged_response_model_dtoof_general_ledger_code_dto_instance = PagedResponseModelDTOOfGeneralLedgerCodeDTO.from_json(json)
# print the JSON string representation of the object
print(PagedResponseModelDTOOfGeneralLedgerCodeDTO.to_json())

# convert the object into a dict
paged_response_model_dtoof_general_ledger_code_dto_dict = paged_response_model_dtoof_general_ledger_code_dto_instance.to_dict()
# create an instance of PagedResponseModelDTOOfGeneralLedgerCodeDTO from a dict
paged_response_model_dtoof_general_ledger_code_dto_from_dict = PagedResponseModelDTOOfGeneralLedgerCodeDTO.from_dict(paged_response_model_dtoof_general_ledger_code_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
