# UpdatePrepaymentAccountsExternalReferencesRequest

Necessary information to update external references.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_references_for_prepayment_accounts** | **Dict[str, Optional[str]]** | Collection of new external references, where a key is the ID of ZFH.DataTransfer.MasterData.DTO.v1.Responses.PrepaymentAccounts.PrepaymentAccountDTO and a value is the new value of ZFH.DataTransfer.MasterData.DTO.v1.Responses.PrepaymentAccounts.PrepaymentAccountDTO.ExternalReference. | [optional] 

## Example

```python
from masterdata_client.models.update_prepayment_accounts_external_references_request import UpdatePrepaymentAccountsExternalReferencesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePrepaymentAccountsExternalReferencesRequest from a JSON string
update_prepayment_accounts_external_references_request_instance = UpdatePrepaymentAccountsExternalReferencesRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePrepaymentAccountsExternalReferencesRequest.to_json())

# convert the object into a dict
update_prepayment_accounts_external_references_request_dict = update_prepayment_accounts_external_references_request_instance.to_dict()
# create an instance of UpdatePrepaymentAccountsExternalReferencesRequest from a dict
update_prepayment_accounts_external_references_request_from_dict = UpdatePrepaymentAccountsExternalReferencesRequest.from_dict(update_prepayment_accounts_external_references_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


