# LinkGeneralLedgerCodeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**general_ledger_code_id** | **str** |  | [optional] 
**contextual_general_ledger_code_ids** | [**List[ContextualGeneralLedgerCodeRequest]**](ContextualGeneralLedgerCodeRequest.md) |  | [optional] 
**quick_filter** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.link_general_ledger_code_request import LinkGeneralLedgerCodeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of LinkGeneralLedgerCodeRequest from a JSON string
link_general_ledger_code_request_instance = LinkGeneralLedgerCodeRequest.from_json(json)
# print the JSON string representation of the object
print(LinkGeneralLedgerCodeRequest.to_json())

# convert the object into a dict
link_general_ledger_code_request_dict = link_general_ledger_code_request_instance.to_dict()
# create an instance of LinkGeneralLedgerCodeRequest from a dict
link_general_ledger_code_request_from_dict = LinkGeneralLedgerCodeRequest.from_dict(link_general_ledger_code_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


