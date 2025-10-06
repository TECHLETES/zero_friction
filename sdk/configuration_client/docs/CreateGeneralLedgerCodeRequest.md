# CreateGeneralLedgerCodeRequest

Request model for creating a new general ledger code.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **str** | The code of the general ledger. | [optional] 
**description** | **str** | Description of the general ledger itself.  Currently, we only support the description in one language so this field is not localized. | [optional] 
**metadata** | [**ExternalAccountingMetadataRequest**](ExternalAccountingMetadataRequest.md) | Metadata to track back the origin of the data.  This is required so that we can push the data back to the source accounting system. | [optional] 

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


