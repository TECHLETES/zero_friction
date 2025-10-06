# CreateGeneralLedgerCodesRequest

Request model for creating new general ledger codes.  General codes should correspond to entries in an external accounting system  to enable proper data synchronization during billing operations.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**general_ledger_codes** | [**List[CreateGeneralLedgerCodeRequest]**](CreateGeneralLedgerCodeRequest.md) | List of general ledger codes to create. | [optional] 

## Example

```python
from configuration_client.models.create_general_ledger_codes_request import CreateGeneralLedgerCodesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateGeneralLedgerCodesRequest from a JSON string
create_general_ledger_codes_request_instance = CreateGeneralLedgerCodesRequest.from_json(json)
# print the JSON string representation of the object
print(CreateGeneralLedgerCodesRequest.to_json())

# convert the object into a dict
create_general_ledger_codes_request_dict = create_general_ledger_codes_request_instance.to_dict()
# create an instance of CreateGeneralLedgerCodesRequest from a dict
create_general_ledger_codes_request_from_dict = CreateGeneralLedgerCodesRequest.from_dict(create_general_ledger_codes_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


