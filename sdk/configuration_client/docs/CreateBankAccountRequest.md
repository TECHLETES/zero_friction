# CreateBankAccountRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_holder** | **str** |  | 
**sepa_creditor_id** | **str** |  | 
**accounting_code_id_for_processed_transactions** | **str** |  | [optional] 
**accounting_code_id_for_ignored_transactions** | **str** |  | [optional] 
**is_default** | **bool** |  | 
**iban** | **str** |  | [optional] 
**bic** | **str** |  | 

## Example

```python
from configuration_client.models.create_bank_account_request import CreateBankAccountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateBankAccountRequest from a JSON string
create_bank_account_request_instance = CreateBankAccountRequest.from_json(json)
# print the JSON string representation of the object
print(CreateBankAccountRequest.to_json())

# convert the object into a dict
create_bank_account_request_dict = create_bank_account_request_instance.to_dict()
# create an instance of CreateBankAccountRequest from a dict
create_bank_account_request_from_dict = CreateBankAccountRequest.from_dict(create_bank_account_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


