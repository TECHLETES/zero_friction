# ContextualGeneralLedgerCodeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**context** | **str** |  | 
**context_type** | **str** |  | 
**general_ledger_code_id** | **str** |  | [optional] 

## Example

```python
from configuration_client.models.contextual_general_ledger_code_request import ContextualGeneralLedgerCodeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ContextualGeneralLedgerCodeRequest from a JSON string
contextual_general_ledger_code_request_instance = ContextualGeneralLedgerCodeRequest.from_json(json)
# print the JSON string representation of the object
print(ContextualGeneralLedgerCodeRequest.to_json())

# convert the object into a dict
contextual_general_ledger_code_request_dict = contextual_general_ledger_code_request_instance.to_dict()
# create an instance of ContextualGeneralLedgerCodeRequest from a dict
contextual_general_ledger_code_request_from_dict = ContextualGeneralLedgerCodeRequest.from_dict(contextual_general_ledger_code_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


