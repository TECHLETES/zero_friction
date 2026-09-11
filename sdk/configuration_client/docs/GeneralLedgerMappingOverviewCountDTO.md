# GeneralLedgerMappingOverviewCountDTO


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product** | **int** |  | [optional]
**billing_item** | **int** |  | [optional]
**tax_code** | **int** |  | [optional]
**collection_flow** | **int** |  | [optional]
**bank_account** | **int** |  | [optional]
**waiting_account** | **int** |  | [optional]
**payment_intent_waiting_account** | **int** |  | [optional]
**advance** | **int** |  | [optional]
**vat_rounding_difference** | **int** |  | [optional]
**prepayment_cost** | **int** |  | [optional]
**prepayment_top_up** | **int** |  | [optional]
**prepayment_correction** | **int** |  | [optional]
**prepayment_gift** | **int** |  | [optional]

## Example

```python
from configuration_client.models.general_ledger_mapping_overview_count_dto import GeneralLedgerMappingOverviewCountDTO

# TODO update the JSON string below
json = "{}"
# create an instance of GeneralLedgerMappingOverviewCountDTO from a JSON string
general_ledger_mapping_overview_count_dto_instance = GeneralLedgerMappingOverviewCountDTO.from_json(json)
# print the JSON string representation of the object
print(GeneralLedgerMappingOverviewCountDTO.to_json())

# convert the object into a dict
general_ledger_mapping_overview_count_dto_dict = general_ledger_mapping_overview_count_dto_instance.to_dict()
# create an instance of GeneralLedgerMappingOverviewCountDTO from a dict
general_ledger_mapping_overview_count_dto_from_dict = GeneralLedgerMappingOverviewCountDTO.from_dict(general_ledger_mapping_overview_count_dto_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
