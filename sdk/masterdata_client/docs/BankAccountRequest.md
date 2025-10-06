# BankAccountRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**iban** | **str** |  | [optional] 
**sign_date** | **datetime** |  | [optional] 

## Example

```python
from masterdata_client.models.bank_account_request import BankAccountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of BankAccountRequest from a JSON string
bank_account_request_instance = BankAccountRequest.from_json(json)
# print the JSON string representation of the object
print(BankAccountRequest.to_json())

# convert the object into a dict
bank_account_request_dict = bank_account_request_instance.to_dict()
# create an instance of BankAccountRequest from a dict
bank_account_request_from_dict = BankAccountRequest.from_dict(bank_account_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


