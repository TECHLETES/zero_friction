# BulkLinkGeneralLedgerCodesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**only_validate** | **bool** |  | [optional] 
**var_query_params** | [**PagedGeneralLedgerMappingQueryParams**](PagedGeneralLedgerMappingQueryParams.md) |  | [optional] 
**general_ledger_code_id** | **str** |  | [optional] 
**contextual_general_ledger_code_ids** | [**List[ContextualGeneralLedgerCodeRequest]**](ContextualGeneralLedgerCodeRequest.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.bulk_link_general_ledger_codes_request import BulkLinkGeneralLedgerCodesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BulkLinkGeneralLedgerCodesRequest from a JSON string
bulk_link_general_ledger_codes_request_instance = BulkLinkGeneralLedgerCodesRequest.from_json(json)
# print the JSON string representation of the object
print(BulkLinkGeneralLedgerCodesRequest.to_json())

# convert the object into a dict
bulk_link_general_ledger_codes_request_dict = bulk_link_general_ledger_codes_request_instance.to_dict()
# create an instance of BulkLinkGeneralLedgerCodesRequest from a dict
bulk_link_general_ledger_codes_request_from_dict = BulkLinkGeneralLedgerCodesRequest.from_dict(bulk_link_general_ledger_codes_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


