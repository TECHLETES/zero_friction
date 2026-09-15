# CreateGeneralLedgerCodeRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** |  | 
**description** | **str** |  | 
**metadata** | [**ExternalAccountingMetadataRequest**](ExternalAccountingMetadataRequest.md) |  | 

## Example

```python
from configuration_client.models.create_general_ledger_code_request import CreateGeneralLedgerCodeRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateGeneralLedgerCodeRequest from a JSON string
create_general_ledger_code_request_instance = CreateGeneralLedgerCodeRequest.from_json(json)
# print the JSON string representation of the object
print(CreateGeneralLedgerCodeRequest.to_json())

# convert the object into a dict
create_general_ledger_code_request_dict = create_general_ledger_code_request_instance.to_dict()
# create an instance of CreateGeneralLedgerCodeRequest from a dict
create_general_ledger_code_request_from_dict = CreateGeneralLedgerCodeRequest.from_dict(create_general_ledger_code_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


