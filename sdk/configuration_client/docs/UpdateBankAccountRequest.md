# UpdateBankAccountRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bic** | **str** |  | [optional] 
**account_holder** | **str** |  | [optional] 
**sepa_creditor_id** | **str** |  | [optional] 
**is_default** | **bool** |  | [optional] 

## Example

```python
from configuration_client.models.update_bank_account_request import UpdateBankAccountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateBankAccountRequest from a JSON string
update_bank_account_request_instance = UpdateBankAccountRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateBankAccountRequest.to_json())

# convert the object into a dict
update_bank_account_request_dict = update_bank_account_request_instance.to_dict()
# create an instance of UpdateBankAccountRequest from a dict
update_bank_account_request_from_dict = UpdateBankAccountRequest.from_dict(update_bank_account_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


